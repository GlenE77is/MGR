#!/bin/bash
#! 
#! rc.z_E3R.sh
#! E3R TXN generated 
#! 
###^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
export gcSysDevDobPrev=""
export gcSysDevDob="240113-0914"
#!
#! Runs OK. Copies "EDIT" files to /root/my-applications/ as archive, maintained in "SAVEDATA" . 
#! "dts" not appended to files. This is a 'one-time' 'active-now' backup. 
#!
#! code copied from MGR
#! ==================================================================
#! "#  "  Comments to be culled ( has a ' ' <tab> )
######## Comments to be culled ( has a ' ' <tab> )
#! "# "  Comments to be culled ( has a ' ' <space> )
######## Comments to be culled ( has a ' ' <space> )
###
	### =============================================================
    ### regular running subdir is "/root/my-applications"
#	lcFileRun="/root/my-applications/rc.z_E3R.sh"
	### Editing/Testing is done on this """/Edit""" file 
#	lcFileRun="${gcMntHomeMyUsrDev}Edit_E3R/rc.z_E3R.sh"
	### =============================================================
###
####################################################################################
###  "E3R" at   /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_E3R/rc.z_E3R.sh
###         ### method: copy "/My_Dev_" into "/root/my-applications"
####################################################################################
#
#!
#!   Standard GNU General Public License Software:
#!
#! Has NO mainGUI.  No user selections.
#! Has NO special termination code.
#! Expects to be called by MGR.sh
#! todo: clean up. possibly insert whole into "MGN.sh"
#! ************************************************************
#!
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications/bin
. /etc/rc.d/PUPSTATE    # gather basic "state" of Puppy "system"
. /etc/DISTRO_SPECS    # gather basic Distro data
#! ************************************************************
export gcDISTRO_NAME="${DISTRO_NAME}"
export gcDISTRO_SFS="${DISTRO_SFS}"
export gcDistroBFW="${BUILD_FROM_WOOF}"			
###^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#(: System Developer ID name of this Linux BASH script
export gcE3RDevId="E3R"
export gcE3RDevVer="5"
#! *************************************************************************************
#! E3R "basename" : E3R will run from specified source path ****************************  
export gcMntHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/"   # Edit_MGR/
export gcRootAppsBin="/root/my-applications/bin/"
export gcRootApps="/root/my-applications/"
### export gcRootAppsBin=""	### dependent on "PATH" specification.
#! *************************************************************************************
set +e +x # clear set

###^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications
###^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#! 
#(: ======================================================================
#(: fx(Sbr_Str2DevTrm)   #: A
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
function Sbr_Str2DevTrm() {   #: ACTIVE
lcS2TStr=${1}   # ## STRING message
lcS2TClr=${2}   # ## COLOR name or number 31,32,33,34,35 ...
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal
#
lcDevConsole=""	# ## default to "T"erminal
#
case "${lcS2Topt}" in   # TARGET
   "C") lcDevConsole=" > /dev/console" ;;
   "T") lcDevConsole="" ;;
    *)  lcDevConsole="" ;;	#: default Geany "T"erminal mode
esac
#
case "${lcS2TMrg}" in   # MARGIN
   0|"0") /bin/echo -n -e "\\033[0G"           >/dev/console ;;
   *) /bin/echo -n -e "\\033[${lcS2TMrg}G"    >/dev/console ;;
esac
#
case "${lcS2TClr}" in   #! COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
    ""|"0")      /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default to yellow
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
esac
    # final string
	/bin/echo -n "${lcS2TStr}"  ${lcDevConsole}
	/bin/echo -e "\\033[0;m"  ${lcDevConsole}
	return  0
} # end: fx(Sbr_Str2DevTrm)
export -f Sbr_Str2DevTrm
#!
#!
########################################################################
### begin: fx(E3R) #####################################################
########################################################################
########################################################################
### begin: fx(E3R) #####################################################
########################################################################
########################################################################
### begin: fx(E3R) #####################################################
########################################################################
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#!
#!
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#(: ====================================================================
#(: fx(E3R_CopyOneDirectAB)   #: Active 
#(: called by: fx(E3R_Scan_List)
#(: calls: cp
#(: param:   FnBase, SrcFnAll, TrgFnAll
#(: purpose:
#(: calls:
#(: method:  E3R Copy One Direct "SrcFnBase" "SrcFnAll" "TrgFnAll"
#(: sends:
#(: rationale:  Copy SourceFile to "my-applications" subdir 
#(:   subdir is on SaveData in /root/my-applications/
#(: note : parameters are ticky
#(:
#! ############################################################################
#!   function E3R_CopyOneDirectAB  # ACTIVE   called by E3R_Scan_List_ED
#!   function E3R_CopyOneDirectAB  # ACTIVE   called by E3R_Scan_List_ED
#!   function E3R_CopyOneDirectAB  # ACTIVE   called by E3R_Scan_List_ED
#! ############################################################################
function E3R_CopyOneDirectAB() {  # ACTIVE   called by E3R_Scan_List_ED
	n=0
	echo "E3R_CopyOneDirectAB : ${lcE3rOneFnAll} ===" >> /0-E3R_run.log
#	change FnTrg to: 	lcE3RFnRun="/root/my-applications/rc.z_E3R.sh"
##########################################
#!
	lcE3rOneSubDir="${1}"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name [MGR]
	lcE3rOneFnExt="${2}"		# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename [MGR-v5]
	lcTrgOneSubDir="${3}"
#!
	echox="=== CopyOneDirectAB ========================================="
	#~ echo "=== SrcOneSubDir:"
	#~ echo "$lcE3rOneSubDir"
	#~ echo "=== SrcOneFnExt:"
	#~ echo "$lcE3rOneFnExt"
	#~ echo "=== TrgOneSubDir:"
	#~ echo "$lcTrgOneSubDir"
	#~ echo "=== *** lcE3rOneFnAll ==="
#! ======================================================  short subdir ======= extended name ====  
	lcE3rOneFnAll="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
#! ======================================================  short subdir ======= extended name ====  
#!
	echo "$lcE3rOneFnAll"
	#~ echo="============================================================="
	### BIN ###############################################################################
    lcE3rOneFnAll="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
        lcSysDts="-`date +%y%m%d-%H%M-%S`" # NOW dts
    lcE3rOneFnAlldts="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}${lcSysDts}.sh"
    #!
	echo "=== If Source Exist ======================================="
	sleep 1
		retval="1"
	#~ if [ -f ${lcE3rOneFnAll} ] ; then   # Source Full Filename is verified 
		#~ retval="1"
	#~ else
		#~ retval="0"
	#~ fi
#!
if [ retval ] ; then    #! Source Full Filename is verified 
#!
	echo "===> Log :lcE3rOneFnAll: ${lcE3rOneFnAll} ============="
	#---------------------------------------------------------------------------------------------------------
	   /usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text "${lcE3rOneFnExt}" &
	#---------------------------------------------------------------------------------------------------------
    RETVAL=$?
	GtkPidSRSC=$!	# capture PID
	sleep .5
	#! kill ${GtkPidSRSC}
	lcTrgOneSubApps="/root/my-applications/"
	#----------------------------------------------------------------------------------------------------------------
	   /usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "${lcE3rOneFnExt}" &
	#----------------------------------------------------------------------------------------------------------------
    RETVAL=$?
	GtkPidSRS1=$!	# capture PID
	sleep .5
	#! kill ${GtkPidSRS1}
        #!
        #! This "copy" functionis only used in rc.z_E3R.sh
        #! TrgOneSubApps =" /root/my-applications/"
		#! echo "=== cp 1 -v -u ============================================================================="
		#! echo "=== cp 1 -v -u ===${lcE3rOneFnAll} === ${lcTrgOneSubApps} ==="
		#! echo "=== cp 1 -v -u /mnt/home/MY_/usr-share/My_Dev_/Edit_E3R/rc.z_E3R.sh   /root/my-applications/
		#! echo "===========---=====================================================---======================"
		#! if not 'stat' filename, then a Non-Fatal Error. Ignored. 
		cp -v -u ${lcE3rOneFnAll} ${lcTrgOneSubApps}
        #!
	#----------------------------------------------------------------------------------------------------------------
	   /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "${lcE3rOneFnExt}" &
	#----------------------------------------------------------------------------------------------------------------
    RETVAL=$?
	GtkPidSRS11=$!	# kill previous PID
        sleep .3
        kill ${GtkPidSRSC}
        #~ sleep .5
 		kill ${GtkPidSRS1}
        #~ sleep .5
        kill ${GtkPidSRS11}
        #!
else	# Source is Not Real ... Error Trap
    n=0
	echo "===> Log Source is NOT REAL Error ==================================="
	#----------------------------------------------------------------------------------------------------------------
    /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "Not Found: ${lcE3rOneFnExt}" &
	#----------------------------------------------------------------------------------------------------------------
    RETVAL=$?
	GtkPidSRS2=$!	# capture PID
	sleep 1.7
	#! kill ${GtkPidSRS2}
fi
	#~ kill ${GtkPidSRS}
	#~ kill ${GtkPidSRSC}
	#~ kill ${GtkPidSRS1}
	#~ kill ${GtkPidSRS2}
    #~ kill ${GtkPidSRS11}
    #!
} # end: E3R_CopyOneDirectAB called by E3R_Scan_List_ED
export -f E3R_CopyOneDirectAB
###############################
#!
#!
#!
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#(: ====================================================================
#(: fx(E3R_Scan_List_ED)   #: Active
#(: called by: E3R Main ()
#(: calls:
#(: param:
#(: purpose:
#(: calls: E3R_CopyOneDirect, E3R_CopyOne, E3R_CopyOne_bin
#(:        E3R_CopySplash (flipping)
#(: method:  E3R_CopyOneDirect "SrcFnBase" "SrcFnAll" "TrgFnAll"
#(: sends:
#(: rationale:
#(: note:
#(: funxtion is to backup all these "EDIT" modules 
#(:   into "/root/my-applications"  # archive
#(:   into "/root/my-applications" # future "running" subdir in PATH .
#(:  MGN, MCI, E3R,
#(:  CTX, CTB, CTA, CTB, CTU,  
#(:  MNT, S2F, RCZ, WRM, PLY, 
#(:  GTK, ABT, YAF, PMT, TST, SLP, BMA, MNU, C2M, C3C, 
#(:
#! ############################################################################
#! function E3R_Scan_List_ED() {   #: ACTIVE:  run LONG LIST of E3R specific code
#! function E3R_Scan_List_ED() {   #: ACTIVE:  run LONG LIST of E3R specific code
#! function E3R_Scan_List_ED() {   #: ACTIVE:  run LONG LIST of E3R specific code
#! ############################################################################
function E3R_Scan_List_ED() {   #: ACTIVE:  run LONG LIST of E3R specific code
    n=0
lcDTS="-`date +%y%m%d-%H%M-%S`"
echo "=== E3R ===SrcOneFnAll === ${lcDTS} ===" > /0-E3R_run.log
    lcMsgStr=">>> begin: running E3R Long Form Copy =====================" &&   Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
lcMsgStr=">>> begin Long List" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
echo ">>> E3R_CopyOneDirect ${lcE3rOneFnID} ${lcE3rOneFnAll} ${lcTrgOneSubAll} "
lcMsgStr=">>>==============================================================" &&   Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
lcMsgStr="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh" &&   Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
#! ==================================================================
#!
set -e
#!
#! #####################################################################
#! === geany.conf Arc+DTS ===========================================
	lcFnSrc="/root/.config/geany/geany.conf"   # /root/config/geany/geany.conf"
	lcE3rFnTrg="MGR"	# could be repeated for MCI, E3R, CTB .
    lcE3rSubName="${DISTRO_DB_SUBNAME}"	# UpupKK, UpupBB, UpupJJ
	lcE3rArcDtsId="`date +%y%m%d-%H%M-%S`-E3R-dts.sh"
	lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcE3rFnTrg}/arc_Common_dts_sh_"
#!     ${lcMgrArcFnTrg}-${lcMgrArcSubName}${lcMgrArcFnTag}
#!
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
.   ${lcMgrArcSubName}
.   ${lcFnSrc}
.   ${lcFnTrg}
." &
    sleep 1
	pidx=$!
	GTKPIDe3rarcdts=$!
    sleep .1
	#! from MGR(with suffixed surname)
	cp -f ${lcFnSrc} ${lcFnTrg}
	#! out to arc_MGR_dts_sh_
    sleep .1
	kill ${GTKPIDe3rarcdts}

#! #####################################################################
    ### ft(MGR) ### ------------- ### Copy-----Code #############################
    lcE3rOneSubDir="MGR"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    lcE3rOneFnExt="MGR"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		echo "=== ${lcE3rOneSubDir} ======"
    lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
    ### ft(MGS) ### ------------- ### Copy-----Code #############################
    lcE3rOneSubDir="MGR"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    lcE3rOneFnExt="MGS"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		echo "=== ${lcE3rOneSubDir} ======"
    lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
    ### ft(MGT) ### ------------- ### Copy-----Code #############################
    lcE3rOneSubDir="MGR"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    lcE3rOneFnExt="MGT"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		echo "=== ${lcE3rOneSubDir} ======"
    lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
    #~ ### ft(MGI) ### ------------- ### Copy-----Code #############################
    #~ lcE3rOneSubDir="MGR"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    #~ lcE3rOneFnExt="MGT"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		#~ echo "=== ${lcE3rOneSubDir} ======"
    #~ lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    #~ E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
    ### ft(MCI) ### ------------- ### Copy-----Code #############################
    lcE3rOneSubDir="MCI"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    lcE3rOneFnExt="MCI"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		echo "=== ${lcE3rOneFnExt} ======"
    lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#~ #! #####################################################################
    #~ ### ft(MCI_TXN) ### ------------- ### Copy-----Code #############################
    #~ lcE3rOneSubDir="MCI"		# /Edit_${lcE3rOneSubDir} # subdir / ID short-name
    #~ lcE3rOneFnExt="MCI_TXN"			# /rc.z_${lcE3rOneFnExt}.sh # could be longer-extended-filename
		#~ echo "=== ${lcE3rOneFnExt} ======"
    #~ lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
    #~ E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(E3R) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="E3R"
	lcE3rOneFnExt="E3R"   
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2F) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2F"   # S2F
	lcE3rOneFnExt="S2F"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#!
#!
#! priority above 
######################################################################################
if [ 1 -eq 0 ] ; then # master E3R_Int_Main control : allows Short List for Testing
######################################################################################
#! secondary below
#!
#!
#! #####################################################################
	### ft(CTX) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTX"
	lcE3rOneFnExt="CTX"   # CTX  #  real running version
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTA) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTA"
	lcE3rOneFnExt="CTA"   # CTA     # real running version
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTB) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTB"
	lcE3rOneFnExt="CTB"   # CTB     # real running version
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTB-5) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTB"
	lcE3rOneFnExt="CTB-5"   # CTB   561  # real running version
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTB_SL) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTB"
	lcE3rOneFnExt="CTB-SL-4"   # CTB SL  ScanList  # real running version
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTB_SL-4.) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTB"
	lcE3rOneFnExt="CTB-SL"   # CTB SL  ScanList  # real running version 
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTA) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTA"
	lcE3rOneFnExt="CTA"   # CTA auto scanlist, with gui
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTU) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTU"	
	lcE3rOneFnExt="CTU"   # CTU Utility no gui 
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(CTU) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CTU"	# /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTU/rc.z_CTU-NSMP.sh
	lcE3rOneFnExt="CTU-NSMP"   # CTU Utility no gui 
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(SCN) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="SCN"
	lcE3rOneFnExt="SCN"   # SCN
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2T) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2T"
	lcE3rOneFnExt="S2T_Str2DevTrm"   # Str 2 DevTerm message
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_TXN_exe) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="TXN"
	lcE3rOneFnExt="TXN_EXE"	# rc.z_TXN_EXE
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_TXN) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="TXN"
	lcE3rOneFnExt="TXN"  
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_CDW.sh) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CDW"
	lcE3rOneFnExt="CDW"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_CDW-DC.sh) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CDW"
	lcE3rOneFnExt="CDW-DC"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(/ICON/rc.z_CDW-icons.sh) ### ------ ### Copy-----Code #############################
	lcE3rOneSubDir="ICON"
	lcE3rOneFnExt="CDW-icons"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_CDW-icons.sh) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CDW"
	lcE3rOneFnExt="CDW-icons"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(rc.z_CDW-compress.sh) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="CDW"
	lcE3rOneFnExt="CDW-compress"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(PHB-deb) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="PHB"   # PHB for "file.4FS" a copy of "file.4fs" version.
	lcE3rOneFnExt="PHB_deb"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(PHB-hbk) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="PHB"   # PHB for "file.4FS" a copy of "file.4fs" version.
	lcE3rOneFnExt="PHB_hbk"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(MntPone) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="MNT"
	lcE3rOneFnExt="MntPone"  # rc.z_MntPone
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(MntUone) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="MNT"
	lcE3rOneFnExt="MntUone" # MntUone
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(C2M) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="C2M"   # C2M
	lcE3rOneFnExt="C2M"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(C3C) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="C3C"   # C3C
	lcE3rOneFnExt="C3C"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2F) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2F"   # S2F
	lcE3rOneFnExt="S2F"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2F-1) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2F"   # S2F-1
	lcE3rOneFnExt="S2F-1"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2F-3) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2F"   # S2F-3
	lcE3rOneFnExt="S2F-3"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(S2F-19) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="S2F"   # S2F-19
	lcE3rOneFnExt="S2F-19"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(SFB) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="SFB"   # SFB Save File Backup
	lcE3rOneFnExt="SFB"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(ABT) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="ABT"   # ABT
	lcE3rOneFnExt="ABT"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### ft(LIB) ### ------------- ### Copy-----Code #############################
	### ft(YAF) ### ------------- ### Copy-----Code #############################
	lcE3rOneSubDir="YAF"
	lcE3rOneFnExt="YAF"
		echo "=== ${lcE3rOneFnExt} ======"
	lcE3rOneFnAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${lcE3rOneSubDir}/rc.z_${lcE3rOneFnExt}.sh"
	E3R_CopyOneDirectAB  ${lcE3rOneSubDir} ${lcE3rOneFnExt} ${lcE3rOneFnAll}
#! #####################################################################
	### Deveopment: ft(PAK) ### test for Pull All KeyWords  #####################
#################################################################################

#################################################################################
### MANUAL COPY ########################################################################
#################################################################################
								############################################################
								### ft(GEANY) ###
			### ft(ICON) #############################
			###  ICON subdir ### ### Icons #################
#! #####################################################################
			### ft(DOX) #############################
			###  DOX subdir ### ### Documentation #################
			lcAllFnBase="DOX"
			lcSrcFnCopy="/mnt/home/MY_/usr-share/My_Dev_/Edit_DOX/"
			lcTrgFnCopy="/root/my-applications"
				cp -v -u -r ${lcSrcFnCopy} ${lcTrgFnCopy}
			#~ ### ft(HST)        ### Head Sig Tail ##########################
			#~ ###  HST subdir    ### Head Sig Tail ##########################
			#~ ### ft(BIN) ############################
#! #####################################################################
			###  GTK Dialog ### ####################
			#~ lcSrcFnCopy="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/gtkdialog_maingui_ex19.sh"
			#~ lcTrgFnCopy="/root/my-applications/"
				#~ cp -v -r ${lcSrcFnCopy} ${lcTrgFnCopy}
			### begin: SourceFiles not from Dev_Edit ##########################################
			### ft(Iron_bookmarks.html) #############################
			###  Iron_bookmarks.html  ### Browser #################
			### ft(ICN) #############################
			###  ICN  ### ### Icons #################
#! #####################################################################
			### ft(BMA) #############################
			###  BMA  ### ### Book Marks_Alpha #################
			### must copy running /BMA.html, /BMM.html, /BMP.html
			lcAllFnBase="BMA"		###   /BMA   ### BookMarks_Alpha
			lcMsgStr=">>> begin: BMA copy  ====================="
			echo "$lcMsgStr"
			lcSrcFnCopy="/BM*.html"
			lcTrgFnCopy="/root/my-applications"
				cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
			lcSrcFnCopy="/BMA_files"
			lcTrgFnCopy="/root/my-applications"
				cp -v -r -u ${lcSrcFnCopy} ${lcTrgFnCopy}
#! #####################################################################
            ### ft(MNU) ### Raw Copy ##########################
            ### must copy running /mnt/home/menu*.*
			lcMsgStr=">>> begin: MNU copy  ====================="
			echo "$lcMsgStr"
            #! MGR generates various menu.lst     
            lcSrcFnCopy="/initrd/mnt/dev_save/menu.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
            #! generated from grub4dos output.   
            lcSrcFnCopy="/initrd/mnt/dev_save/menu-advanced.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
            #! custom to preserve XP chainload method
            lcSrcFnCopy="/initrd/mnt/dev_save/menu-xp.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
            #! custom for changing menu screen background with file.xpm
            lcSrcFnCopy="/initrd/mnt/dev_save/menu-splash.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
            #-----------------------------------------------------------
            lcSrcFnCopy="/initrd/mnt/dev_save/menu-Boot-*.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
            #-----------------------------------------------------------
            lcSrcFnCopy="/mnt/home/menu_phelp.lst"
            lcTrgFnCopy="/root/my-applications"
                cp -v -u ${lcSrcFnCopy} ${lcTrgFnCopy}
#!
#!
#!
#! ##############################################################################
fi ### end: if [ 0 -eq 0 ] # master E3R_Int_Main control : allows Short List Testing
#! ##############################################################################
#!
#!
#!
        lcMsgStr="<<< end: clear lingering splash  ====================="
        echo "$lcMsgStr"
            sleep .5
### <<< end Long Form Copy #############################################
### <<< end Long Form Copy #############################################
### <<< end Long Form Copy #############################################
    lcMsgStr="<<< end: running E3R Long Form Copy ====================="
    echo "$lcMsgStr"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    sleep 1
    set +x
    set +e
} # end: fx(   E3R_Scan_List_ED  )  simple return to E3R_Main_ED
export -f E3R_Scan_List_ED
#! #################################
#!
#! #######################################################################
#! ### end: E3R SubRoutines ###############################################
#! ########################################################################
#! ### end: E3R SubRoutines ###############################################
#! ### end: E3R SubRoutines ###############################################
#! ########################################################################
#! ########################################################################
#! ########################################################################
#! #######  start E3R Main()  #########################################
#! #######  start E3R Main()  #########################################
#! #######  start E3R Main()  #########################################
####################################################################
########################################################################
########################################################################
########################################################################
###############################
#! function E3R_Main()    rc.z_E3R (Main())   ### Falls-Into this main()
#! function E3R_Main()    rc.z_E3R (Main())   ### Falls-Into this main()
#! function E3R_Main()    rc.z_E3R (Main())   ### Falls-Into this main()
###############################
########################################################################
########################################################################
########################################################################
#! 
echo "### function ${0} MAIN FALL-THRU   ### E3R_MAIN FALL-THRU   ### E3R_MAIN FALL-THRU"
export gcE3RDtsVer="${gcSysDevDob}"
### E3R_Main () ###
                ### system Date-Time-Stamp via command 'date'
                ###   plus '.dts' extension for selection/deletion as a group by C3C.
                ### DTS for archive files.
                ### files are Year-Month-Day-Second stamped so no dupelicates.
                ### use the `" grave mark, not single "'" quote mark.
#########################################################################
echo "================================================================"
gcE3RFileName="Main Backup : Edit-3-Root"   # A
gcE3RFileZero="${0}"    # only captures "." shortname  
echo "### ${gcE3RFileName} ###"
lcMsgStr="...E3R : $gcE3RFileName : v:${gcE3RDtsVer} terminal trace"
echo "=== $lcMsgStr"	### terminal display tracer
echo "### NO GUI ###"
echo "================================================================"
sleep 1
#########################################################################
###=======  start MAIN Gui   ==============================================
###=======  start MAIN Screen   ====================
###
### all "echo" will appear in BASH Terminal Screen.
### test code via Geany, "Execute" , Terminal .
###=== MAIN splash ===###
### precedes the group of all E3R_Copy
lcMsgStr="...E3R : $gcE3RFileName : v:${gcE3RDtsVer} terminal trace"
echo "=== $lcMsgStr"	### terminal display tracer
### (3) ### main () splash is "background" for all 'action' splashes.
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
.  ###          E3R.sh  : v:${gcE3RDtsVer}
.  ###          ${gcDISTRO_NAME}
.    MAIN:  Running:  ${gcE3RFileZero}   EDIT
.
.
.
.
.
.
.
.             copy major executable files 
.         from "/SDA1/MY_/usr-share//My_Dev_/" 
.           into "/root/applications"
....................................................................." &
    sleep .1
	pidx=$!
	GTKPIDrunningE3R=$!
    sleep 1.1   # must wait for -bg darkred to splash !
  
########################################################################
########################################################################
        echo ">>> fx(   E3R_Scan_List_ED  )  "
            n=0
            E3R_Scan_List_ED  # ## call to sbr fx(E3R_Main_Run) all E3R subr
        echo "<<< fx(   E3R_Scan_List_ED  )  "
########################################################################
########################################################################
#########################################
###	E3R funxtion is to backup all these modules into "/root/my-applications"
###	method:
### 	gather param "lcParamCopy"
###		execute scripts copy into target subdir
#########################################
### now, a sequence of "Action blocks"  for  "copy" .
### each triggers a "copy-check" .
### each splash is small and is written over the previous splash .
### 'kill' are delayed so that previous splash remains on screen longer.
#########################################
### call E3R_Copy(0)
    ### (0)
    ### "${1}" ### this is the only var to change for each E3R process.
###################################################################
###   DONE  ###########################################################
gcE3RFileName="E3R.sh"
#------------------------------------------------------------------------
 	/usr/lib/gtkdialog/box_splash -fg yellow -bg darkgreen -border true -close never -text "\
.
. 	       $gcE3RFileName
. 	   DONE:---DONE:---DONE:---
.
. 	                                      " &
#------------------------------------------------------------------------
	GTKPIDDONE3=$!
    sleep 1
    kill ${GTKPIDDONE3}     2>/dev/null
echo "==========> kill ---Done ---"
    sleep .1
    kill ${GTKPIDrunningE3R}        #2>/dev/null   ### main
    kill ${GTKPIDrunningE3R}        #2>/dev/null   ### main
echo "<<< E3R main () : DONE"
### } # end: E3R_MAIN FALL-THRU
########################################################################
### END of E3R script ### end of main() ###
########################################################################
########################################################################
### END of E3R script ### end of main() ###
########################################################################
########################################################################
### END of E3R script ### end of main() ###
########################################################################
