#!/bin/bash
# or example

if [ $user == "bob" ] || [ $user == "andy" ]
then
	ls -alh
else
	ls
fi
