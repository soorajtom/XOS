#!/bin/bash
$apldir/../apl $apldir/menu.apl
$spldir/../spl --os $spldir/step_8_osstart.spl
$spldir/../spl --int=1 $spldir/step_8_int1.spl
$spldir/../spl --int=2 $spldir/step_8_int2.spl
$spldir/../spl --int=3 $spldir/step_8_int3.spl
$spldir/../spl --int=4 $spldir/step_8_int4.spl
$HOME/myxos/xfs-interface/xfs-interface < $HOME/myxos/xfs-interface/basiccomm.txt
$HOME/myxos/xsm/xsm --timer=0 --debug
echo -e "copy 19 28 new.txt\n exit\n" | $HOME/myxos/xfs-interface/xfs-interface

