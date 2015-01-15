#!/bin/bash

PATH_TO_GADGET_DIR=blah/Gadget-2.0.7
cd $PATH_TO_GADGET_DIR

EXEC=/Gadget2/Gadget2_lcdm_gas

PARAM=/Gadget2/parameterfiles/lcdm_gas.param

LOG=/Examples/lcdm_gas/lcdm_gas.log

echo "My job starts here" > $PATH_TO_GADGET_DIR$LOG
date >> $PATH_TO_GADGET_DIR$LOG
echo "My present working directory is:" >> $PATH_TO_GADGET_DIR$LOG
pwd >> $PATH_TO_GADGET_DIR$LOG
echo " " >> $PATH_TO_GADGET_DIR$LOG
mpirun -np 4 $PATH_TO_GADGET_DIR$EXEC $PATH_TO_GADGET_DIR$PARAM >> $PATH_TO_GADGET_DIR$LOG
echo " " >> $PATH_TO_GADGET_DIR$LOG
echo "My job ends here" >> $PATH_TO_GADGET_DIR$LOG
date >> $PATH_TO_GADGET_DIR$LOG
