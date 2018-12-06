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
    find $TESTF > $CFILES-$NOW
else
    echo "Known file list not existing"
    exit 1
fi

#compare known file list with current file list

diff $KFILES $CFILES-$NOW >> $UKFILES-$NOW

if [ $? -ne 0 ];then
    echo "poslat upozorneni se seznamem na email a ulozime do logu"
    cat $UKFILES-$NOW | mail -s "unknow files detected!" recipient@site.com
    exit 2
fi





#pokud nic nenelazeno exit 0

#pokud nalezneme neznamy soubor dame jej do seznamu neznamych souboru (vcetne cele cesty)

#nakonec seznam posleme emailem a konec
