#!/bin/bash

echo "RUNNING jenkins init"
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

echo "RUNNING Java-11 install"
amazon-linux-extras install java-openjdk11
echo "RUNNING Jenkins install"
yum install jenkins -y
echo "install git"
yum install git -y

echo "Insatll ansible"
yum install python-pip -y
pip install ansible

echo "running jenkins" 

service jenkins start
chkconfig jenkins on

echo "jenkins installed succefully" 