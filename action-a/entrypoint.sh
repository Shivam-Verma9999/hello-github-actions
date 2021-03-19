#!/bin/sh -l
apt-get update; apt-get --assume-yes install curl y
sh -c "echo Hello world my name is $INPUT_MY_NAME"
CT="Content-Type:application/json"

TEST="curl http://2dcc9cd0934c.ngrok.io -H $CT"
echo $TEST

RESPONSE=`$TEST`
echo $RESPONSE
