#!/bin/bash
echo "welcome to new user creation.......!"
read -p "please enter the user name:" USERNAME
echo $USERNAME
EXUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" f1)
if [ "${USERNAME}" = "$EXUSER" ]
then
	echo "user $USERNAME. Please selcet a new username"
else
	echo "lets create the user"
fi
