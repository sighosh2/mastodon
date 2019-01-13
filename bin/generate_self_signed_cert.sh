#!/usr/bin/env sh

if [ -z "$1" ]
then
	echo "No arguments for private key location, using defaults"
	private_key_location="~/Hacker/certs/private/nginx-selfsigned.key"
else
	private_key_location="$1"
fi

if [ -z "$2" ]
then
	echo "No arguments for certificate location, using defaults"
	certificate_location="~/Hacker/certs/nginx-selfsigned.crt"
else
	certificate_location="$2"
fi

echo "Generating certificates..."
echo "Private Key Location: $private_key_location"
echo "certificate Location: $certificate_location"

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $private_key_location -out $certificate_location