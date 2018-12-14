#!/bin/bash
# touch_everything.sh
# by Shan Sabri, github.com/ShanSabri
# 
# Description: Iterate though all files in $SCRATCH and touch to update timestamp

source ~/.bash_profile

printf "Start: "; date

cd ${SCRATCH}
while read FILE; do
	ls -lh "${FILE}"
	touch "${FILE}"
done < <( find -L . -type f -o -type l )

printf "Finish: "; date
