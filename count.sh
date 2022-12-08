#!/bin/bash
count=0
while [ $count -lt 3 ]
do
	echo "welcome to new user creation.....!"
read -p "enter the username:" USERNAME
echo $USERNAME
EXUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f1)
if [ "${USERNAME}" = "${EXUSER}" ]
then
	echo "user $USERNAME exists. please select a new username."
else
	echo "lets create a new user"
	useradd -m $USERNAME
	echo "$USERNAME is created sucessufully...!"
	SPEC='!@#$%^&*()_'
	SPECCHAR=$(echo $SPEC | fold -w1 | shuf | head -1)
        PASS="Indian@${RANDOM}${SPECCHAR}"
	echo "$USERNAME:$PASS" |sudo chpasswd
	echo "the user $USERNAME is created and the temp passwd is $PASS"
fi
count=$(( count+1 ))
done
