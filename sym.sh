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
	if [ -e "$PWD/$file" ] 
	then	
		echo "File already exists physically. Deleting file ..."; 	
		rm -rf "$PWD/$file"
	fi
	if [ -h "$PWD/$file"  ]
	then	
		echo "File already exists as a symlink. Deleting file ..."; 
		rm -rf "$PWD/$file"
	fi
	ln -s $file "$PWD/$file"
	echo "Done."
done

echo "
--------------------------------------------------
Checking done. You're good to go!

"
exit 0
