#! /bin/bash -x
IS_PRESENT=1
EMP_RATE_PER_HR=20
empCheck=$(( RANDOM % 2 ))
if [ $empCheck -eq $IS_PRESENT ]
then
     empHrs=8
else
     empHrs=0
fi
salary=$(( EMP_RATE_PER_HR * empHrs ))

