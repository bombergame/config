#!/bin/sh

src_dir="$1"
dst_dir="$2"

echo ${DATA_PASSWORD} | gpg -d -o ${dst_dir}/args.tar.gz \
        --passphrase-fd 0 ${src_dir}/args.tar.gz.gpg &&
    tar -xzf ${dst_dir}/args.tar.gz &&
    rm ${dst_dir}/args.tar.gz
