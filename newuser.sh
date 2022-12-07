#!/bin/bash
echo "welcome to new user creation...!"
read -p "please enter the username:" USERNAME
useradd - ${USERNAME}
echo "${Username} is created"
