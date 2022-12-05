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
curl https://github.com/NimbleEdge/nimbleEdgeContents/raw/main/nimbleshell_latest.tar.gz  --output nimbleshell_latest.tar.gz 

tar -xvzf nimbleshell_latest.tar.gz -C nimbleshell_latest

cp -r $currDir/nimbleshell_latest $HOME/.nimbleshell/
rm -rf $currDir/nimbleshell_latest
cat $HOME/.nimbleshell/README.md

export PATH="$HOME/.nimbleshell/:$PATH"


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/NimbleEdge/nimbleEdgeContents/main/install.sh)"
