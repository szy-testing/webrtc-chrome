#!/bin/bash

if [ $# -eq 1 ]
then  
	fname=$1
	csv=${fname%.*}.csv
	sed -i '1,2d' $fname
	sed -i '1i\TIME,IN(Kbs),OUT(Kbs)' $fname
	sed 's/[ ][ ]*/,/g' $fname |tee $csv
else
	echo "miss prarm,please check"
fi
