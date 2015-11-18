#!/bin/sh
cat - > default.nix
nix-build > /dev/null
if [ -h result/etc ]; then echo Error: Build resulted /etc as symlink && exit 1; fi
mkdir tmp
tar cvz --transform="s|^result/||" tmp `nix-store -qR result` result/*
