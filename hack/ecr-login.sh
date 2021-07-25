#!/usr/bin/env zsh

aws ecr get-login-password --region us-west-2 | docker login --username AWS \
--password-stdin 340111760086.dkr.ecr.us-west-2.amazonaws.com
