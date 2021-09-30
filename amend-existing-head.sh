#! /bin/bash

if [[ $# -eq 0 ]]
then
    echo "Supply new message as first argument"
    exit 1
fi

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname ${SCRIPT})
CURRENT_DIR=$(pwd)

if [[ "${SCRIPT_DIR}" != "${CURRENT_DIR}" ]]
then
    echo "Run script from repository dir"
    exit 1
fi

NEW_COMMIT_MESSAGE=$1

git add index.json && \
    git commit --amend -m "${NEW_COMMIT_MESSAGE}" && \
    ./generate-changelog.md.sh > changelog.md && \
    git add changelog.md && \
    git commit --amend --no-edit
