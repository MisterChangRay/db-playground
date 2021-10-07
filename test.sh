#! /bin/sh
COUNTER=1
A="my"
B=".sql"
user="mazamu"
password="Aa5505229"
dbName="playground"
f="user-info.sql"
while [ "$COUNTER" -lt 1000 ]; do
		node dataGenerater.js
		mysql -u $user -p$password -f $dbName -e "source $f"
		echo "finish $COUNTER"
		COUNTER=$(($COUNTER+1))
		
		done
