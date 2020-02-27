#!/bin/bash

ps -ef | grep testdeploy | grep -v grep | awk "{print $1}"