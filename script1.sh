#!/bin/bash
I=0
while [ $I -lt 12 ]
do 
echo $I
sleep 2
I=$(( $I + 1 ))
done
