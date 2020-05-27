#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:initial-prot $INPUT_INITIALPROT; set ftp:ssl-force $INPUT_FORCESSL; set ftp:ssl-auth $INPUT_SSLAUTH; set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
