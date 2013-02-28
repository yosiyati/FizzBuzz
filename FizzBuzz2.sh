#!/bin/sh

# 引数が2つ以上あるか
if [ $# -lt 2 ] ; then
	echo "引数が足りません"
	exit 1
fi

arg1=$1
arg2=$2

# 引数が非負正数であるか
arg1_Check=`echo "$arg1" | sed 's/[^0-9]//g'`
arg2_Check=`echo "$arg2" | sed 's/[^0-9]//g'`

if [ "$arg1" != "$arg1_Check" -o "$arg2" != "$arg2_Check" ] ; then
	echo "非負整数を入力してください"
	exit 1
fi

# $arg1 < $arg2にする
if [ $arg1 -gt $arg2 ] ; then
	w=$arg1
	arg1=$arg2
	arg2=$w
fi	

# FizzBuzz
for cnt in $(seq $arg1 $arg2); do
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
