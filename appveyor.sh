#!/bin/sh
set -e

echo fetching...
cygport emacs-auctex.cygport fetch

echo prepping...
cygport emacs-auctex.cygport prep

echo compiling...
cygport emacs-auctex.cygport compile

echo installing...
cygport emacs-auctex.cygport inst

echo packaging...
cygport emacs-auctex.cygport pkg

tar -cJf artifact.tar.xz emacs-auctex-*/dist emacs-auctex-*/log
