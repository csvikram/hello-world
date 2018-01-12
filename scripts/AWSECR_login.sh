#!/usr/bin/env bash

echo -e "\e[34mLogging in to ECR\e[0m"
login_string=`/usr/local/bin/aws ecr get-login --no-include-email --region us-east-1 | sed 's| https://| |g'`;
eval $login_string;