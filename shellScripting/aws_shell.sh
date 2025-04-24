#!/bin/bash

if ! command -v aws ; then
	echo "Downloading AWS CLI"
	sudo apt update
	sudo apt install unzip curl -y
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
else
	echo "AWS CLI is already downloaded"
fi
