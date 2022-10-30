#!/usr/bin/env bash

# shellcheck disable=SC2034
CURL_CMD="curl --url \"${CURL_URL}\"
  --request $CURL_REQUEST
  --data '$CURL_QUERY'
  --verbose
  --write-out 'HTTPSTATUS:%{http_code}'
  --silent
  --header \"Content-Type: application/json\"
"

echo "  CURL_CMD: ${CURL_CMD}"

source ./curl/curl_http_response.sh
