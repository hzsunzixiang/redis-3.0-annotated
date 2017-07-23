#!/bin/bash



for((i=10001; i<=16383; i++ ))
do
	echo "cluster addslots $i" |redis-cli  -h 127.0.0.1 -p 7002
done

for((i=0; i<=5000; i++ ))
do
	echo "cluster addslots $i" |redis-cli  -h 127.0.0.1 -p 7000
done

for((i=5001; i<=10000; i++ ))
do
	echo "cluster addslots $i" |redis-cli  -h 127.0.0.1 -p 7001
done

