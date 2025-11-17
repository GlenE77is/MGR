#!/bin/sh

#! SaveXflash  short quick based on orig save2flash

#2007 Lesser GPL licence v2 (http://www.fsf.org/licensing/licenses/lgpl.html)
#! 250630-0753  #! rewrite of /sbin/save2flash 

. /etc/rc.d/PUPSTATE

if [ $PUPMODE -ne 13 ] ; then
	echo "...save2flash: Wrong PUPMODE ($PUPMODE)"
	exit 1
fi

if pidof X &>/dev/null || pidof Xorg &>/dev/null ; then
	if [ -z "$DISPLAY" ] ; then
		export DISPLAY=':0'
	fi
fi

if pidof snapmergepuppy 2>/dev/null ; then
	echo "...snapmergepuppy is AlReady running"
	exit 1
fi

if [ "$1" = "pup_event" ] ; then
	RUNPS="`busybox ps`"
	#some apps should not be disturbed by this background stuff...
	if [ "`echo "$RUNPS" | grep -w -E 'make|cc|gcc|imake|cmake|new2dir|xorriso|xorrecord|xine|gxine|petget|wget|axel|dotpup|mplayer|gmplayer|gcurl|gimv|burniso2cd|growisofs|cdrecord|pcdripper|xfmedia|xmms|ripoff|pdvdrsab|pburn|mhwaveedit|installpkg\.sh|downloadpkgs\.sh|removepreview\.sh'`" != "" ] ; then
		exit 1
	fi
fi


if [ "$DISPLAY" ] ; then    #! 250630-0753
########################################################
########################################################
#--- Snap Merge Puppy --- Main Background Gui lingers behind activity Gui . 
#~ if [ "$gcGtkDialog" -eq 1 ] ; then 
    # SPLASH MAIN BIG brown
    # position dependent on left margin 
    #-----------------------------------------------------------------------
    /usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
*    ${PSUBDIR}  saveXflash 
.     
.  ionice -c 1 snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw
.                                                                        "&

    #--- BackGround ------------------ col 74 line length for sizing splash

    RETVAL=$?
	GTKPIDINIT=$!
     sleep 1 

    ionice -c 1 snapmergepuppy    

    sleep 3 #! gae

    kill ${GTKPIDINIT}   #! linger until "end" 
#~ fi
fi
exit 0

### END ###
