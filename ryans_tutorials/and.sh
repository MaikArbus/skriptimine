#!/bin/bash
# and example
if [ -r $1 ] && [ -s $1 ]
then
	echo "this file is useful"
fi
