#!/bin/bash
#launch parallel commands in bash and wait till they are all finished to continue with the next batch of processes
#can be practical to mass upgrade IoT devices
#or to numbercrunch graphical data
#or whatever you want to speed up without overloading your system
#
#Enjoy!

numberoftimes=123
parallel=10

runs=$(( (numberoftimes+parallel-1)/parallel ))
#this way we calculate the number of runs and round upwards

echo runs=$runs
for run in $(seq $runs)
do
 echo run number: $run
 for i in $(seq ${parallel})
 do
 echo sleep: $i of run: $run
 sleep 10 &
 #replace the sleep with your actual process
 done
 wait
done
