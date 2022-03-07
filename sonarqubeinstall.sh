#!/bin/bash

#Author: Group 10
#Date: Feb 22 2022

echo "We are installing Sonarqube on CentOS7"
echo
aleep1
sudo yum update -y
echo
sleep1
sudo yum install java-11-openjdk-devel -y
echo
sleep1
sudo yum install java-11-openjdk -y
echo
sleep 2
cd /opt 
sudo yum install wget -y
echo
sleep1
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
sleep1
sudo yum install unzip -y
echo
sleep1
sudo unzip /opt/sonarqube-9.3.0.51899.zip
echo
sleep1
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo
echo "Sonarqube installed and started successfully, thank you for your patience"

