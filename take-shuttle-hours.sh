#!/bin/sh

if [ "$(uname)" == "Ubuntu" ]; then

    sudo apt-get install wget

else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install wget
fi


URL='http://www.mef.edu.tr/tr/ulasim-hizmetleri'


wget -q -O- "$URL" |grep "text-align: center" |awk '{print $3}' |sed -e 's/>\(.*\)</\1/' | sed -e 's/center\(.*\)td/\1/'| sed -e 's/\;\"\(.*\)\\>/\1/'