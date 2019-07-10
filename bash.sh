#!/bin/sh
Ques="a"
Ans="a"
i=15
while [  $i -lt 100 ];
do
	Ques="Q$i.txt"
	Ans="A$i.txt"
	cd Test
	touch $Ques
	./generate > $Ques
	mv $Ques ../Question/
	cd ..
	cd Question
	touch $Ans
	./ans < $Ques >$Ans
	cd ..
	sleep 1
	i=$((i+1))
done