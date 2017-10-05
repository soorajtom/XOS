#!/bin/bash
$apldir/../apl $apldir/step11.apl
$spldir/../spl --os $spldir/step_10_osstart.spl
$spldir/../spl --int=timer $spldir/timer_s6.spl
$spldir/../spl --exhandler $spldir/exhandler.spl
$spldir/../spl --int=1 $spldir/step_8_int1.spl
$spldir/../spl --int=2 $spldir/step_8_int2.spl
$spldir/../spl --int=3 $spldir/step_8_int3.spl
$spldir/../spl --int=4 $spldir/step_8_int4.spl
$spldir/../spl --int=5 $spldir/step_10_int5.spl
$spldir/../spl --int=6 $spldir/step_10_int6.spl
$spldir/../spl --int=7 $spldir/step_10_int7.spl
$HOME/myxos/xfs-interface/xfs-interface < $HOME/myxos/xfs-interface/basiccomm.txt
$HOME/myxos/xsm/xsm --debug 
#echo -e "copy 19 28 new.txt\n exit\n" | $HOME/myxos/xfs-interface/xfs-interface

