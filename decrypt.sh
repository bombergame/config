#!/bin/sh

dir="$1"

echo ${DATA_PASSWORD} | gpg -d -o ${dir}/args.tar.gz \
        --passphrase-fd 0 ${dir}/args.tar.gz.gpg &&
    tar -xzf ${dir}/args.tar.gz &&
    rm ${dir}/args.tar.gz
