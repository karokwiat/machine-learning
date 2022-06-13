#!/bin/bash

cd /Users/admin/KEA/4semester/ML/files/sign_language/asl_dataset/
mkdir test
cd test/

for i in {0..9}; do mkdir "$i"; done
for i in {a..z}; do mkdir "$i"; done


for i in {0..9}; do find "/Users/admin/KEA/4semester/ML/files/sign_language/asl_dataset/train/$i/" -type f |sort -R|head -20| xargs -n 1 -I '{}' mv {} "/Users/admin/KEA/4semester/ML/files/sign_language/asl_dataset/test/$i/"; done

for i in {A..Z}; do find "/Users/admin/KEA/4semester/ML/files/sign_language/asl_dataset/train/$i/" -type f |sort -R|head -20| xargs -n 1 -I '{}' mv {} "/Users/admin/KEA/4semester/ML/files/sign_language/asl_dataset/test/$i/"; done

