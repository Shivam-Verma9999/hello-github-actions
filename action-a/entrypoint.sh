#!/bin/sh -l

sh -c "echo Hello world my name is $INPUT_MY_NAME"
CT="Content-Type:application/json"

TEST="curl http://127.0.0.1 -H $CT"
echo $TEST

RESPONSE=`$TEST`
echo $RESPONSE