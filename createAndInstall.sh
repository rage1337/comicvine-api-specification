#!/bin/zsh
./createAPIClient.sh
cd out
find . -name "*.java" -type f -exec gsed -i -E 's/@javax\.annotation\.Generated\(.*?\)//g' {} \;
mvn clean install
