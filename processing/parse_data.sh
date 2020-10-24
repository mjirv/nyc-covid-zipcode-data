#!/bin/bash

awk 'BEGIN{FS=OFS=","}{print "date" OFS $0}' <(head -1 ../coronavirus-data/data-by-modzcta.csv) > output.csv
cd ../coronavirus-data
git log $1 --pretty=format:"%h" | while read line ; do
	git checkout $line
	date=$(git log -1 --pretty=format:"%cd" --date=short)
	awk -v date="$date" 'BEGIN{FS=OFS=","}{print date OFS $0}' <(tail -n +2 data-by-modzcta.csv) > ../processing/output_"$date".csv
done ;

git checkout -- . ;
git checkout master ;
cd ../processing ;

cat output_* >> output.csv
