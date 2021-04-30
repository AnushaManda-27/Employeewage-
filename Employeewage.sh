#! /bin/bash -x
IS_PRESENT_FULL=1
IS_PRESENT_HALF=2
EMP_RATE_PER_HR=20
MAX_wORKING_DAYS=20

for(( counter=1; counter<=$MAX_WORKING_DAYS; counter++ ))
do
        empCheck=$(( RANDOM % 3 ))

        case  $empcheck in
        $IS_PRESENT_FULL)empHrs=8;;
       $IS_PRESENT_HALF)empHrs=4;;
                      *)empHrs=0;;
        esac
        salary=$(( $EMP_RATE_PER_HR * $empHrs ))
done
