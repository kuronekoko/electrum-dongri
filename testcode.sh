#!/bin/bash

if [ `grep -E -r "(import|from) electrum" ../electrum-dongri | grep -v -c "electrum_dongri"` -ge 1 ]; then
	echo "NG!!"
	grep -E -r "(import|from) electrum" ../electrum-dongri | grep -v "electrum_dongri"
	echo "NG!!"
else
	echo "OK!! electrum_ not found."
fi

pytest lib/tests/
