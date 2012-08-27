#!/bin/bash
diskID=`mount | grep $1 | perl -ne 'if(/(^\/.*)\son/){$a=$1; chop $a;print $a}'`
partID=`mount | grep $1 | perl -ne 'if(/(^\/.*)\son/){print $1}'`
sudo umount $partID
udisks --detach $diskID
