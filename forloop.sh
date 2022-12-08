#!/bin/bash
for (( count=0; count < 3; count++))
do
echo "welcome to new user creation....!"
read -p "please enter the username:" USERNAME
echo $USERNAME
EXUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f1)
if [ "${USERNAME} = ${EXUSER}" ];
then
        echo "user $USERNAME exists. please select a new username"
else
        echo "lets create a new user"
        useradd -m $USERNAME
        echo "$USERNAME created sucessfully...!"
        SPEC='!@#$%^&*()_'
        SPECCHAR=$(echo $SPEC | fold -w1 | shuf | head -1)
        Pass="Indian@${RANDOM}${SPECCHAR}"
        echo "${USERNAME}:$PASS" | sudo chpasswd
        echo "the new user $USERNAME is created and temp passwd id $PASS"
fi
done

~
~
~

