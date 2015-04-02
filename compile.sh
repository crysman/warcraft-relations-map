VIEWER='/cygdrive/c/Program Files/IrfanView/i_view32.exe'
COMPILER='./dot.exe'
filein="$1"
#args="-DCLUSTERS_DEMONS"; fileout="wrm-demons.gif"
#args="-DCLUSTERS_SCOURGE"; fileout="wrm-scourge.gif"
#args="-DCLUSTERS_ALLIANCE"; fileout="wrm-alliance.gif"
#args="-DCLUSTERS_HORDE"; fileout="wrm-horde.gif"
#args="-DCLUSTERS_ELVES"; fileout="wrm-elves.gif"
#args='-DCLUSTERS_DEMONS -DCLUSTERS_SCOURGE -DCLUSTERS_ALLIANCE -DCLUSTERS_HORDE -DCLUSTERS_ELVES'; fileout="wrm-allblocks.gif"
args="-nothing"; fileout="wrm.gif"

cpp -P $args "$filein" > aa && $COMPILER -Tgif -o "$fileout" aa && echo "$fileout created sucesfully." && "$VIEWER" "$fileout"
