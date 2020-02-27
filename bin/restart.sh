#!/bin/bash

ps -ef | grep testdeploy | grep -v grep | grep -v restart | awk '{print $2}' | xargs kill -9

nohup /opt/testdeploy/testdeploy >/dev/null 2>&1 &
