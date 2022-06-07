#!/bin/bash

find 
/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/train/0/ 
-type f |sort -R|head -300| xargs -n 1 -I '{}' mv {} 
/Users/admin/KEA/4semester/ML/files/sign_language/Gesture-Image-Data/test/0/
