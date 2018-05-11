#!/bin/bash
pkill -9 ifstat
ps aux |grep check_CPU_MEM.sh |grep -v grep |awk '{print $2}'|xargs kill -9 

ps aux |grep ifstat
ps aux |grep check_CPU_MEM.sh |grep -v grep
