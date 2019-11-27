#!/bin/bash


echo '... SED POPULUX_WS_URL_PROD'
echo $POPULUX_WS_URL_PROD
cd static/js
file1=`ls |grep "app.*.js$"`
mv $file1 $file1"_bak"
sed 's/POPULUX_WS_URL_PROD/'$POPULUX_WS_URL_PROD'/' $file1"_bak" > $file1
rm $file1"_bak"

file2=`ls |grep "chunk-vendors.*.js$"`
mv $file2 $file2"_bak" && sed 's/POPULUX_WS_URL_PROD/'$POPULUX_WS_URL_PROD'/' $file2"_bak" > $file2
rm $file2"_bak"
echo '... START SERVER'
nginx