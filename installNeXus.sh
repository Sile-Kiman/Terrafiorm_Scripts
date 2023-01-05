#!/bin/bash
yum update –y
#install Java
#yum install java-1.8.0-openjdk.86_64 -y
um update –y
yum install java-1.8.0-devel
#/usr/sbin/alternatives --config javac 2
#update the package
yum update -yum
#Download Nexus
cd /opt/
wget https://download.sonatype.com/nexus/3/nexus-3.45.0-01-unix.tar.gz
#Unzip/Untar the component file
#tar xf latest-unix.tar.gz
tar xf nexus-3.45.0-01-unix.tar.gz
#Rename folder for easy use
mv nexus-3.45.0-01 nexus03
#Enable permission for EC2-User to work on nexus3 and Sonatype-work folder
chown -R ec2-user:ec2-user nexus03/ sonatype-work/
#create a file called nexus.rc and add run as ec2-user
cd /opt/nexus03/bin/
touch nexus.rc
echo 'run_as_user="ec2-user"' | sudo tee -a /opt/nexus03/bin/nexus.rc
#Add nexus as a service at boot time
ln -s /opt/nexus03/bin/nexus /etc/init.d/nexus
cd /etc/init.d
chkconfig --add nexus on
#Start Nexus
service nexus start
