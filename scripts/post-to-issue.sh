#!/bin/sh
TITLE=$1
FILE_NAME=$2
CONTENT=`cat ${FILE_NAME}`
echo ${TITLE}
echo ${CONTENT}
gh issue create --title "${TITLE}" --body "${CONTENT}"
