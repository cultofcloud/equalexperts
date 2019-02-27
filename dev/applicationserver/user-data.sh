#!/bin/bash

# Using AWS Linux

# Install Docker
#------------------
yum install docker -y
service docker start
chkconfig docker on