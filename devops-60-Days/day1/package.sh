#!/bin/bash


#<<< This script is use to Installing the package 
#<

read -p "Please enter the package name which you want's to install:" name

echo "============================================================================Updateing the system====================================================================="

apt update

apt install $name


read -p "Please Enter the Service name=========================:" service

systemctl restart $service 

systemctl status $service
