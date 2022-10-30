#!/usr/bin/env bash

USAGE="\nUsage: $0\n
[-h|--help]\n
[-v|--verbose]\n
[-p|--parse]\n
[--parent <string>]\n
"

usage() { echo -e ${USAGE} 1>&2; exit 1; }

# read the options
OPTS=`getopt -o hvp --long help,verbose,parse,parent: -n 'curl_books.sh' -- "$@"`
if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; usage ; exit 1 ; fi

# echo "$OPTS"
eval set -- "$OPTS"

HELP=false
VERBOSE=false
PARSE=false

PARENT="0"

while true; do
  case "$1" in
    -h | --help )       usage ;;
    # shellcheck disable=SC2034
    -v | --verbose )    VERBOSE=true; shift ;;
    -p | --parse )      PARSE=true; shift ;;
    --parent )          PARENT="$2" ; shift; shift ;;
    -- )                shift; break ;;
    * )                 break ;;
  esac
done

# shellcheck disable=SC2034
CURL_QUERY="{ \"query\": \"{ books { title, author } } \" }"
CURL_REQUEST=POST
CURL_URL="http://localhost:4000/"

source ./curl/curl_request.sh
source ./curl/curl_response.sh

echo -e '\n-------------------------\n'

if [ ${PARSE} = true ]
  then
	echo "${HTTP_BODY}" |
	    jq '.entries |
	    map({type, name, id})'
else
     echo "${HTTP_BODY}" |
        jq '.'
fi

echo -e '\n-------------------------\n'
