#!/usr/bin/env bash

if [ $VERBOSE = true ]
  then
    echo "CURL_CMD: ${CURL_CMD}"
fi

HTTP_RESPONSE=$(eval $CURL_CMD)

# extract the body
# shellcheck disable=SC2034
HTTP_BODY=$(echo $HTTP_RESPONSE | sed -e 's/HTTPSTATUS\:.*//g')

# extract the status
# shellcheck disable=SC2034
HTTP_STATUS=$(echo $HTTP_RESPONSE | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')
