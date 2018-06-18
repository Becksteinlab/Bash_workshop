#!/bin/bash
# Extracts temperature and fan data from a log file of your choosing

LOG="compy_stats_1.log"

grep "CPU temp" $LOG | awk '{ print $3 }' | cut -c1-4 > CPU_temps_Celsius.txt 
grep "Battery temp" $LOG | awk '{ print $3 }' | cut -c1-4 > Battery_temps_Celsius.txt
grep "Fan 0" $LOG | awk '{ print $4 }' > Fan_RPM.txt


