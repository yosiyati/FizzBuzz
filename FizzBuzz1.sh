#!/bin/sh


# FizzBuzz
for cnt in $(seq 100); do
	str=""

	if [ `expr $cnt % 3` -eq 0 ] ; then
		str="Fizz"
	fi

	if [ `expr $cnt % 5` -eq 0 ] ; then
		str="${str}Buzz"
	fi

	if [ -z $str ] ; then
		str="$cnt"
	fi

	echo $str
done
