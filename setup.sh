#!/bin/bash

# Setup an AWS AMI
#
# You may need to make this file executable by
# chmod +x setup.sh
#
# Afterwards run this fule
# ./setup.sh

sudo yum install -y git
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user


# Log out and log back into EC2 to let the ec2-user gain docker privileges