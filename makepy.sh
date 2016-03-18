#!/bin/sh
#
# makepy.sh
#
# creates a template for a python file
# the way I like it
# and saves that file to the local directory
#
# proper format:
#    bash makepy.sh filename
#

#define parameters which are passed in.
FNAME=$1
DATE=`date -j +%Y-%m-%d`


sed -e "s;%FNAME%;$1;g" -e "s;%DATE%;$DATE;g" ~/bin/python_template.txt > $1
