#!/bin/bash
#PBS -N v_fluent
#PBS -l select=1:ncpus=10:mem=120gb
#PBS -l walltime=20:00:00
#PBS -j oe
#PBS -M z5173656@ad.unsw.edu.au
#PBS -m ae


module load ansys/2021r1
module load intelmpi/2019.6.166

fluent 3ddp -gu -t 10 -i mainwingFluentJournal2.jou > output.out
