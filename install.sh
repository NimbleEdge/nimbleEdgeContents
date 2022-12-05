#!/bin/bash

rm -rf $HOME/.nimbleshell

mkdir -p $HOME/.nimbleshell

currDir=$(pwd)

mkdir $currDir/nimbleshell

which wget 


wget https://github.com/NimbleEdge/nimbleEdgeContents/raw/main/nimbleshell_latest.tar.gz  


if [ $? -ne 0 ]
then 
    echo "wget is a dependency to install NimbleEdge CLI. Please ensure you have wget installed."
    exit 1
fi


tar -xzf nimbleshell_latest.tar.gz 

cp -r $currDir/nimbleshell_latest/* $HOME/.nimbleshell/
rm -rf $currDir/nimbleshell_latest/
cat $HOME/.nimbleshell/README.md

export PATH="$HOME/.nimbleshell/:$PATH"
