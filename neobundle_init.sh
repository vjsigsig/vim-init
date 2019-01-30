#!/bin/sh

mkdir -p ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein/installer.sh
sh ~/.cache/dein/installer.sh ~/.cache/dein
