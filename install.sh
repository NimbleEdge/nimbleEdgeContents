#!/bin/bash

rm -rf $HOME/.nimbleshell

mkdir -p $HOME/.nimbleshell

currDir=$(pwd)

mkdir $currDir/nimbleshell

which curl 

if [ 0 -ne $? ]
then 
    echo "curl is a dependency for the installation of NimbleEdge CLI. Please ensure curl is installed in your machine"
    exit 1
fi
curl https://raw.githubusercontent.com/NimbleEdge/website/main/nimbleshell_latest.tar.gz | tar xvz 

cp -r $currDir/nimbleshell_latest $HOME/.nimbleshell/
rm -rf $currDir/nimbleshell_latest
cat $HOME/.nimbleshell/README.md

export PATH="$HOME/.nimbleshell/:$PATH"