#!/bin/bash
I=0
while [ $I -lt 11 ]
do 
echo $I
sleep 2
I=$(( $I + 1 ))
done
