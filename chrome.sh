#!/bin/bash
log_time=$(date +"%Y-%m-%d")
log_name="net_${log_time}.log"

nohup ./ifstat -b -t -n 10 >> net_${log_time}_chrome.log &
nohup bash check_CPU_MEM.sh $1 >> mem_cpu_${log_time}_chrome.csv &
