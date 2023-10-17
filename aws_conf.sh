#!/usr/bin/env bash

set -x
set -e

{
        AWS_CONFIG_FILE=~/.awsm/config
        [ -d ~/.awsm ] || mkdir ~/.awsm
        touch $AWS_CONFIG_FILE && touch NULL
        chmod 600 $AWS_CONFIG_FILE

        echo "[profile eb-cli]"    > $AWS_CONFIG_FILE

        echo "aws_access_key=${AWS_ACCESS_KEY_ID}"  >> $AWS_CONFIG_FILE
        echo "aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}" >> $AWS_CONFIG_FILE
} &> /dev/null
