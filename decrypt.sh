#!/bin/sh

echo ${DATA_PASSWORD} | gpg -d -o args.tar.gz args.tar.gz.gpg
tar -xzf args.tar.gz
rm args.tar.gz
