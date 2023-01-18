#!/bin/sh
TITLE=$1
FILE_NAME=$2
CONTENT=`cat docs/${FILE_NAME}`
echo ${CONTENT}
echo "\n - [${TITLE}](docs/${FILE_NAME})" >> README.md

gh issue create --title "${TITLE}" --body "${CONTENT}" --label daily
