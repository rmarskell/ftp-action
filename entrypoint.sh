#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ftp:ssl-protect-data yes; set ftp:ssl-protect-list yes; set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
