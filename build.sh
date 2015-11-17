#!/bin/sh
mkdir tmp
nix-build $1 > /dev/null
if [ -h result/etc ]; then echo Error: Build resulted /etc as symlink && exit 1; fi
tar cvz --transform="s|^result/||" tmp `nix-store -qR result` result/*
