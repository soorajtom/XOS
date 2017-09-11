#!/bin/bash
$apldir/../apl /home/labs/myxos/apl/apl_progs/file_open.apl
$spldir/../spl --os $spldir/step_8_osstart.spl
$spldir/../spl --int=1 $spldir/step_8_int1.spl
$spldir/../spl --int=2 $spldir/step_8_int2.spl
$HOME/myxos/xfs-interface/xfs-interface < $HOME/myxos/xfs-interface/basiccomm.txt
$HOME/myxos/xsm/xsm
