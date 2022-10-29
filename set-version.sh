#!/usr/bin/env bash

sed -i -E "s/VERSION=\".*\"/VERSION=\"$VERSION\"/" install.sh
git add .
git config --global user.email "wahyudi.ibo.wibowo@gmail.com"
git config --global user.name "wahyudibo"
git commit -a -m "Update version numbers: $VERSION"
git push origin master