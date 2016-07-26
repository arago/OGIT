#!/bin/bash
export IFS=$'\n'
lastfile=
cmd=
for i in `cat lines`; do
	num=`echo $i|cut -d' ' -f1`
	file=`echo $i|cut -d' ' -f2`

	if [ ! "x$lastfile" = "x$file" ] && [ ! -z "$lastfile" ]; then
		echo sed -i -e \""${cmd}"\" ${lastfile}
		sed -i -e "${cmd}" ${lastfile}
		cmd=
	fi
	cmd="${cmd}${num}d;"
	lastfile=$file 
done
echo sed -i -e \""${cmd}"\" ${lastfile}
sed -i -e "${cmd}" ${lastfile}
