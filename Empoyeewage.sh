#! /bin/bash -x
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=80;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
 totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage

function getWorkHrs(){
local empCheck=$1;
case $empCheck in $IS_FULL_TIME)
empHrs=8 ;;
$IS_PART_TIME)empHrs=4 ;;
*)empHrs=0;;

esac
echo $empHrs

}

function getEmpWage() {
local empHr=$1
echo $(($empHr*$EMP_RATE_PER_HR))

}

while [[  $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
 $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

do


 ((totalWorkingDays++))
 empCheck=$((RANDAM%3));
 empHrs="$( getWorkHrs $empCheck )"
 totalEmpHrs=$(($totalEmpHr+$empHrs))
dailyWage["Day $totalWorkingDays"]="$( getEmpWage $empHrs )"

done
 totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo  ${dailyWage[@]}
echo ${!dailyWage[@]}
