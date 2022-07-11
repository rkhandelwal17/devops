#!/bin/bash

if [ -z ${1} ]; then 
    echo "instance name required"; exit 1; 
fi

rm -Rf .terraform

tmpfile=$(mktemp /tmp/tf.XXXXXX)
sed s/REPLACE/$1/g backend.hcl > $tmpfile

terraform init -backend-config=$tmpfile

rm $tmpfile