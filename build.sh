#!/bin/bash


echo "===============================Start======================================"

rm -rf libtomcrypt
rm -rf libtommath

git clone https://github.com/libtom/libtomcrypt.git
git clone https://github.com/libtom/libtommath.git


rm -rf libtomcrypt/.git
rm -rf libtommath/.git

echo "===============================End================================"