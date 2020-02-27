#!/bin/bash

ps -ef | grep testdeploy | grep -v grep | awk '{print $2}' | xargs kill -9

nohup /opt/testdeploy/testdeploy >/dev/null 2>&1 &
