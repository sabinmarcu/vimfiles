
#!/bin/bash

cd $HOME

if [ $(command -v git) ]; then
  git clone http://github.com/sabinmarcu/vimfiles.git .vimfiles
else
  if [ $(command -v curl) ]; then
    curl -O -L https://github.com/sabinmarcu/vimfiles/archive/master.zip
  else
    wget https://github.com/sabinmarcu/vimfiles/archive/master.zip
  fi
  unzip master.zip
  mv vimfiles-master .vimfiles
  rm master.zip
fi

cd .vimfiles
sh ./configure
