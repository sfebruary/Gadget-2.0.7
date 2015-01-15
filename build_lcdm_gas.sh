#!/bin/bash

PATH_TO_GADGET_DIR=blah/Gadget-2.0.7

EXEC_DIR=/Gadget2

cd $PATH_TO_GADGET_DIR$EXEC_DIR

make clean
make
mv Gadget2 Gadget2_lcdm_gas
