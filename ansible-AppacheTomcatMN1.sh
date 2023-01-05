#!/bin/bash
 
#switch to creating a user 
su -
#Add the user ansible admin
useradd ansibleadmin
#set password: the command below will avoid re-entering the pwd
echo "ansibleansible" | passwd --stdin ansibleadmin
#modify the sudoers file at /etc/sudoers and add entry 
echo "ansibleadmin  ALL=(ALL) NOPASSWD: ALL"  | sudo tee a- /etc/sudoers
echo "ec2-user ALL=(ALL)  NOPASSWD: ALL" | sudo tee  -a /etc/sudoers
#this command is to add entry to these files: 'passwordAuthentication yes' | sudo tee -a /etc/ssh/sshd_config
#this command below will find and replace words with spaces 'PasswordAuthentication no' to 'PasswordAuthentication yes'
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
service sshd restart