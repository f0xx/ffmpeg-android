#!/bin/sh
for SRC in `ls *tablegen.c`; do A=`echo $SRC | sed s@\\\\.c@@`; echo "$SRC -> $A"; gcc $SRC -DCONFIG_SMALL=1 -Drestrict=const -I.. -lm tableprint.c -o $A; done
