#!/bin/sh -l
apt-get update; apt-get --assume-yes install curl
sh -c "echo Hello world my name is $INPUT_MY_NAME"
CT="Content-Type:application/json"

TEST="curl http://398f4f144568.ngrok.io/push&type=push -H $CT"
echo $TEST

RESPONSE=`$TEST`
echo $RESPONSE
