#!/bin/bash
#
#! rc.z_PCB-ion.sh    
#!  " Pup Cold Backup "  producing  "TarGz" fileout. 
#! 
########################################
export gcSysDevDob="241018-1743"    
########################################

#! Function.....: create a TarGz backup of the current savefile in use.
#! Author.......: GlenE77is of puppy linux forum
#! Disclaimer...: The author makes no guarantees about the compatibility of this software with your system, 
#! and accepts no responsibility for negative impact which may ocurr on your system, or your data.
#!
#! Note:  Generates a BackUp of saveDIRECTORY or saveFILE.4fs  in Install Mode=12 or 13 
#!     Source info is from PUPSTATE,  no choice allowed. 
#!     Must be Frugal #13 or #12
#! ==============================================================================================
#! NOTE: 
#! PCB.sh is a simple rewrite from 1.3.1 aimed at saveDIRectory Frugal/4fs install. 
#!      calling "ionice -c 1"   (realtime)  to prioritize PCB higher then any other processes. 
#! ==============================================================================================
#
echo "(=== $0  Pup-Cold-Bakup === ionice ===)"
#==============
. /etc/rc.d/PUPSTATE
#==============
export gcSysId="pcb"     # used to build "destfile" 
export gcSysBackUpId="PCBion" # label the TarGz Output File 
export gcSysRunId="PCB"     # Label the Project 
#==============
export gcSysRunVer="-ion"     #  may change this "version label"  # 
export gcSysRunFn="PCB-${gcSysRunVer}"     # ${gcSysRunFn}  used in main gui 
#==============
export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
##########################################################################
#! expand PATH
PATH=$PATH:/usr/lib/gtkdialog/:/root/my-applications/ 
##########################################################################
#!
#(: ================================================================
#(: fx(PXB_Splash_It)    # ACTIVE  #  copy from "CTB" "MCI" "MGR" 
#! Standard Splash : param "Str" "fg" "bg" "sleep" "opt"
#(: called by:  
#(: param:
#(: purpose: 
#(: method:  
#(: sends:
#(: rationale:
#(: note : 
#! ##################################################
	#(:
function PXB_Splash_It() {   # ACTIVE  copy from MGR 
	#!  Standard PXB_Splash_It : param "Str" "fg" "bg" "sleep" "opt"
		n=0 
	lcMsgStr="$1"
	lcMsgColorFg="$2"   # ForeGround
	if [ ! $2  ] ; then 
		lcMsgColorFg="yellow"   # good default 
	fi    
	#!
	lcMsgColorBg="$3"   # BackGround
	if [ ! $3  ] ; then 
		lcMsgColorBg="blue"  # good default
	fi    
	#!
	#! gather "sleep" param 
	lcMsgSlp="$4"       
	#! test for no param
	if [ ! $4 ] ; then  # Sleep safe default
		lcMsgSlp="1"  # < 1  usually does not make it to the screen, timing issues. 
	fi
	#! test for Sleep quick
	if [ "0" -eq $4 ] ; then  # Sleep quick
		lcMsgSlp=".5"  # < .5  usually does not make it to the screen, timing issues. 
	fi   
	#! else keep the sleep param as sent originally 
	#!
		#! -D---
	/usr/lib/gtkdialog/box_splash -fg ${lcMsgColorFg} -bg ${lcMsgColorBg} -border true  -close never -text "${lcMsgStr}     " &
		RETVAL=$?
		GTKPID_Cold_Splash=$!
		sleep ${lcMsgSlp}
		# kill ${GTKPID_Cold_Splash}
	#!
	lcMsgOpt="$5"   # standard is do the kill 
	if [ ! $5 ] ; then  # IF   No Option,  THEN   kill pid ( compatible / normal)
		kill ${GTKPID_Cold_Splash}
		#!   if NOT flag, then KILL.  This is Normal.
	fi    
	#!
	} #
	export -f PXB_Splash_It
	#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
function PXB_Splash_Wait() {   # ACTIVE : generates RunTime BIG Splash 
#______________________________________________________________________
/usr/lib/gtkdialog/box_splash -fg yellow -bg purple -close never \
-text " 
.  ${1} 
.                          " &
# will wait for TarOpt RunTime process, then kill. 
export GcPidSplashWait=$!

echo ">>> (_Splash_Wait_)_${GcPidSplashWait}_<<<" #! terminal trace
    # sleep 1  # minumum showtime.  Will pause, kill later. 
        # kill ${GcPidSplashWait} # pause & kill it later. 
        # lcMsgStr="message"
        # PXB_Splash_Wait "${lcMsgStr}" #  kill ${GcPidSplashWait}  
} # end: PXB_Splash_Wait
export -f PXB_Splash_Wait
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
function PXB_CleanUp() {    # ACTIVE
    n=0
	#~ rm -f /tmp/gtkdialog-splash_gtkrc
    rm -f /tmp/gtkdialog_splash_border.svg
    rm -f /tmp/gtkdialog_splash_bg.svg
    rm -f /tmp/gtkdialog_splash_bg.svg
    rm -f /tmp/snapmergepuppy-error
    rm -f /tmp/flagnextpassthru
                    # busybox ps | grep 'PCB-ion' | grep -v grep | awk '{print $1}' | \
                    # while read pid ; do kill $pid ; done
} # end: fx(PXB_CleanUp)
export -f PXB_CleanUp
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#! REQUIRED: === PXB_TarGzBackIt ========================================================
function PXB_TarGzBackIt() {   # PXB_TarGzBackIt  # $PBKP_PUPSAVE_PATH $PXB_BackUp_PATH
    n=0
    echo ""
    echo "(TarGz) ==="
#! original PHB Calc PBKP_MBrequired()  # saveDATA fileSIZE  via $1 [$PBKP_PUPSAVE_PATH]
	a=$(du -c -m -s "$1") #-c = --total, -m = --block-size=1m, -s = --summarize
	read -r aa bb <<< "$a"
	echo -n "MB required: $aa  "
    lcMBreq="${aa}"
#=== PXB_TarGzBackIt
    #! orig: destfile=".${2}"/"`expr "${1}" | awk -F / '{print $NF}'`".${gcSysBackUpId}-`date +%Y.%m.%d_%H%M.%S`
    #! destfile is the 'base' of the SaveFILE name   "$PBKP_PUPSAVE_PATH"  / "$PXB_BackUp_PATH"
    # -------------------------------------------------------------------
	destfile=".${2}"/"`expr "${1}" | awk -F / '{print $NF}'`"-${gcSysBackUpId}-`date +%y%m%d_%H%M.%S`
    #! awk $NF prints only the last column in a record
    #! $NF refers to the last field in a given record
    # -------------------------------------------------------------------
    echo "=== $destfile ==="
        #! TarGzBackIt has 3 'cd' :
        #! *cd #1 save original subdir :
        #!       ${CWDIR} 
        #! *cd #2   TarGz runs from /root 
        #!       ${1%/*} is target dest subdir /saveFILE 
        #! *cd #3 restore original subdir :
        #!       ${CWDIR} 
        #=== CD ===
        CWDIR=$PWD      # save "P"rocess "W"orking "D"irectory /root  (not required) 
        #=== CD ===
        sync    # now run sync
        #!
        #! === CD === 
        cd ${1%/*}  
        #! change dir to  "/root"  #  REQUIRED  so "TAR" can run using PUPSTATE data for / / saveDATA
        #! === CD === 
#=== PXB_TarGzBackIt
		#! PHB_Tar-Var-Set ### purpose: force 'default' value into TAROPT 
        TAROPT="-z"
        TAREXT='.tar.gz'
        TAROPT="-c -z --checkpoint=1000" 
        destfile=${destfile}${TAREXT} 
        echo ": PXB_Splash_Wait (${gcSysRunId}) :  "
  #! --- Big Red Background Splash-Wait, during TarGz , will kill splash after TarGz  
        PXB_Splash_Wait "(${gcSysRunId})  
  .
  .      Pup-COLD-Backup
  .    ' ionice -c 1 tar -c -z  '   
  .   --- Creating   Tar.Gz  ---
  .   --- DATA size: ${lcMBreq} MB
  .   --- Please Wait  ---
  .
  . Source: 
  ${gcSysSave} 
  .  
  . Target: (into same subdir as Source)
        ${destfile##*/}
  .  "
  # Big Red Background Splash-Wait, kill splash after TarGz  
#=== PXB_TarGzBackIt
        # TarGz options
        destfile=${destfile}  
        sourcefile=${1##*/}/}
#;;; ionice -c 1   realtime   ;;;;;;;;;;;;;;;;;;;;;;
#=========================================================================
ionice -c 1 tar ${TAROPT} -f ${destfile##*/} ${1##*/}/   --checkpoint=1000
#=========================================================================
#;;; ionnice -c 1  realtime     ;;; realtime 
#;;; ionnice -c 2  best effort  ;;; best effort

        #=== CD ===
        cd "$CWDIR"  # change dir back to original   (optional) 
        #=== CD ===
       RETVAL=$?
		sleep 3
        kill ${GcPidSplashWait}   # Big Red Background Splash   
} #
export -f PXB_TarGzBackIt

#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

##################################### Execution #######################################
#####################################   main()  #######################################


echo "( main ) ==="  # > /dev/console
. /etc/rc.d/PUPSTATE
export PUPMODE
#! --- Frugal ---
case $PUPMODE in
	12|13) ok=1 ;;  
	*) ERRORMSG="PCB Backup can only be used if there is an active pupsave...(12|13)" ;;
esac
#! So, IF NO Active PupSave, THEN this OS Distro could NOT be running. 
#---
#! Find and verify path of currently mounted save file.
export gcSaveDataName="`echo $PUPSAVE | cut -f 3 -d ","`"    
if [ ! -e "/mnt/home${gcSaveDataName}" ]; then   # Error Trapped 
	/usr/lib/gtkdialog/box_ok "Pupsave Backup" error "'/mnt/home${gcSaveDataName}' does not exist!"   ### ShowError
    sleep 5
	PXB_CleanUp
	exit 1
fi
#------------------------------------------------------------------------
#! Case ERRORMSG catch-all
if [ "$ERRORMSG" ] ; then
	PXB_CleanUp
	echo "$ERRORMSG"
	ERRORMSG="<b><span foreground='"'red'"'>${ERRORMSG}</span></b>"
	exit 1
fi # end: if [ "$ERRORMSG" ] 
#--------------------------------------------------------------------
# Export constants / variables
export PBKP_PUPSAVE_PATH="/mnt/home${gcSaveDataName}"
export PBKP_PUPSAVE_NAME="${gcSaveDataName##*/}" #${SF##*/} = basename $SF  #! err
echo "(Gui) ==="  # > /dev/console
#! ====================================================================
#! FALL-THRU ;;; STANDARD RUN
#! ====================================================================
#!  MAIN GUI was originally in this place. 
EXIT="PCB_Back_It"    
#! as if a Gui <button> Selection had been made !
#! ====================================================================
#! FALL-THRU ;;; STANDARD RUN
#! ====================================================================
echo "(Main) ==="  # > /dev/console
PXB_Splash_It "=== main() PCB-ion Starting ===" "yellow" "purple" "2" 
    #! subroutine "PCB_Back_It" RUNs on SaveDATA DIRECTORY and saveFile.4fx  
if [ "$EXIT" = "PCB_Back_It" ] ; then   #! standard "Fall-Thru" subroutine. 
    n=0
    echo "(M1)"  # > /dev/console
        #! Splash 
        lcMsgStr="(${gcSysRunId})
        ionice -c 1 snapmergepuppy  ()
           PUPMODE -eq 13 "
        PXB_Splash_Wait "${lcMsgStr}"
        #=================================================================
        echo "(SMP1) ======================="
#! ========================
ionice -c 1 snapmergepuppy    #! realtime  first access to hard-drive    
#! ### ionice -c 2 snapmergepuppy    #! best effort  /  shared access with higher priority    
#! ========================

        #! usual parameters:  "/initrd/pup_ro1"  into  "/initrd/pup_rw"     2>/dev/null 
        #! SMP message output is:
        #! "Merging  /initrd/mnt/tmpfs/pup_rw  onto  /initrd/mnt/dev_save/pup_UpupB5B-SDA/upupbbsave-B5B-iso602-b"
        #! ===============================================================================
        #! author's system note:
        #!  *** snapmergepuppy message output to terminal is:
        #!   "Merging  /initrd/mnt/tmpfs/pup_rw  onto  /initrd/mnt/dev_save/pup_UpupB5B-SDA/upupbbsave-B5B-iso602-b"
        #!  *** description:
        #!    * Where "/initrd/mnt/tmpfs/pup_rw" is the current Read/Write layer.
        #!    * Where "/initrd/mnt/dev_save/pup_UpupB5B-SDA/upupbbsave-B5B-iso602-b" is the "saveDATA" entity. 
        #!
        echo "(SMP2) ======================="
        #=================================================================
        #!
		sleep 1
        kill ${GcPidSplashWait}
        echo "(M2)"  # > /dev/console
        echo "(Call BackIt)"  # > /dev/console
#! === call =================================================
PXB_TarGzBackIt "$PBKP_PUPSAVE_PATH" "$PCB-BackUp_Path" 
#! === call =================================================
        n=0
        #=== CD 
        cd "$CWDIR"  # change dir back to original   (not required) 
        #=== CD 
        #!
else
        #! Final Splash and "ERROR" wait
    /usr/lib/gtkdialog/box_ok "PCB-ion" error "=== PCB-ion === ERROR ===
=== $PBKP_PUPSAVE_PATH === 
    === ERROR ==="
fi # end: if [ "$EXIT" = "PXB_Back_It" ]

    #!
    PXB_CleanUp
    #! Final Splash and "OK" wait    #! generates (wd: message
    /usr/lib/gtkdialog/box_ok "PCB-ion" complete "$0  SaveDATA Backup Completed:"
    #!
    exit 0



### END of Source Code #################################################

#=== NOTES ====================================================================
#!
#! production stored /root/my-applications
#! Edit/Executable stored /mnt/home/MY_/usr-share/My_Dev_/Edit_PCB
#!
#! =====================================================================
#! PCB.sh : 
#!      with standardized formatting and reduced options. 
#!      with NO GUI or <buttons> selection. 
#!      parameters taken from PUPSTATE 
#! =====================================================================
#
#! 'ionice' Command: 
#! This command is used to start a new process with a specific priority, known as the “nice value.” 
#! The nice value is used by the system to calculate/set the current priority of a running process. 
#! running "ionice -c 1 snapmergepuppy" gives maximum priority to the snapmergepuppy, with no interuptions. 
#! A higher nice value lowers the process's priority, while a lower (negative) nice value increases it. 
#! Processes with higher priority receive more CPU time.
#! "saveFolder" (and "saveFILE.4fs") are "Static" data files, called "saveDATA".  
#!      meaning they are not actively updated during normal processing, 
#!      only updated via "snapmergepuppy" [SMP] . 
#! IF "root" is running "ONLY" this PCB-ion.sh, 
#!  THEN "ionice -c 1 snapmergepuppy" will "merge" new RAM data layer into "saveDATA".      
#!  That is the only method which alters the "saveDATA", 
#!  Therefore, the "saveDATA" is a "static" data file method.   
#!
#!  RETVAL values : 
#!      1-125	An error occurred in the nice command.
#!      126	The command specified by the Command parameter was found but could not be invoked.
#!      127	The command specified by the Command parameter could not be found.
#!
#!  ionice -c 1
#!  DESCRIPTION

       #!  This program sets or gets the I/O scheduling class and priority for a program. If no
       #!  arguments or just -p is given, ionice will query the current I/O scheduling class and
       #!  priority for that process.

       #!  When command is given, ionice will run this command with the given arguments. If no class
       #!  is specified, then command will be executed with the "best-effort" scheduling class. The
       #!  default priority level is 4.

       #!  As of this writing, a process can be in one of three scheduling classes:

       #!  Idle
           #!  A program running with idle I/O priority will only get disk time when no other program
           #!  has asked for disk I/O for a defined grace period. The impact of an idle I/O process
           #!  on normal system activity should be zero. This scheduling class does not take a
           #!  priority argument. Presently, this scheduling class is permitted for an ordinary user
           #!  (since kernel 2.6.25).

       #!  Best-effort
           #!  This is the effective scheduling class for any process that has not asked for a
           #!  specific I/O priority. This class takes a priority argument from 0-7, with a lower
           #!  number being higher priority. Programs running at the same best-effort priority are
           #!  served in a round-robin fashion.

           #!  Note that before kernel 2.6.26 a process that has not asked for an I/O priority
           #!  formally uses "none" as scheduling class, but the I/O scheduler will treat such
           #!  processes as if it were in the best-effort class. The priority within the best-effort
           #!  class will be dynamically derived from the CPU nice level of the process: io_priority
           #!  = (cpu_nice + 20) / 5.

           #!  For kernels after 2.6.26 with the CFQ I/O scheduler, a process that has not asked for
           #!  an I/O priority inherits its CPU scheduling class. The I/O priority is derived from
           #!  the CPU nice level of the process (same as before kernel 2.6.26).

       #!  Realtime
           #!  The RT scheduling class is given first access to the disk, regardless of what else is
           #!  going on in the system. Thus the RT class needs to be used with some care, as it can
           #!  starve other processes. As with the best-effort class, 8 priority levels are defined
           #!  denoting how big a time slice a given process will receive on each scheduling window.
           #!  This scheduling class is not permitted for an ordinary (i.e., non-root) user.
        #!
### END of NOTES ##################################################################



	
    
    
