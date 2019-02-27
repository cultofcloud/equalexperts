#!/bin/bash

# Using AWS Linux

# Install Jenkins
#-----------------
yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
service jenkins start
chkconfig jenkins on

# Install Ansible
#------------------
amazon-linux-extras install epel -y
yum install ansible -y

# Install Git
#------------------
yum install git -y

# Install Maven
#------------------
yum install maven -y

# Install Docker
#------------------
yum install docker -y
service docker start
chkconfig docker on