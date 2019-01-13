#!/usr/bin/env sh
# convert key to pem

if [ -z "$1" ]
then
	echo "No arguments for input file, using defaults"
	in_file=mycert.key
else
	in_file="$1"
fi

if [ -z "$2" ]
then
	echo "No arguments for output file, using defaults"
	out_file=mycert.pem
else
	out_file="$2"
fi

echo "Converting $in_file to $out_file..."
openssl rsa -in $in_file -out $out_file -outform PEM