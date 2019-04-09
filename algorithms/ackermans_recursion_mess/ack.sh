#!/bin/sh

ack () {
	local m=$1
	local n=$2
	if [ $m -eq 0 ]
	then
		return $(( $n+1 ))
	fi

	if [ $n -eq 0 ]
	then
		ack $(( $m-1 )) 1
		return $?
	fi

	ack $m $(( $n-1 ))
	ack $(( $m-1 )) $?
}
loops=0
p=$1
o=3
(( num = p<1?1:$p ))

ack $o $num
printf "ack %s %s = %s \n\n" $o $num $?
