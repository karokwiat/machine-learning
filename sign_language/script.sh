#!/bin/bash

cd /Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/
mkdir test
cd test/

for i in {0..9}; do mkdir "$i"; done
for i in {A..Z}; do mkdir "$i"; done
mkdir "_"


for i in {0..9}; do find "/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/train/$i/" -type f |sort -R|head -300| xargs -n 1 -I '{}' mv {} "/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/test/$i/"; done

for i in {A..Z}; do find "/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/train/$i/" -type f |sort -R|head -300| xargs -n 1 -I '{}' mv {} "/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/test/$i/"; done

find /Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/train/_/ -type f |sort -R|head -300| xargs -n 1 -I '{}' mv {} /Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/test/_/
