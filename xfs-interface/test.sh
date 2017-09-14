#!/bin/bash
$apldir/../apl $apldir/file_del.apl
$spldir/../spl --os $spldir/step_8_osstart.spl
$spldir/../spl --int=1 $spldir/step_8_int1.spl
$spldir/../spl --int=2 $spldir/step_8_int2.spl
$HOME/myxos/xfs-interface/xfs-interface < $HOME/myxos/xfs-interface/basiccomm.txt
$HOME/myxos/xsm/xsm
echo -e "copy 19 24 new.txt\n exit\n" | $HOME/myxos/xfs-interface/xfs-interface

