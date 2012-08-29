#!/bin/bash

FILES=".vimrc
.gvimrc"

echo "


Checking for files ...
-------------------------------------------------
"

for file in $FILES
do
	echo "Checking '$file' :"; 
	echo "-------------------------";
	if [ -e "~/$file" ] 
	then	
		echo "File already exists physically. Deleting file ..."; 	
		rm -rf "~/$file"
	fi
	if [ -h "~/$file"  ]
	then	
		echo "File already exists as a symlink. Deleting file ..."; 
		rm -rf "~/$file"
	fi
	ln -s "~/.vim/$file" "~/$file"
	echo "Done."
done

echo "
--------------------------------------------------
Checking done. Now updating submodules!
"

cd ~/.vim
git submodule update --init

echo "
--------------------------------------------------
It works!
"

exit 0
