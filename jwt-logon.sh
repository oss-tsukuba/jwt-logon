#!/bin/bash

CURL=/bin/curl
PORT=80

if [ -z $JWT_USER ]; then
  USER_ID=`id -u`
  PATH=/tmp/jwt_user_u$USER_ID
else
  PATH=$JWT_USER
fi

while getopts s:l: OPT
do
  case $OPT in
    "s" ) HOST="$OPTARG" ;;
    "l" ) ACCOUNT="$OPTARG" ;;
    "p" ) PORT="$OPTARG" ;;
      * ) echo "Usage: $CMDNAME [-s HOST] [-l USER]" 1>&2
          exit 1 ;;
  esac
done

if [ -z "$HOST" -o -z "$ACCOUNT" ]; then
 echo "Usage: $CMDNAME [-s HOST] [-l USER]" 1>&2
 exit 1
fi

read -sp "Passphrase: " PASS

echo

URL=http://$HOST:$PORT/jwt

COMMAND="$CURL -X POST -d user=$ACCOUNT -d pass=$PASS $URL"

JWT=`$COMMAND 2>/dev/null`

if [ -z "$JWT" ]; then
#error
  echo "Failed"
else
  echo "Success"
  echo $JWT > $PATH
fi
