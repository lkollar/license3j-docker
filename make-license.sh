#!/bin/sh

: "${KEY?Please set environment variable}"
: "${PASSWORD?Please set environment variable}"

cat - > /tmp/license_input.txt
java -cp "/license3j/*" License3j encode --license-file=/tmp/license_input.txt --keyring-file=/license3j/sec_keyring.gpg --key=$KEY --password=$PASSWORD --output=/tmp/license_output.txt
[[ $? == 0 ]] && cat /tmp/license_output.txt

