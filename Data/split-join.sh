#!/bin/bash
if [ $# != 1 ]; then
	echo "What do you want to do? join? split?"
else
	if [ $1 == "j" ]; then
		echo "Joining"
		cat dev_v2.1.json.gz.part* > dev_v2.1.json.gz
	elif [ $1 == "s" ]; then
		echo "Splitting dev_v2.1.json.gz"
		split -b 99m dev_v2.1.json.gz dev_v2.1.json.gz.part-
	else
		echo "Unknown input parameters"
	fi
fi
