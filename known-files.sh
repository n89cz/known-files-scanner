#!/bin/bash
#
#
#
#

#full path to tested folder
TESTF=$1

#known file list
KFILES="known.list"

#unknown file list
UKFILES="unknown.list"

#current files list
CFILES="current.list"

#current date
NOW=`date +%Y-%m-%d`

#pokud neexistuje vychozi seznam vyrobime ho
if [ ! -f $KFILES ]; then
    find $TESTF > $KFILES
fi

#pokud vychozi seznam existuje udelame soucasny stav
if [ -f $KFILE  ]; then
    echo "udelej soucasny stav"
    find $TESTF > $CFILES
else
    echo "Known file list not existing"
    exit 1
fi




#porovname vychozi a soucasny stav

#pokud nic nenelazeno exit 0

#pokud nalezneme neznamy soubor dame jej do seznamu neznamych souboru (vcetne cele cesty)

#nakonec seznam posleme emailem a prejmenujeme ho (napr. unknow.list-2018-12-05

