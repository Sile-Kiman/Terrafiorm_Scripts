#!/bin/bash
yum-config-manager --enable epel 
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install epel-release-latest-7.noarch.rpm
yum update -y
yum install python python-devel python-pip openssl ansible -y

#switch to creating a user 
sudo su -
#Add the user ansible admin
sudo useradd ansibleadmin
#set password: the command below will avoid re-entering the pwd
sudo echo "ansibleansible" | passwd --stdin ansibleadmin
#modify the sudoers file at /etc/sudoers and add entry 
sudo echo "ansibleadmin  ALL=(ALL) NOPASSWD: ALL"  | sudo tee a- /etc/sudoers
sudo echo "ec2-user ALL=(ALL)  NOPASSWD: ALL" | sudo tee  -a /etc/sudoers
#this command is to add entry to these files: 'passwordAuthentication yes' | sudo tee -a /etc/ssh/sshd_config
#this command below will find and replace words with spaces 'PasswordAuthentication no' to 'PasswordAuthentication yes'
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo service sshd restart