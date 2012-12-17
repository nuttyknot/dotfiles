#!/bin/sh

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

PWD=`pwd`

ln -s $PWD/zsh/.zshrc ~/.zshrc
ln -s $PWD/zsh/knot.zsh-theme ~/.oh-my-zsh/themes/knot.zsh-theme

