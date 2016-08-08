#!/bin/bash

ls $WORK/bayes_speedtest/input | while read line; do
        if [ ${line: -4} == ".bed" ]
        then
                writeline=${line%.*}
                bayesr="$HOME/applications/bayesR-master/bin/bayesR -bfile $WORK/bayes_speedtest/input/"$writeline" -out $WORK/bayes_speedtest/output/"$writeline"_out"
                echo "echo; date; "$bayesr"; echo;  date; echo" >> $WORK/bayes_speedtest/paramlist
        fi
done;