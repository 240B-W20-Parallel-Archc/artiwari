#!/bin/bash

rm *.csv
echo "ArraySize(inKB),Thread_Count,Random,Sequential,Read_Modify_Write,CPU_TIME" >> output.csv

make
./cacheperf -t:1 -s -size:512
./cacheperf -t:1 -s -size:512 -write
./cacheperf -t:4 -r -size:512
