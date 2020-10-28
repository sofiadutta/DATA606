#!/bin/bash
if [ $# != 1 ]; then
	echo "What do you want to do? join? split?"
else
	if [ $1 == "j" ]; then
		echo "Joining"
		cat dev_v2.1.json.gz.part* > dev_v2.1.json.gz
		cat twcs.csv.part-a* > twcs.csv
	elif [ $1 == "s" ]; then
		echo "Splitting dev_v2.1.json.gz"
		split -b 99m dev_v2.1.json.gz dev_v2.1.json.gz.part-
		split -l 500000 twcs.csv twcs.csv.part-
	else
		echo "Unknown input parameters"
	fi
fi
