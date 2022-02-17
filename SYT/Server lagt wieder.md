~~~bash
#!/bin/bash

echo Anzahl der Parameter: $#
echo Parameter 1: $1
echo Parameter 2: $2

if [ -z $1 ]
then
	echo "kein Parameter angegeben!"
	exit 1
else
	echo "Der Parameter \$1 ist: " $1
fi 

echo "Hier kommen wir nur her, wenn es einen Parameter 1 gibt"

# Parameter 2

if [ -z $2 ]
then 
	echo "kein Parameter angegeben!"
	exit 1
else 
	echo "Der Parameter \$2 ist: " $2
fi

echo "Parameter 1 + 2 exestieren"

if [ $1 -eq $2 ]
then 
	echo sind gleich
fi

if [ $1 -gt $2 ]
then
	echo $1 ist größer als $2

if [ -d $1 ]
then 
	
~~~