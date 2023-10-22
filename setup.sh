#!/bin/bash

datetime=`date "+%Y%m%d%H%M%S"`

if [ -f "$HOME/.vimrc" ]
then
 cp "$HOME/.vimrc" "$HOME/vimrc.bkp.$datetime"
fi

cp ./vimrc "$HOME/.vimrc"

if [ -d "$HOME/.vim" ]
then
  tar cvzf "$HOME/vimdir.bkp.$datetime.tar.gz" "$HOME/.vim"
  rm -rf "$HOME/.vim"
fi

cp -R vimdir "$HOME/.vim"

