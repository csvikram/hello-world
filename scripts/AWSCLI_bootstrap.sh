#!/usr/bin/env bash

echo -e "\e[34mDownloading PIP\e[0m"
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py";

echo -e "\e[34mInstalling PIP\e[0m"
python get-pip.py;

echo -e "\e[34mInstalling AWSCLI\e[0m"
pip install awscli --ignore-installed six;

echo -e "\e[34mAWS CLI version\e[0m"
/usr/local/bin/aws --version;

echo -e "\e[34mPassing AWS variables\e[0m"
/usr/local/bin/aws configure set default.aws_access_key_id AKIAJUGMFUY4FLZDWHLA;
/usr/local/bin/aws configure set default.aws_secret_access_key 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;
/usr/local/bin/aws configure set default.region us-east-1;