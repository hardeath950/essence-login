#!/bin/bash

echo 'waiting for database start...'

sleep 6

echo 'starting login'

cd /usr/src/myapp/login/
sh LoginServer.sh
