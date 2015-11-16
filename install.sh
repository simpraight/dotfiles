#!/bin/bash

GIT_URL="https://github.com/simpraight/dotfiles.git"
TGZ_URL="https://github.com/simpraight/dotfiles/archive/master.tar.gz"
DOTPATH=~/dotfiles

if has "git"; then
    git clone --recursive "$GIT_URL" "$DOTPATH"

elif has "curl" || has "wget"; then

    if has "curl"; then
        curl -L "$TGZ_URL"
    elif has "wget"; then
        wget -O - "$TGZ_URL"
    fi | tar xv -

    mv -f dotfiles-master "$DOTPATH"

else
    die "curl or wget required"

cd "$DOTPATH"
if [ $? -ne 0 ]; then
    die "not found: $DOTPATH"
fi

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME/$f"
done
