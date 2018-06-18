#!/bin/bash

LOG="RT_instability.log"

echo "Estimate of remaining time in the download. . ."

grep "K .........." $LOG | awk '{ print $9 }' > time_remaining.txt

echo "Written to .txt"

echo "Download speed (Kb/s). . ." 

grep "K .........." $LOG | awk '{ print $8 }' | sed 's/.$//' > Kb_per_second.txt

echo "Written to .txt"

echo "Total Kb downloaded. . ."

grep "K .........." Incredibles2.log | awk '{ print $1 }' | sed 's/.$//' > Kb_downloaded.txt 

echo "Written to .txt"


