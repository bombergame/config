#!/bin/sh

tar -czf args.tar.gz .env *.pem
gpg -c -o args.tar.gz.gpg args.tar.gz
rm args.tar.gz
