#!/bin/bash
yum update –y
yum install java-1.8.0-devel
/usr/sbin/alternatives --config javac 2
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
install git -yum
chkconfig jenkins on
