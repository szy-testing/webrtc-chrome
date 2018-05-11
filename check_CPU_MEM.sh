#!/bin/bash

if [ $# -eq 1 ]
then
	pid=$1
	echo "TIME,CPU,MEM"
	while true
	do
		cpu=$(top -b  -n 1   -p $pid |tail -n 1 |awk '{cpu=NF-3} {print $cpu}')
		mem=$(cat /proc/$pid/status|grep  VmRSS |awk '{print $2/1024}')
		time=$(date +"%H:%M:%S")
		echo "$time,$cpu,$mem"
		sleep 10
	done
else
	echo "missing parameter pid,plese check"
fi
