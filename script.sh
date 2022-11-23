#!/bin/bash
func()
{
echo "this is a test function $i time...!"
}
func2()
{
i=$(( $i+10 ))
echo "this is a test function $i time...!"
}
func3()
{
i=$ (( $i-10 ))
echo "this is a test function $i time...!"
}
for i in {1..10}
do
if [ $(expr $i % 2) -eq 0 ]
then
echo $i "is a even number"
else
echo $i "is an odd number"
fi
func
func2
func3
done
