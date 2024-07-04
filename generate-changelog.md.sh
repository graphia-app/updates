#! /bin/bash

declare -A CHANGELOGS
declare -A DATES

while read -r SHA
do
    # No index.json file
    git cat-file -e ${SHA}:index.json &> /dev/null
    if [ ! $? -eq 0 ]
    then
        continue
    fi

    INDEX_JSON=$(git show ${SHA}:index.json)

    # No JSON at all in file
    if [ -z "${INDEX_JSON}" ]
    then
        continue
    fi

    # JSON in file doesn't contain updates key
    echo ${INDEX_JSON} | jq -e 'has("updates") and (.updates != null)' > /dev/null
    if [ $? -eq 1 ]
    then
        continue
    fi

    echo ${INDEX_JSON} | jq -e 'select(.updates | test("^[0-9a-fA-F]+$"))' > /dev/null

    if [ $? -eq 0 ]
    then
        # Hex encoded
        UPDATES=$(echo ${INDEX_JSON} | jq '.updates' | xxd -r -p)
    else
        # Unencoded
        UPDATES=$(echo ${INDEX_JSON} | jq -r '.updates')
    fi

    while read -r VERSION && read -r CHANGELOG
    do
        UNQUOTED_VERSION="${VERSION%\"}"
        UNQUOTED_VERSION="${UNQUOTED_VERSION#\"}"
        UNQUOTED_CHANGELOG="${CHANGELOG%\"}"
        UNQUOTED_CHANGELOG="${UNQUOTED_CHANGELOG#\"}"
        CHANGELOGS[${UNQUOTED_VERSION}]=${UNQUOTED_CHANGELOG}

        if [[ ! -v "DATES[${UNQUOTED_VERSION}]" ]]
        then
            DATE=$(git show --no-patch --no-notes --pretty='%ad' --date=format:'%b %d %Y' ${SHA})
            DATES[${UNQUOTED_VERSION}]=${DATE}
        fi
    done < <(echo ${UPDATES} | jq '.[] | .version,.changeLog')
done < <(git rev-list --reverse master)

VERSIONS=$(echo ${!CHANGELOGS[@]})
VERSIONS=$(echo $(printf "%s\n" ${VERSIONS} | sort -rV))

# Don't want rc releases unless there is no corresponding final release
RC_FILTER=$(echo ${VERSIONS} | tr ' ' '\n' | grep '^[0-9]\+\.[0-9]\+$' | \
    sed -e 's/\(.*\)/\1-rc[0-9]+/' |tr '\n' '|' | \
    sed -e 's/\(.*\)|$/^\1$/')

for VERSION in ${VERSIONS}
do
    if [[ "${VERSION}" =~ ${RC_FILTER} ]]
    then
        continue
    fi

    # HACK
    if [[ "${VERSION}" =~ ^dev-9999.*$ ]]
    then
        continue
    fi

    echo -e "# ${VERSION} (${DATES[${VERSION}]})\n"
    echo -e "${CHANGELOGS[${VERSION}]}\n"
done
