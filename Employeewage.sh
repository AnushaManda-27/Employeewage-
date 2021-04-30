#! /bin/bash -x
IS_PRESENT_FULL=1
IS_PRESENT_HALF=2
EMP_RATE_PER_HR=20
empCheck=$(( RANDOM % 3 ))
if [ $empCheck -eq $IS_PRESENT_FULL ]
then
     empHrs=8
elif [ $empCheck -eq $IS_PRESENT_HALF ]
then
     empHrs=4
else
     empHrs=0
fi
salary=$(( EMP_RATE_PER_HR * empHrs ))
