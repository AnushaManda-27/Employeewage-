#! /bin/bash -x
IS_PRESENT_FULL=1
IS_PRESENT_HALF=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
NO_OF_WRKINHG_DAYS=5
MAX_WORKING_HRS=85
totalworkinghrs=0
totalworkingdays=0

while [ $totalworkingdays -lt $MAX_WORKING_DAYS ] && [ $totalworkinghrs -lt $MAX_WORK_HRS ]
do
        empCheck=$(( RANDOM % 3 ))
        (( totalworkingdays++))
        case  $empCheck in
        $IS_PRESENT_FULL)empHrs=8;;
       $IS_PRESENT_HALF)empHrs=4;;
                      *)empHrs=0;;
        esac
        totalworkinghrs=$(( totalworkinghrs + empHrs ))
        #salary=$(( $EMP_RATE_PER_HR * $empHrs ))
done
salary=$(( totalworkinghrs * EMP_RATE_PER_HR))

