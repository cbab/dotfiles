#!/bin/bash
cd "$(dirname "$0")"

dotdir=$(find * -type d -not -wholename '*.git*')

for dir in $dotdir; do
    dotfiles=$(find ./$dir/ -type f -iname ".*")
    echo "[$dir]"
    for file in $dotfiles; do
        fp=$(readlink -f $file)
        bn=$(basename $file)
        echo "    $HOME/$bn -> $fp"
        ln -s $fp $HOME/$bn
    done
done

if [ -f ~/.bash_profile ]; then
   source ~/.bash_profile
fi
