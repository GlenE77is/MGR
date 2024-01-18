#!/bin/bash
#  
### rc.z_S2F.sh  main version   (W)ith Notes
# update to 'C'style
#--------------------------------------------------------
#(: System Developer Initial DOB 
export gcSysDevDob="240105-0547"
#--------------------------------------------------------
#(: System Developer ID name of this Linux BASH script
export gcS2fDevId="S2F"	# this script filename in author's system
export gcS2fDevVer="5.1"
##(:

####################################################
    gcGtkDialog="1" # set "1" to enable full dialog 
####################################################

if [ "$gcGtkDialog" -eq "1" ] ; then 
# SPLASH MAIN BIG brown
# position dependent on left margin 
#-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.     S2F 
.     
.               nice -> snapmergepuppy
.                                                                        "&
#------------------------------------- col 74 line length for sizing splash

    RETVAL=$?
	GTKPIDINIT=$!
    sleep 1 
    kill ${GTKPIDINIT}
fi


########################################################################
	# Standard Master Count for Looping Repeated Runs of rc.z_S2F.sh 
	gcLoopCnt="3"
	# Master Count is set to 1, 3, 19 for iterations of rc.zS2F#.sh . 
########################################################################

    gcSleepCnt=".3"

    gcSleepCmn01=".1"      # ${gcSleepCmn01}
    gcSleepCmn03=".3"
    gcSleepCmn07=".7"
    gcSleepCmn10="1"
    gcSleepCmnerr="10"

	gcSleepQck=${gcSleepCmn03}
   
#(:------------------------------------------------------
 



###############################################################################
### === Signature for top-of-file in Terminal screen ==========================
	#~ /bin/echo -e " "
    #~ lcMsgStr=":${0}:"
	#~ /bin/echo -e "\\033[10G\\033[1;37m*** \\033[1;33m $lcMsgStr \\033[1;37m***\\033[0;39m" # > /dev/console  
lcMsgStr="===... $0 ...============================="
	/bin/echo -e "\\033[0G\\033[1;37m*** \\033[1;31m ${lcMsgStr} \\033[1;37m***\\033[0;39m" 
	/bin/echo -e "\\033[0G\\033[1;37m*** \\033[1;31m ${lcMsgStr} -dc \\033[1;37m***\\033[0;39m" > /dev/console
sleep .1
### end: Signature ============================================================

#:##################################################
function Sys_Splash_Flip() {   #: Active Flipping
    n=0
    lcParam1="${1}"

#--- flipping colors ---red/yel---------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg red -bg yellow -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip1=$!	### kill splash
sleep .2
#--- flipping colors ---yel/blk-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip2=$!	### kill splash
sleep .2
#--- flipping colors ---yel/grn-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip3=$!	### kill splash
sleep .2
#-----------------------------------------------------------------------------------------------------

        #---------------------------------------
        # Sys_Splash_Flip ${lcMsgStr}
        # kill ${GtkPidFlip1} 
        # kill ${GtkPidFlip2} 
        #---------------------------------------
} # end: from EXR_Copy_Splash_Flip



#:######################################################################
function Sys_SetVerDts() {   #: A

### Manual Entry for  Developers Version  Date-Time-Stamp ################
### Manual Entry for  Developers Version  Date-Time-Stamp ################
### Manual Entry for  Developers Version  Date-Time-Stamp ################

#(: export gcS2fDtsVer="$gcSysSfsDOB"

export gcS2fSysDtsNow="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!

export gcS2fSysKrn="`uname -r`"
export gcPupKernName="Kern:`uname -r`"


}
# end: Sys_SetVerDts

 #~ set -e -x 

#:######################################################################
function Sys_PupState() {   #: A

    ### Standard System subroutine from gae library. 
    ### Standard System Var from OS 
    ### called by PreTest()
    ### param
    ### purpose :
    ###     consolidation of PUPSTATE
    ###     control generation of local var
    ### rationale :
    ### Puppy writes the "state" variables into /etc/rc.d/PUPSTATE .
    ###
    #
    #--- load PUPSTATE --- from only location : "/etc/rc.d/"
    . /etc/rc.d/PUPSTATE
    #
    sleep ${gcSleepCmn01}
    #
    #note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then 
	echo "BK ==============================================="  
	lcSaveFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	echo "SaveFileNameMount = ${lcSaveFileNameMount}"
	lcSaveFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "SaveFileNameBaseSrc = ${lcSaveFileNameBaseSrc}"
	echo "BK ==============================================="  
    ### direct import, similar varname.
    lcPupSave=${PUPSAVE}
    lcPupMode=${PUPMODE}
    lcPupSubDir=${PSUBDIR}
    lcPupDts="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!
    lcPupHome=${PUP_HOME}
    lcPupSave=${PUPSAVE}
    lcPupMode=${PUPMODE}
	lcPupKernName="Kern:`uname -r`"
	#
	if [ -f /tmp/snapmergepuppy-error ] ; then 
		echo "ERROR clear on entry snapmergepuppy ==================" 
		rm -f /tmp/snapmergepuppy-error	### clear on entry
	fi	

}
# end: Sys_PupState





#:######################################################################
function Sfs_PreTest() {   #: A
	echo ">>> begin S2F_PreTest"

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
### begin original code from PeaBee
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	. /etc/rc.d/PUPSTATE	### load current environment constants

	echo "(trace-a) "  
	if [ $PUPMODE -ne 13 ] ; then
		echo "if [ $PUPMODE -ne 13 ] ; then"
		echo "save2flash: ERROR : Wrong PUPMODE ($PUPMODE)"
		${gcSleepCmnerr}
		exit 1
	fi

#! echo "begin: (trace-b) will find pidof Xorg"  ### MUST be running "X" window manager
if pidof X &>/dev/null || pidof Xorg &>/dev/null ; then
	echo "if pidof X &>/dev/null || pidof Xorg &>/dev/null ; then"
	echo "if [ -z "$DISPLAY" ] ; then "
	if [ -z "$DISPLAY" ] ; then
		echo "....... -z DISPLAY ......." 
		echo "export DISPLAY=':0'  ???"
		export DISPLAY=':0'
	else
		lndummy=0
		echo "....... NOT -z DISPLAY ......." 
	fi
	sleep ${gcSleepCmn01}
else
	lndummy=0
	echo "> > > not  pidof X   or  not pidof Xorg < < <"
	sleep ${gcSleepCmnerr}
fi

########################################################################
### test from original code... from PeaBee
#~ if [ "$1" = "pup_event" ] ; then
	#~ echo "???????"
	#~ echo "if [ '$1' = 'pup_event' ] ; then ???" > /dev/console
	#~ RUNPS="`busybox ps`"
	#~ #some apps should not be disturbed by this background stuff...
	#~ if [ "`echo "$RUNPS" | grep -w -E 'make|cc|gcc|imake|cmake|new2dir|xorriso|xorrecord|xine|gxine|petget|wget|axel|dotpup|mplayer|gmplayer|gcurl|gimv|burniso2cd|growisofs|cdrecord|pcdripper|xfmedia|xmms|ripoff|pdvdrsab|pburn|mhwaveedit|installpkg\.sh|downloadpkgs\.sh|removepreview\.sh'`" != "" ] ; then
		#~ echo "??? ERROR ???"
		#~ sleep 3
		#~ exit 1
	#~ fi
#~ fi # end: call to busybox.  original code.  causes error via set -x -e 
########################################################################


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
### end original code from PeeBee
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

### clear err flg before new run
if [ -f /tmp/snapmergepuppy-error ] ; then
	rm -f /tmp/snapmergepuppy-error
fi

if [ "$gcGtkDialog" -eq "1" ] ; then 
		sleep ${gcSleepCnt}
		kill $GTKPIDPTST
fi # end: gtk

} # end: Sfs_PreTest
########################################################################
########################################################################
########################################################################









#:######################################################################
function S2F_Sync() {   #: A

### begin clear colors ###
### reset to avoid alien values in next gtkdialog
/bin/echo -en "\\033[0;39m"		>  /dev/console	### color clear
/bin/echo -en "\\033[60G"    >/dev/console 
/bin/echo -en "\\033[1;33m"    >/dev/console 
/bin/echo -e  "\\033[0;39m"   >/dev/console 
### end to avoid alien values in next gtkdialog
### end clear colors

if [ "$gcGtkDialog" -eq "1" ] ; then 

### little <SYNC> blue splash 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text " < SYNC >  "&
	GTKPIDSYNC=$!
fi # end: gtk

		sync    					### flush buffers ALWAYS
		
if [ "$gcGtkDialog" -eq "1" ] ; then 
    sleep ${gcSleepCmn1}	
	kill ${GTKPIDSYNC}
fi # end: gtk

} # end: fx(S2F_Sync)


#:######################################################################
function S2F_RunSMP() {   #: A

echo "=== Run SMP LoopCnt ==================================================="

if [ "$gcGtkDialog" -eq "1" ] ; then 
		# SPLASH little green
		lcMsgStr="Running Cnt:${1}--Nice:${2}-${3}"
		/usr/lib/gtkdialog/box_splash -fg blue -bg lightgreen -border true  -close never -text "$lcMsgStr" &
fi # end: gtk

		# Active RunFile
		# 		gcRunCnt="${WAITCNT}" && gcNiceNum="19" 
		#       && S2F_RunSMP "$gcRunCnt" "$gcNiceNum" "$gcFlgGitHub" "$gcRunFile"

		nice -n ${2} ${4} /initrd/pup_ro1 /initrd/pup_rw

if [ "$gcGtkDialog" -eq "1" ] ; then 
		GTKPIDRUN=$!
		sleep ${gcSleepCnt} 
		kill $GTKPIDRUN
fi # end: gtk

} # end: fx(S2F_RunSMP)










#:######################################################################
#:#####   MAIN()  ######################################################
#######   MAIN()  ######################################################
#######   MAIN()  ######################################################


### all 'echo' show in Geany "Execute" BASH Terminal screen
### clear previous color settings
### reset to avoid alien values in next gtkdialog

/bin/echo -en "\\033[0;39m"		>  /dev/console	### color clear
/bin/echo -en "\\033[60G"    >/dev/console 
/bin/echo -en "\\033[1;31m "    >/dev/console 

# /bin/echo -e  "\\033[0;39m"   >/dev/console 


echo "======================================================"

echo ">>> SetVerDts ......."
Sys_SetVerDts

echo ">>> PupState ......."
Sys_PupState


### BIG main-splash background for SFS ==================================
### begin setup for tracking Passing Seconds . 
 
### Immediate Now-Date allows trace on time required for each "nice snapmergepuppy" 
	lcSysNowDts00="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!
	lcSysNowDts00="`date +%y%m%d-%H%M-%S`"		### grave-mark in date() !!!
	lcSysNowDts01="`date +%y%m%d-%H%M-%S`" 		### allow visual timing of each cycle

	lcMsgStrTime="    ----- Start Time ----- ${lcSysNowDts00} "


if [ "$gcGtkDialog" -eq "1" ] ; then 
# SPLASH MAIN BIG brown
# position dependent on left margin 
#-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
!     S2F : Cnt=${gcLoopCnt} : ${gcSysSfsDob}
.     ${PSUBDIR}:   K:${gcS2fSysKrn}
.     ${lcMsgStrTime}
.
.
.
.
.
.
.
.               nice -> snapmergepuppy
.                                                                        "&
#------------------------------------- col 74 line length for sizing splash

    RETVAL=$?
    sleep ${gcSleepcmn10}
             GTKPIDMAIN=$!
	# kill ${GTKPIDMAIN}

  /bin/echo "- " 
  /bin/echo "- " 
  /bin/echo "- " 
fi # end: gtk
   

########################################################################
    #~ sleep .1    #${gcSleepQck}

#=======================================================================

Sfs_PreTest

S2F_Sync	# linked into binary 'busybox' 

### SnapMergePuppy always throws this "error flag":
### "/tmp/snapmergepuppy-error"   of  size 0 
###
###     : corrected inconsistent transfer function
###     : via repeated calls to 'snapmergepuppy' .
###	    : added "nice" priority function
###		: "error flag file still generated.

#~ echo "======================================================"
### begin clear colors ### #2 run for this ###
### reset to avoid alien values in next gtkdialog
/bin/echo -en "\\033[0;39m"		>  /dev/console	### color clear
/bin/echo -en "\\033[60G"    >/dev/console 
/bin/echo -en "\\033[1;33m "    >/dev/console 
/bin/echo -e  "\\033[0;39m"   >/dev/console 
### end to avoid alien values in next gtkdialog on some PUP systems.
### end clear colors






### MainGui #####################################################################
### MainGui #####################################################################
### MainGui #####################################################################
 
#=======================================================================
#(: test for exist the latest SMP GitHub version.
#(: generate "$gcRunFile" the name of a specific "snapmergepuppy" 

echo "=== select SMP version ======================================="

	#~ if [ -f /usr/sbin/snapmergepuppy-github.sh ] ; then 
		#~ n=0
		#~ export gcFlgGitHub="<GitHub>"	# display in splash
		#~ export gcRunFile="/usr/sbin/snapmergepuppy-github.sh  /initrd/pup_ro1 /initrd/pup_rw"
	#~ else
		#~ n=0
		export gcFlgGitHub="-"
		export gcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
	#~ fi


#=============================================================================
lcDialogColor="  -fg yellow    -bg blue "
lcRunNum="19" 	# nice number 1 to 19

if [ ! -s ${gcLoopCnt} ] ; then 
    ii=${gcLoopCnt}
else
    ii=1	# single loop
fi
lcMsgStr="*"

for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax
do 
	kill $GTKPIDSMP1	# else lingers 
	n=0
    lcMsgStr3="<$i>  nice -n ${lcRunNum} SnapMergePuppy" 

		# splash (flipping) for SMP 
		Sys_Splash_Flip "<$i>  nice -n ${lcRunNum} SnapMergePuppy"
	echo "================================================================"
    nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw     2>/dev/null   
	echo "================================================================"

    GTKPIDSMP1=$!
    sleep ${gcSleepQck}
		#~ kill $GTKPIDSMP1
    kill ${GtkPidFlip1} 
    kill ${GtkPidFlip2} 
    kill ${GtkPidFlip3}    ### kill any previous splash ? err flag 

done # end: for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax

    kill $GTKPIDSMP1

#=============================================================================


### that's all. 

  /bin/echo "- " 
  /bin/echo "- " 
  /bin/echo "- " 
  /bin/echo " " > /dev/console

	if [ -f /tmp/snapmergepuppy-error ] ; then 	### from SMP and taropt 
		echo "snapmergepuppy - EXIT - ==========================" 
		rm -f /tmp/snapmergepuppy-error		### clear on EXIT
	fi	

	if [ -f /tmp/flagnextpassthru ] ; then 		### from SMP and taropt 
		echo "flagnextpassthru - EXIT - ==============================" 
		rm -f /tmp/flagnextpassthru			### clear on EXIT
	fi	


    kill ${GTKPIDINIT}
    sleep .3
    kill ${GTKPIDMAIN}
    sleep .3

echo "==== DONE =================================================="

if [ "$gcGtkDialog" -eq "1" ] ; then 
# SPLASH MAIN BIG brown   # position dependent on left margin 
lcSysNowDtsDone="`date +%y%m%d-%H%M-%S`" 
#-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash  -fg yellow -bg brown -border true  -close never -text "\
.   S2F : Cnt=${gcLoopCnt} : ${gcSysSfsDob}
.      ${PSUBDIR}:   K:${gcS2fSysKrn}
.      ${lcMsgStrTime}
.
.
.                    D.O.N.E.!
.               ${lcSysNowDtsDone}
.
.
.              nice -> snapmergepuppy
.                                                                        "&
#------------------------------------- col 74 line length for sizing splash

    RETVAL=$?
	GTKPIDDONE=$!
    sleep 2

  /bin/echo "- " 
  /bin/echo "- " 
  /bin/echo "- " 
fi # end: gtk
  

#=======================================================================

	kill ${GTKPIDSMP}	### has lingered behind in background
    sleep .3
	kill ${GTKPIDDONE}
    sleep .3
    kill ${GTKPIDINIT}	### has lingered as background
    sleep .3

    sleep .3

### End: Standard S2F ################################################

  /bin/echo " "
  /bin/echo " "
  /bin/echo " "
  /bin/echo " "

#:######################################################################
### optional documentation sent to terminal 

if [ 1 -eq 0 ] ; then

  /bin/echo -n -e "\\033[1G" 
  /bin/echo -n -e "\\033[1;35m" 

lcParGTKPIDSMPStr="
### (S2F) ##############################################################
###
### The Sfs_PreTest gives some protection 
### that there is no other 'snapmergepuppy' running 
### which may be actively altering the system DATA.
###
### Note: 
### SaveDATA (File or Folder) must be 'Static' 
### 	so the data will be pure. 
### SaveDATA must be 'Static' ( no other SnapMergePuppy running ) 
### 	during any Backup Operation by any utility 'backup' program. 
### Any Other system processes must be on 'hold', so nice = 19 .  
### Otherwise, 
###		there is (logically) possible erroneous data transferred 
### 	during the Save2Flash operation. 
###
### This 'Static DATA' requirement is common to all Backup Programs. 
### This 'Static DATA' requirement is the reason that our S2F program 
### 	makes use of the 'nice' process 
### 	to prioritize 'snapmergepuppy' to a high level, 
### 	thus placing other system functions on 'hold' 
### 		during the Save2Flash operation. 
###
### Multiple cycles (re-runs) of S2F due to SMP error flag observed in Terminal.
### This error flag is from the binary processes, not in BASH code. 
### It has been noted ( via Murga Forum ) 
###   that that SMP process is running to the end of a list 
###   and is thus setting a non-fatal error flag. 
###
### Repeated runs using the 'nice' BASH command is used for this reason, 
###     in order to give high priority to 'snapmargepuppy'. 
###     and run SMP until the error flag disappears (almost). 
###     Sometimes 19 runs will reduce the flag to a single instance. 
###
###	'sync' is only a link into binary 'busybox' . 
###
### (S2F) ###############################################################"

	/bin/echo -n "$lcParStr"  
	/bin/echo -e "\\033[0;m" 

    /bin/echo -n -e "\\033[1G" 
    /bin/echo -n -e "\\033[1;31m" 

lcParStr="
### (S2F) ###############################################################
*** 'nice' BASH command : 
Usage: nice [OPTION] [COMMAND [ARG]...]
Run COMMAND with an adjusted niceness, which affects process scheduling.
With no COMMAND, print the current niceness.  Niceness values range from
-20 (most favorable to the process) to 19 (least favorable to the process)."

	/bin/echo -n "$lcParStr"  
	/bin/echo -e "\\033[0;m" 

    /bin/echo -n -e "\\033[1G" 
    /bin/echo -n -e "\\033[1;32m" 

lcParStr="
### (S2F) ###############################################################
*** 'nice' BASH command : 
Mandatory arguments to long options are mandatory for short options too.
  -n, --adjustment=N   add integer N to the niceness (default 10)
      --help     display this help and exit
      --version  output version information and exit

NOTE: your shell may have its own version of nice, which usually supersedes
the version described here.  Please refer to your shell's documentation
for details about the options it supports.
###(S2F) ###############################################################"

	/bin/echo -n "$lcParStr"  
	/bin/echo -e "\\033[0;m" 


#:######################################################################
### SMP = "snapmergepuppy" 
###
### SMP always sets  "/tmp/snapmergepuppy.lock"     !!!
### SMP always clears "/tmp/snapmergepuppy.lock" 
###		and
### SMP always sets  "/tmp/snapmergepuppy-error"
### SMP always clears "/tmp/snapmergepuppy-error"  !!!
#-----------------------------------------------------------------------

fi
# end: if [ 0 -eq 0 ] 



###  return 0 # this is only for function() 'return'  
echo "=== DONE === " 

### END ### 
########################################################################





