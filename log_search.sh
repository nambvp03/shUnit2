#start=$(($(date +%s%N)/1000000))
grep cs5850 ./http_log/* | wc -l
#end=$(($(date +%s%N)/1000000))
#echo Search in:$((end-start))
