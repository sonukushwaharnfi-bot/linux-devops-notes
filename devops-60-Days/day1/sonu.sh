#!/bin/bash


#>>>> install samba 
#>>>

read -p "Enter the packej name which you want to install: "$name

echo "Install the packej>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$name"

#apt update

apt install $name -y


