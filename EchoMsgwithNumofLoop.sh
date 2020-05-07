#!/bin/bash
message=$1
numLoop=$2
#counter=1
msg="*"
len=${#message[@]}
num="4"

a=`expr $len + $num`

for i in $(seq 1 $a); do
      printf "$msg"
done
echo

for i in $(seq 1 $numLoop); do
    echo "* $message *"
done

for i in $(seq 1 $a); do
      printf "$msg"
done
echo

# USAGE: 
# ...$ sh EchoMsgwithNumofLoop.sh TEST 5
