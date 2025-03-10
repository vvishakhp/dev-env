#!/bin/bash

if [ -x "$(command -v apk)" ];
then
    sudo apk add --no-cache ansible git
elif [ -x "$(command -v apt-get)" ];
then
    sudo apt-get install ansible git
elif [ -x "$(command -v dnf)" ];
then
    sudo dnf install ansible git
elif [ -x "$(command -v zypper)" ];
then
    sudo zypper install ansible git
else
    echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: "${packagesNeeded[@]}"">&2;
fi

sudo ansible-pull --url https://github.com/vvishakhp/dev-env.git

