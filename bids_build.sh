#Bids directory building
#written by Cooper Hodges
#contact at cooperhodges@hsc.utah.edu

#!/bin/bash
cd ~/compute/
#if you don't find it already
if [ ! -d BIDS_example ]; then
        #if you don't find the bids directory, then make it
        mkdir BIDS_example
        cd BIDS_example
                #start with 1, end at 50
                n=1;
                max=50;
                #while n (counting variable) is less than or equal to 50
                while [ "$n" -le "$max" ]; do
                        if [ $n -lt 10 ]; then
                                mkdir -p sub-00$n/anat sub-00$n/func
                                touch sub-00$n/anat/sub-00$n.txt sub-00$n/func/sub-00$n.txt
                        else
                            	mkdir -p sub-0$n/anat sub-0$n/func
                                touch sub-0$n/anat/sub-0$n.txt sub-0$n/func/sub-0$n.txt
                        fi
                        #counting variable, add 1 to variable $n every iteration of the loop
                        n=$((n+1))

                done
cd ..
fi
