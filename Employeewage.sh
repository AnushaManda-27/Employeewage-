#! /bin/bash -x
IS_PRESENT_FULL=1
IS_PRESENT_HALF=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORK_HRS=20
totalworkinghrs=0
totalworkingdays=0
function getworkHours(){
        local empCheck=$1
        local empHrs=0
        case  $empCheck in
            $IS_PRESENT_FULL)empHrs=8;;
            $IS_PRESENT_HALF)empHrs=4;;
            *)empHrs=0;;
        esac
        echo $empHrs
}
while [ $totalworkingdays -lt $NO_OF_WORKING_DAYS ] && [ $totalworkinghrs -lt $MAX_WORK_HRS ]
do
        empCheck=$(( RANDOM % 3 ))
        (( totalworkingdays++))
        empHrs="$( getworkHours $empCheck)"
        totalworkinghrs=$(( totalworkinghrs + empHrs ))
        #salary=$(( $EMP_RATE_PER_HR * $empHrs ))
done
salary=$(( $totalworkinghrs * $EMP_RATE_PER_HR))

