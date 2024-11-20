#!/bin/sh

IFS="="
for i in ./unattend.confd/*.conf
    do
    while read var res 
	do

	    sed -e "s:@$var@:$res:g" unattend.txt > unattend.tmp
	    cp -f unattend.tmp unattend.txt
	    rm unattend.tmp

	    sed -e "s:@$var@:$res:g" sysprep.inf > sysprep.tmp
	    cp -f sysprep.tmp sysprep.inf
	    rm sysprep.tmp

    done < $i
done    



