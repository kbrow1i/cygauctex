#!/bin/sh
exit_status=0

cygport emacs-auctex.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    cygport emacs-auctex.cygport inst pkg || exit_status=1
    cygport emacs-auctex.cygport test || echo "Test(s) failed."
fi

tar -cJf artifact.tar.xz emacs-auctex-*/dist emacs-auctex-*/log

exit $exit_status
