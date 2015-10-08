#!/bin/sh

IFS="="
for i in ./unattend.confd/*.conf
    do
    while read var res 
	do

	    sed -e "s:@$var@:$res:g" AutoUnattend.xml > unattend.tmp
	    cp -f unattend.tmp AutoUnattend.xml
	    rm unattend.tmp

#	    sed -e "s:@$var@:$res:g" sysprep.inf > sysprep.tmp
#	    cp -f sysprep.tmp sysprep.inf
#	    rm sysprep.tmp

    done < $i
done    



