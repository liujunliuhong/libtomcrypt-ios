#!/bin/bash


echo "===============================Start======================================"

rm -rf Submodules/libtomcrypt
rm -rf Submodules
rm -rf .gitmodules
touch .gitmodules

cat >.gitmodules <<EOF
[submodule "Submodules/libtomcrypt"]
	path = Submodules/libtomcrypt
	url = https://github.com/libtom/libtomcrypt.git

[submodule "libtommath"]
	path = Submodules/libtommath
	url = https://github.com/libtom/libtommath.git
EOF

git submodule init
git submodule update


rm -rf Submodules/libtomcrypt/.git
rm -rf Submodules/libtommath/.git

echo "===============================End================================"