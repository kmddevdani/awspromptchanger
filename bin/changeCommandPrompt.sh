#!/bin/bash
#
# This script changes the bash prompt of the aws instance it is running on.
# Prerequirement: Machine must have access to its tag names! Root access (sudo) needed.
# Please see https://github.com/kmddevdani/awspromptchanger
# 
# @author Kathmandu Dev Team
# @created 20170127
#

# Step 1: get the instance id
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

if [ "$1" = "debug" ]; then
  echo "Instance Id: $INSTANCE_ID"
fi

# Step 2: get the region
REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`

if [ "$1" = "debug" ]; then
  echo "Region: $REGION"
fi

# Step 3: get the value of the name tag
NICKNAME=$(aws ec2 describe-tags --region "$REGION" --filters "Name=resource-id,Values=$INSTANCE_ID" "Name=key,Values=Name" --output=text | cut -f5)

if [ "$1" = "debug" ]; then
  echo "Nickname: $NICKNAME"
fi

# Step 4: replace the line in /etc/bashrc which defines the command prompt
sudo sed -i '/\[ "$PS1" = /c\  [ "$PS1" = "\\\\s-\\\\v\\\\\\$ " ] && PS1="[Welcome \\u@$NICKNAME \\W]\\\\$ "' /etc/bashrc
