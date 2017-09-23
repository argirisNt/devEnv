#!/bin/bash

cp git/gitconfig $HOME/.gitconfig
mkdir -p $HOME/.git_template/hooks
cp git/{ctags,post-commit,post-merge,post-rewrite} $HOME/.git_template/hooks/
chmod +x $HOME/.git_template/hooks/*

