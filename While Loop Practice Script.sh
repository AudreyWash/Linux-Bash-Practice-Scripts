#!/bin/bash
myvar=1

while [ $myvar -le 10 ]
do
  echo $myvar
  myvar=$(($myvar +2))
  sleep 0.1
done