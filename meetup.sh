#!/bin/sh

STEM=`mktemp /tmp/meetup.XXXXXX`
IN=$STEM.tjs
OUT=$STEM.js

echo "Input source: $IN"
echo "Tamed source: $OUT"

wget --quiet -O - https://raw.github.com/maxtaco/tamejs/master/meetup.js > $IN  
tamejs $IN 
node $OUT $1
