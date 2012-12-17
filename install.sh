#!/bin/sh

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

ln -s zsh/.zshrc ~/.zshrc
ln -s zsh/knot.zsh-theme ~/.oh-my-zsh/themes/knot.zsh-theme

