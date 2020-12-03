#! /bin/bash

# this script checks the txt files under current directory
# afterwards it compares the lines of the text files to
# a threshold level. It gives an output according to the
# comparison.


LIST="*.txt"
threshold="5"
for text in $LIST
do
	echo
	num="wc -l $text"
	n="$(eval $num)"
	readarray -d ' ' -t strarr<<<$n
	count=${strarr[0]}
	if [ "$count" -gt "$threshold" ]
		then
			echo "Yayy $text has more than $threshold lines"
			echo "Actually it has $count lines"
	fi
	if [ "$count" -lt "$threshold" ]
		then
			echo "Sorry, $text has less than $threshold lines"
			echo "It only has $count lines"
			echo
	fi
done
echo
echo "script has served. exiting"
