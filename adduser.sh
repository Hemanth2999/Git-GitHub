#!/bin/bash
echo "welcome to new user creation....!"
read -p "please enter the username:" USERNAME
echo $USERNAME
EXUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" f1)
if [ "${USERNAME} = ${EXUSER}" ];
then
	echo "user $USERNAME exists. please select a new username"
else
	echo "lets create a new user"
	useradd -m $USERNAME
	echo "$USERNAME created sucessfully...!"
fi
