#! /bin/bash

declare -A CHANGELOGS
declare -A DATES

while read -r SHA
do
    INDEX_JSON=$(git show ${SHA}:index.json)

    while read -r VERSION && read -r CHANGELOG
    do
        UNQUOTED_VERSION="${VERSION%\"}"
        UNQUOTED_VERSION="${UNQUOTED_VERSION#\"}"
        UNQUOTED_CHANGELOG="${CHANGELOG%\"}"
        UNQUOTED_CHANGELOG="${UNQUOTED_CHANGELOG#\"}"
        CHANGELOGS[${UNQUOTED_VERSION}]=${UNQUOTED_CHANGELOG}

        if [[ ! -v "DATES[${UNQUOTED_VERSION}]" ]]
        then
            DATE=$(git show --no-patch --no-notes --pretty='%ad' --date=human ${SHA})
            DATES[${UNQUOTED_VERSION}]=${DATE}
        fi
    done < <(echo ${INDEX_JSON} | jq '.updates' | xxd -r -p | jq '.[] | .version,.changeLog')
done < <(git rev-list --reverse master)

VERSIONS=$(echo ${!CHANGELOGS[@]})
VERSIONS=$(echo $(printf "%s\n" ${VERSIONS} | sort -rV))
for VERSION in ${VERSIONS}
do
    echo -e "# ${VERSION} (${DATES[${VERSION}]})\n"
    echo -e "${CHANGELOGS[${VERSION}]}\n"
done
