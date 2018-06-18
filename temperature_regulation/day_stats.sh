#!/bin/bash

for i in {1..86400} 
do 
istats --no-graphs >> compy_stats.log
sleep 1
done
