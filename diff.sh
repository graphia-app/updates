#!/bin/bash

filter_content() {
    jq '.updates | fromjson' | jq '.[].images[].content = "<filtered>"'
}

HEAD=$(git show HEAD:index.json | filter_content)
LOCAL_CHANGES=$(cat index.json | filter_content)

diff -u --color=auto <(echo "$HEAD") <(echo "$LOCAL_CHANGES")

