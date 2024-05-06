#!/bin/sh
#! rc.z_MGR.sh  :::  "MGR{7}" 
#!#!/bin/sh
#! rc.z_MGR.sh  :::  "MGR{7.4}" 
#! "Manager" for project development across 20 Puppy OS Distributions. 
#! ***************************************************************************
#! Development "5" moved on to a revised "MGR 6" 
#! Development "6" moved on to a revised "MGR 7" 
#! Development "7" moved on to a revised "MGR 8" 
#!      with independent floating windows for the NoteBook main screen. 
#!      with compacted "NoteBook" and "PageBook" style main screen. 
#!      "NoteBook" and "PageBook" used in order to 'fit' in the screen universally. 
#! ******************************************************************************
#(: all "cased, cloned, hacked" by gae.
#! ***************************************************************************
#!  error note from GTK:
#!  widget_vbox_input_by_command() : <input> not implemented for this widget
#!  Google Widget_vbox_input_by_command () input not implemented for this widget windows
#! #######################################
#!
export gcSysDevDob="240506-0652"
#! #######################################
#!
#! PATH: 
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications://mnt/home/MY_/usr-share/My_Dev_/Edit_MGR
. /etc/rc.d/PUPSTATE      #  gather basic "state" of Puppy "system"
. /etc/DISTRO_SPECS     #  gather basic Distro data
#! ************************************************************
#!
#!
#! *****************************************************
export gcMgrDevId="MGR"  
#! *****************************************************
export gcMgrVerBase="-7"   
export gcMgrVer="-7.4"   # "v:#" # "-lint" "-TXN" "-DEV"  # used by Sbr_BakOneArcDts
#~ export gcMgrVer="-8"   # "v:#" 
#~ export gcMgrVerExt="-8.1"   # "v:#" # "-lint" "-TXN" "-DEV"   ### use this:  "gcSysNameVer"
#! *********************************************************
#! gcMgrRealFnSrc="$0"    #  "rc.z_MGR-7" # REAL FN in SubDir   "./MGR-7.sh"
gcMgrRealFnSrc="`echo -n "$0" | cut -f 2 -d '/'`"       # in header #~ gcMgrRealFnsrc="`echo -n "$0" | cut -f -1 -d '/'`"   #  "./MGR-7.sh"
#! called by Sbr_BakOneArcDts # # used as:  "MGR"${gcMgrVer}".sh"
#! *********************************************************
#! 
#! export gcMgrDevSubId=",,," # B4B or B5B   
#!      must be copy/paste from DISTRO_PUPPYDATE, PUPSAVE,  PUPSFS
#!      given: 'sda1,ext4,/pup_UpupB5B-SDA/upupbbsave-B5B' ,  generate "B5B" 
export  gcMgrDevSubId="`echo -n "$PUPSAVE" | cut -f 3 -d '-'`"
export  gcOsSubId="???"
#!
#! Debug controllers:
    #~ set -xe		# Start - x e
    #~ set +xe      # Stop  + x e
#!
#(: ==================================================
#! 
#! "--- "
#! <span foreground='blue'>"-------------------------------------"</span>
#! "--- "
#! <span foreground='red'>"Message Box Routines used:  "</span>
#! "--- "
#! <span foreground='green'>"#: Sbr_Box_Message :  "</span>
#! <span foreground='green'>"#: ... custom rewrite of gtkdialog Box_Help"</span>
#! <span foreground='green'>"#: ... used by 'HELP' , 'Distro', 'Proc', 'FAQ' "</span>
#! "--- "
#! <span foreground='green'>"#: gxMessage : "</span>
#! <span foreground='green'>"#: ...    used by: PUP, GUI, SRC, IMG, UPL, SYS. "</span>
#! <span foreground='green'>"#: ...    expects plain text . "</span>
#! <span foreground='green'>"#: ...    displays 45 char long, then wraps. "</span>
#! <span foreground='green'>"#: ...    line-length expands to 72++ "</span>
#! "--- "
#!
#! #############################################
#! top: Fall-Thru "initz" function 
#! #############################################
#!
#! =============================================
#! rc.z_MGR , the "Manager"  , the "FrameWork"
#! filename.sh is the name format,  so GEANY sees a 'script' as executable.
#! chmod +x rc.z_MGR.sh might be required for duplicate/export files.
#! "cased+cloned-and-hacked" by gae.
#! 
#! GNU bash is the shell.
#! Gtk is the gui / dialogue builder.
export gcMgrDevFirstRun="1"
#!
export gcMgrDevID="M.G.R.EmGr.DblClk.MnxGen"
export gcMgrDevName="Manager.Page-Book.Embedded-Graphics.DblClk."
#!
export gcSysNameBase="MGR"  #: used in ${gcSysNameBase} code as systemlabel
export gcSysNameVer=".7.1"
export gcMGRname="Manager" 
#!
export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
export gcSysSaveFn="`echo -n "$gcSysSave" | cut -f 3 -d '/'`"
export gcSysIdFull="${gcSysSave}"			# ${PUPSAVE} # like "iso-KineticPup32-22.10"
#!
export gcSysDevHw="MCT-AMD-500_Bios2009_"	# Dev Computer HardWare
#!
export gcBootOsHd="SDA"			# OS Hard-Drive
export gcBootOsExe="${0}"		# OS Executable
#!
#!
#! ### gcSysKillProc #####################
#! ### purpose: disable certain routines, hide from public access. 
#! ###    for example: 
#! ###    in a "sample distribution" we kill calls to external programs, 
#! ###    These processes are "requisites" but not delivered.
export gcSysKillProc=0	### used by Sbr_Sys_KillProc to enable/inhibit some subroutines. 
#! if [ ${gcSysKillProc} -eq 0 ] then do "enable" all GTK gui <button> DEV process, 
#! if [ ${gcSysKillProc} -eq 1 ] then do "stub kill" for some GTK gui <button> PRODUCTION process
#! ### gcSysKillProc #####################
#!
#! ************************************************************
#! E3R "basename" : E3R will run two paths ***
export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/" 
export gcRootAppsBin="/root/my-applications/bin/"
export gcRootApps="/root/my-applications/"  # Puppy Linux always paths to this. 
#! PET install not required, just place downloaded scripts in /root/my-applications.
#! *************************************************************************************
#!
export gcSysDistroName="${DISTRO_NAME}" 
export gcSysDistroVersion="${DISTRO_VERSION}"
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_Db_Subname="$DISTRO_DB_SUBNAME"
export gcSysDistro_DB_Subname="${DISTRO_DB_SUBNAME}"

export gcMgrAllArcDtsSN="MGR-All-Arc-Dts_"  # used by Sbr_BakOneArcDts  and Sbr_BakAllArcDts

#!  export gcE3rAllBakFlg="E3R-All-Bak-Flg"  # used by Sbr_E3rAllBak  Flag Name
#!
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#!
#! touch "/tmp/MGR_Page_Control.flg"
export MGR_Page_Control_flg="/tmp/MGR_Page_Control.flg"
#!
#(: ================================================
#! 
#! Data & Flag for Embedded Graphic Image ### backup and flag-file
export gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"	# Image Master 
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#!
#(: ==================================================
#(:  begin: 
#(:  example of regular function header 
#(:     Each regular "function" has a "header" that begins with label like this:
#(:     The #(: lines are exported, via TXN.sh to become "Program Documentation". 
#(:     Programmers can build a stand-alone summary of each Code Module .
#(:  function Sys() : Main Code Modules, which call "Sbr" .
#(:  function Sbr()  : Sub Modules , called by "Main Code Modules". 
#(: 
#(: ==================================================
#(: function Sbr()
#(:  name: unknown
#(: param:
#(: purpose:
#(:  @param
#(:  @return
#(: call this way:
#(: called by:
#(: calls to:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:
#(: # end:  example of regular "funxtion" label
#(: ==================================================
#(:
#! ################################################
#! end: Fall-Thru "initz" function 
#! ################################################
#!
#!
#!
#!
#(: ==================================================
#(: fx(Sbr_Splash_Banner)   # ACTIVE
#(: called by:  fx(FT_EXIT='CBXARS')
#(: param:
#(: purpose:
#(: calls:        Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" & sleep .5
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! ##################################################
function Sbr_Splash_Banner() {   # ACTIVE
	n=0
	/bin/echo -e "\\033[0G\\033[1;${3}*** \\033[1;${2} ${lcMsgStr} \\033[1;${3}***\\033[0;39m" 
} #
export -f Sbr_Splash_Banner
#!
#!
#!
#(: ==================================================
#(: fx(Sbr_Splash_Flip3)   # NOT ACTIVE
#(: called by: 
#(: param:
#(: purpose:
#(: calls:        Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" & sleep .5
#(: ---called-this-way------------------
#(:  Sys_Splash_Flip ${lcMsgStr}
#(:  kill ${GtkPidFlip1} 
#(:  kill ${GtkPidFlip2} 
#(:  kill ${GtkPidFlip3} 
#(: -----------------------------------------
#(: method:   Sbr_Splash_Flip3 ${string}
#(: sends:
#(: rationale:
#(: note : 
#(:
#:##################################################
function Sbr_Splash_Flip3() {   #: NOT ACTIVE
    n=0
    lcParam1="${1}"
#--- flipping colors ---red/yel---------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg red -bg yellow -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip1=$!	### kill splash
sleep .4
#--- flipping colors ---yel/blk-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip2=$!	### kill splash
sleep .4
#--- flipping colors ---yel/grn-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip3=$!	### kill splash
sleep .4
#-----------------------------------------------------------------------------------------------------
 } #
export -f Sbr_Splash_Flip3
#!
#!
#!
#!
#(: ==================================================
#(: fx(Sbr_Splash_It)
#(: param: msg string
#(: purpose:
#(: called by:  
#(: calls to :        
#(: method: Simple Splash : param "Str" "fg" "bg" "sleep" "opt"
#(: sends:
#(: rationale:
#(: note : 
    #(: ! Standard Splash routine:
    #(: !  Sbr_Splash_It "${lcMsgStr}:" "yellow" "purple" "3" 
    #(: ! working on default params.
    #(: ! param = "." will trigger a default value, sometimes 
    #(: !               " "  or "0" not allowed.  
    #(: !               ""   converts to 'sleep "1"'  which may be too fast. 
    #(: ! color: system, red, yellow, orange, green, blue, purple
    #(: !
    #(: ! working on default params.
    #(: ! param = "." will trigger a default value, sometimes 
    #(: !               " "  or "0" not allowed.  
    #(: !               ""   converts to 'sleep "0"'  
    #(: ! color: system, red, yellow, orange, green, blue, purple
    #(: ! <window dimensions must be hard-code.
    #!
#(:
#! ### Sbr_Splash_It ########################################
function Sbr_Splash_It() {   # Active # Simple Splash : param "Str" "fg" "bg" "sleep" "opt"
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
lcMsgSlp="$4"       # sleep  default is "1"
if [ ! $4 ] ; then  # Sleep 
    lcMsgSlp="1"  # < 1  usually does not make it to the screen, timing issues. 
fi    
    #! -D---
/usr/lib/gtkdialog/box_splash -fg ${lcMsgColorFg} -bg ${lcMsgColorBg} -border true  -close never -text "${lcMsgStr}     " &
    RETVAL=$?
	GTKPID_Cold_Splash=$!
	sleep ${lcMsgSlp}
    #
lcMsgOpt="$5"   # standard is do the kill 
if [ ! $5 ] ; then  # IF   No Option,  THEN   kill pid ( compatible / normal)
    kill ${GTKPID_Cold_Splash}
    #! if NOT flag, then KILL.   This is  Normal.
fi    
#!
} #
export -f Sbr_Splash_It
#!
#!
#!
#(: ==========================================================
#(: fx(Sbr_Str2DevTrm)  #  Preferred for Terminal display.
#(: last edit: 240218-0500   
#(: ==========================================================
#(: called by: everyone.  #  Preferred for Terminal display.
#(: param:
#(:      ## STRING message
#(:      ## COLOR name or number
#(:      ## MARGIN number 
#(:      ## Destination Display lcS2Topt
#(:
#(: purpose: Display "String" to DevConsole or Terminal
#(: calls:
#(: method: param : "char string" "# color" "# margin"
#(: sends:
#(: rationale:
#(: note :
#! ############################################################
function Sbr_Str2DevTrm() {   #: ACTIVE   #  Preferred for Terminal display.
#! # param:  "char string"  "color"  "margin" "Console-Terminal"
lcS2TStr=${1}   # ## STRING message
lcS2TClr=${2}   # ## COLOR name or number
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal # default to "T"erminal ###
#!
lcDevConsole=""	   # ${4} # default to "T"erminal ###
#!
case "${lcS2Topt}" in   #! TARGET 
   "C") lcDevConsole=" > /dev/console" ;;
   "T") lcDevConsole="" ;;
    *)  lcDevConsole="" ;;	#: default "T"erminal mode for use with Geany "T"erminal process.
esac
#!
case "${lcS2TMrg}" in   #! MARGIN
   0|"0") /bin/echo -n -e "\\033[0G"   ${lcDevConsole} ;;
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"  ${lcDevConsole} ;;
esac
#!
case "${lcS2TClr}" in   #!COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
    ""|"0")                                         /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default yellow
    "31"|"32"|"33"|"34"|"35"|"36"|"37"|"38"|"39")   /bin/echo -n -e "\\033[1;${lcS2TClr}m"   ${lcDevConsole} ;; 
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
esac
#! CLEAR Lingering Color setup
	/bin/echo -n "${lcS2TStr}"  ${lcDevConsole} 
	/bin/echo -e "\\033[0;m"  ${lcDevConsole} 
	return  0
#!
} #
export -f Sbr_Str2DevTrm
#!
#!
#!
#!
#! === _MB_ === VERT === top ================================
#! ## top ###  MB Multi-Button  P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! === _MB_ === VERT === top ================================
#!
#!
#! === _MB_ === VERT ===================================
function Sbr_MB_S2F1() {   #  called by Sbr_MB
    n=0
    export lcFlgGitHub="<STD>"
    export lcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
    lcRunCnt="1" 			# 2
    lcNiceNum="19" 		# 3
    #! Sbr_Splash_It "=== Sbr_MB_S2F1 === ${lcRunFile} ===" "yellow" "purple" "3"    #! -D---
    #
    #! need gtkdialog here, so to split the splash/kill        
lcMsgStr="-- Running  ${lcRunFile}  -- "
    #! -D---
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.   --- Running  Sbr_MB_S2F-${lcRunCnt}---    
.     "&
    RETVAL=$?
    GTKPID_MB_S2F_Init1=$!	# capture PID
    sleep 1
    #!
    Sbr_Sys_Sync   "1"   # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'     #! -D---
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "     --- Running  Sbr_MB_S2F-1---    "&
    RETVAL=$?
    GTKPID_MB_S2F_Init2=$!	# capture PID
    nice -n ${lcNiceNum} ${lcRunFile} /initrd/pup_ro1 /initrd/pup_rw
    #!
    sleep .1
    kill ${GTKPID_MB_S2F_Init2}
    kill ${GTKPID_MB_S2F_Init1}
    #!
    Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
} # 
export -f Sbr_MB_S2F1
#! === _MB_ === VERT ===================================
function Sbr_MB_s2f1() {
    n="0"
    Sbr_MB_S2F1
} #   
export -f Sbr_MB_s2f1
#!
#!
#!
#! === _MB_ === VERT ===================================
function Sbr_MB_S2F3() {    #   #  ACTIVE     #  called by Sbr_MB_ALL   
    n="0"
    Sbr_Sys_Sync   "1"   # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' 
    #!
	lcS2FstartCount="1"
    lcS2FwaitCount="1"
    lcS2FloopCount="3"
    lcGtkDialog="1"
    #!
    /bin/echo -en "\\033[0;39m"		>  /dev/console
    /bin/echo -en "\\033[60G"    >/dev/console
    /bin/echo -en "\\033[1;31m "    >/dev/console
    #!
        sleep .5
        n=0
        export lcFlgGitHub="<STD>"
        export lcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
        #! Sbr_Splash_It "=== Sbr_MB_S2F3 === ${lcRunFile} ===" "yellow" "purple" "3"    #! -D---
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"		### grave-mark in date() !!!
        lcSysNowDts01="`date +%y%m%d-%H%M-%S`" 		### allow visual timing of each cycle
        lcMsgStrTime="    --- Start Time --- ${lcSysNowDts00} "
        #! 
        #! -D---  Background is Stable
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
*!    MB-Vert-Save-2-Flash () : ${lcS2FDtsVer} 
*!             ${PSUBDIR}
*!             (${lcS2FloopCount}) loops
*!       ${lcMsgStrTime} 
*!
*!
*!
*!
*!
*!
*!
*!
*!      nice -> snapmergepuppy ${lcFlgGitHub}
*!                                                                        "&
            RETVAL=$?
            GTKPIDMAIN2=$!
            sleep 3 # ${lcS2FSleep}
            #! kill ${GTKPIDMAIN2} # test to clear lingering splash
          /bin/echo "- "
          /bin/echo "- "
          /bin/echo "- "
        #!
	WAITCNT="${lcS2FstartCount}"	# MGR-S2F-3 will Loop 1,2,3 times.
    while [ ${WAITCNT} -lt 4 ];do
		lcRunCnt="${WAITCNT}" 			# 2
		lcNiceNum="19" 					# 3
		lcFlgGitHub="${lcFlgGitHub}"	# 4
		#!
		lcMsgStr="-- Running Cnt:${lcRunCnt} -- Nice:${lcNiceNum} --"
        #! -D--- Foreground Action
		/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "$lcMsgStr" &
		GTKPIDRUNC=$!
        #!
		nice -n ${lcNiceNum} ${lcRunFile} /initrd/pup_ro1 /initrd/pup_rw
        #!
		sleep .5 # ${lcS2FSleep}
		kill $GTKPIDRUNC
		#!
		WAITCNT=`expr $WAITCNT + 1`		### count down to zero
		sleep .1
    done
    #! ## that's all.
   /bin/echo "- " >/dev/console
   /bin/echo " - " >/dev/console
   /bin/echo "  - " >/dev/console
   /bin/echo "   - " > /dev/console
    #!
	if [ "$lcGtkDialog" -eq "1" ] ; then
		sleep .1
		kill ${GTKPIDSMP}	# ## has lingered
		sleep .1
		kill ${GTKPIDMAIN2}	# ## has lingered
	fi #

        # head of shell error, PID does not clear from screen.
		kill ${GTKPIDSMP}	# ## has lingered
        kill ${GTKPIDMAIN2}	# ## has lingered
        kill ${GTKPIDMAIN2} # test this to clear lingering splash

	echo "<<< running Save2Flash ============================="
    #~ Sbr_Cbx_ReStart 1   # no wait
} # end 
export -f Sbr_MB_S2F3      #     called by Sbr_MB_s2f3   
#!
#! === _MB_ === VERT ===================================
function Sbr_MB_s2f3() {
    n="0"
    Sbr_MB_S2F3
}    
export -f Sbr_MB_s2f3
#!
#!
#!
#!
#!
#!
#! ==========================================================
#! ==========================================================
#! ==========================================================
#! ## begin: MenuMain_Echo   
#! ## MenuStandard  
#! ## Menu_Standard_Selection_Header
#! ==========================================================
#!
#(: ====================================================
#(: fx(Sbr_Menu_Standard_Selection_Header)    # MainMenu
#(: called by: Menu Echo Short and Long 
#(: param: 
#(: purpose: Standard Menu Options, both Short and Long 
#(: calls:
#(: method: standard "echo" 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'header' for long menu and short menu. 
#(: note : these "title Numbers" must match the Prep "if [ " for each "Puppy Distro" in list.
#!
#! method: echo Standard Main Menu Options into ""Short and "Long" Menu.lst file output. 
#! ########################################################
function Sbr_Menu_Standard_Selection_Header() {  # ACTIVE # Standard Menu Selection Header 
		echo "###  ${gcBootOsHd} ### echo Standard Main Menu Options ##########"
		echo "###################################{ Kinetic Kudu +D.22 } "
		echo "title  1 { K-K }-----UpupKK+D-22.  -------K:5--------------- \n Kinetic Kudu  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupKK-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupKK-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupKK-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:5  }"
		echo "title  2 {!!!_B5B_!!!}--<UpupBB-K5> ---Edit----K:5---FF--LO------  \n Bionic Beaver  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB5B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB5B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB5B-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Jammy Jellyfish +D+22.04 }"
		echo "title  3 { J-J }-----UpupJJ+D+22.04 L6 ---K:5--------------- \n Jazzy Jellyfish  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupJJ-SDA/vmlinuz  psubdir=/pup_UpupJJ-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupJJ-SDA/initrd.gz"
		echo "###################################{ S15pup64 Slacko"
        echo "title  4 { S1564 }---S15pup64-20.01 -----K:5---FF--LO------ \n  \n  \n"
        echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo "  kernel /pup_S15pup64-${gcBootOsHd}/vmlinuz    psubdir=/pup_S15pup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_S15pup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Mantic Minotaur }"
		echo "title  5 {!!!_uMM_!!!}_< UpupMM-23.11 > Mantic-Minotaur-L6-K:6 - \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupMM-SDA/vmlinuz    psubdir=/pup_UpupMM-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupMM-SDA/initrd.gz"
		echo "###################################{ Tahr-6.06}"
		echo "title  6 {!!!_T-6_!!!}----Tahr-6.06  -------------------------   \n Trusty Tahr  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupT6-SDA/vmlinuz    psubdir=/pup_UpupT6-SDA  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupT6-SDA/initrd.gz"
		echo "###################################{ Xenial-64-750}"
		echo "title  7 { X64 }-----Xenial-64-750  ------K:4---FF--LO----------  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX64-SDA/vmlinuz  psubdir=/pup_UpupX64-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupX64-SDA/initrd.gz"
		echo "###################################{ Mantic Minotaur }"
		echo "title  8 { DBW }-----DpupBW       Debian Book-Worm-K:6 ----- \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_DpupBW-SDA/vmlinuz    psubdir=/pup_DpupBW-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_DpupBW-SDA/initrd.gz"
        #!
		echo "###################################"
        #!
		echo "###################################{ SpupSlacko64 }"
		echo "title  9  { S-7 }----pup Slacko7+14.2 ----------------------  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_SpupS7-${gcBootOsHd}/vmlinuz    psubdir=/pup_SpupS7-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_SpupS7-${gcBootOsHd}/initrd.gz"
	    echo "# #####################################{ S15Slacko-64 }"
		echo "title 10 { S64 }-----SpupSlacko64  ------------- 64 ------- \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Spup64-${gcBootOsHd}/vmlinuz  psubdir=/pup_Spup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Spup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Impish Indri }"
		echo "title 11 { I-I }-------Upup-Impish-Indri ------------------------ \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupII-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupII-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupII-${gcBootOsHd}/initrd.gz"
        echo "###################################{ UpupFF+D08.20.12 Focal-Fossa }"
		echo "title 12 { F-F }------Focal-Fossa  -------FireFox-----------  \n Focal-Fossa  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupFF-SDA/vmlinuz    psubdir=/pup_UpupFF-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupFF-SDA/initrd.gz"
		echo "# #####################################{ XenialX7.08 }"
		echo "title 13 { X708}----Xenial-7.08  -------------------         \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX708-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupX708-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupX708-${gcBootOsHd}/initrd.gz"
		echo "# #######################{ Slacko-LxSc }"
		echo "title 14 { SLxSc }- Pup_Slacko-LxSc-20.01 --K:5.4--64--- \n SLxSc \n  \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Slacko-LxSc-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko-LxSc-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Slacko-LxSc-${gcBootOsHd}/initrd.gz"
		echo "# #####################################{ Quirky April 7 }"
		echo "title 15 { Quirky 7 }--- Quirky-7 ---beta--------------    \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Quirky-${gcBootOsHd}/vmlinuz    psubdir=/pup_Quirky-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Quirky-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:4  }"
		echo "title 16 { B4B }--- UpupBB-K:4  -----------------------    \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB4B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB4B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB4B-${gcBootOsHd}/initrd.gz"
} #  Any Other Puppy Distro Calls can be listed without Numbers. 
export -f Sbr_Menu_Standard_Selection_Header
		#! echo "# ### Devuan Not Ready for Prime Time ###########{ pup_Devuan }"
		#! echo "title  17 { Devuan X }--- pup_Devuan-SDA   -------- \n   \n   \n"
		#! echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		#! echo "  kernel /pup_Devuan-${gcBootOsHd}/vmlinuz    psubdir=/pup_Devuan-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		#! echo "  initrd /pup_Devuan-${gcBootOsHd}/initrd.gz"
#!
#! ====================================================
#! ## end: Menu_Main_Echo   
#! ====================================================
#!
#!
#! ====================================================
#! ## begin: Menu_Long_List  
#! ====================================================
#(: ====================================================
#(: fx(Sbr_MenuLongList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Long format. 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ##############################################################
function Sbr_MenuLongList() {  # ACTIVE # Standard Menu Long List 
    n=0
    #! initz was done by caller 
    #! Build Long Menu parameters 
    #!
	#! Main Menu Long with two color schemes: ARB_ORGCBYR ARB_ORGGBYR
    lcOsSubDef="0"   # "Original" Main Menu Long ALWAYS DEFAULTS to "0"  "MainMenu" "MenuLong"
    lcOsSubId="ORG"
    gcC3MOsSubId="{SDA}"
    gcMgrArCfgIdd="ORG"
    lcOsSubDir="Main"
    #~ export lcOsSubFn="/mnt/home/menu-orig.lst"  # NOT USED 
    export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
    export lcOsSubSplClr="red"
    export lcOsSubTout="120"	# very long wait , then default = ?
	#!
    # color NORMAL            HIGHLIGHT       HELPTEXT       HEADING
    #       f/b               f/b              f/b           f/b
    # color green/black   yellow/red       cyan/black    light-blue/black
    # color cyan/black    yellow/red       cyan/black    light-blue/black
    #! 
    lcOsSubSplClrStr="color cyan/black   yellow/red       cyan/black    light-blue/black"
    #! Short Menu :  "color cyan/black   yellow/red       cyan/black    light-blue/black"
    lcOsSubSplClrID="bg=green/Black fg=yellow/red"
    lcOsSubSplClrIfg="yellow"
    lcOsSubSplClrIbg="blue"	
	#!
    #! -D-----
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.  ${lcOsSubSplClrID}
.  ${EXIT} = menu.lst ${gcC3MOsSubId}
.       
. 	                                    "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
        #! =============================================================
        (
        echo "#!/bin/bash"
        echo "#=========================================="
        echo "# OS=${lcOsSubId} : Menu System LONG"
        echo "# DTS=${gcSysDts} : date generated"
        echo "# DTS=${gcSysDevDob} : date generated"
        echo "#======================================================"
        echo "# menu.lst Long Menu "
        echo "# menu-orig.lst is the standard "original" full menu.lst "
        echo "# MARK-${gcBootOsHd}  Main SDA HardDrive 500G / 2"
        echo "#======================================================"
        echo "# Long Menu is a Build by 'MGR'"
        echo "# written by rc.z_MGR.sh & rc.z_C3M.sh"
        echo "#    insert user selected OS parameters"
        echo "#    compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
        echo "#    ${gcSysDevDob} Glen Ellis"
        echo "#======================================================"
        echo "### produced by grub4dosconfig-v1.9.3"
        echo "#"
        echo "### Windows MBR is still installed in the MBR of /dev/${gcBootOsHd}"
        echo "### M$ MBR calls a faux /ntldr , which contains /grldr code"
		echo "# Default colors , bg is black  , letters yellow on red "
		echo "# color NORMAL            HIGHLIGHT       HELPTEXT       HEADING"
		echo "#       f/b               f/b              f/b           f/b"
		echo "# color green/black   yellow/red       cyan/black    light-blue/black"
		echo "# color cyan/black    yellow/red       cyan/black    light-blue/black"
		echo "# graphicsmode -1 800 600"
		echo " "
		echo "color ${lcOsSubSplClrStr}"
		echo " # splashimage=/boot/grub/xpm-c-drkred.xpm"
		echo " # splashimage=/boot/grub/xpm-c-red.xpm"
        echo "timeout ${lcOsSubTout}"
		echo "default ${lcOsSubDef}"
	echo "###################################{ Menu with Wait }"
	echo "title  0 { ${gcBootOsHd} } --- Long Menu --- { ${gcBootOsHd} } -------"
	echo "  # configfile /menu.lst"
	echo "  #find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  #kernel /pup_UpupBB-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupBB-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  #initrd /pup_UpupBB-${gcBootOsHd}/initrd.gz"
	echo "  root (hd0,0)"
	Sbr_Menu_Standard_Selection_Header # function  #  LONG Standard Selection Header 
	echo "###################################"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	# ##########################################################{ FIT }"
	echo "	title  { SDA }--------------- "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-SDA "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { KLM1 }- "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT64 }- Lenovo "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT16A }-  " "\_"
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A "
	echo "	  configfile /menu.lst "
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT16B }-  " "\_"
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B "
	echo "	  configfile /menu.lst "
	echo "	# ##########################################################{ FIT }"
	echo "# ############################################################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "##################################### "
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "# #######################################################"
	echo "title ==={ P-M }  Any Parted-Magic }---"
	echo "	lock"
	echo "	find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
	echo "	kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
	echo "	initrd  /pmagic/initramfs"
	echo "# #######################################################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
	echo "title  Six More Puppy OS below:  " "\_"
	echo "root (hd0,0)"
	echo "#______________________________________"
	echo "title   " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "title === Visible UTL ========================================="
	echo "	root (hd0,0)"
	echo "title Help - Boot Params"
	echo "  configfile /menu_phelp.lst"
	echo "title Boot Partition Sector first hard drive (hd0,0)"
	echo "  root (hd0,0)"
	echo "  # chainloader +1 || chainloader /grldr"
	echo "  chainloader +1 || chainloader /wxldr"
	echo "  # chainloader +1 || chainloader /bootmgr"
	echo "#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
	echo "title    "
	echo "root (hd0,0)"
	echo "# #######################################################"
	echo "  "
	echo "title >>> ${gcBootOsHd} >>> menu-Boot-NamedDrive.lst ==="
	echo "    find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "	configfile /menu-Boot-NamedDrive.lst"
	echo " "
	echo "title >>> ${gcBootOsHd} >>> menu-Boot-ChainLoader.lst ==="
	echo "    find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "	configfile /menu-Boot-ChainLoader.lst"
	echo " "
	echo "title >>> ${gcBootOsHd} >>> Advanced menu"
	echo "		find --set-root  --ignore-floppies --ignore-cd  /MARK-${gcBootOsHd}  "
	echo "	configfile /menu-advanced.lst"
	echo "	  commandline"
	echo "# #######################################################"
	echo " "
	echo "title    *** Grub4Dos commandline *** "
	echo "  commandline"
	echo " "
	echo "title    *** Absolute 'HALT' to computer *** "
	echo "  halt"
	echo " "
	echo "title    *** Re-BOOT command *** "
	echo "  reboot"
	echo "            "
	echo "# ########################################################"
	echo "title   { 'SDA' }---{ set-root to self SDA }-------------"
	echo "	find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
	echo "	configfile /menu.lst 	"
	echo "# ############################################################"
	echo "# *"
	echo "# ##############################################################"
	echo "title  0 find Any Menu.lst ---> {SDA} {KLM1} {FIT64} {FIT16A} {FIT16B} -------"
	echo " errorcheck off"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-SDA && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B && configfile /menu.lst"
	echo " errorcheck on"
	echo " root (hd0,0)"
	echo "# ############################################################"
	echo "# ****************************************************************************"
	echo "# In itself ...  Godly Living is a benefit without consequence. "
	echo "# I can hear God laughing at us, and saying, "
	echo "# 'I gave you one law and you made ten, then a hundred, then a thousand  '"
	echo "# 'I gave you my soul to live a good life, and you play parlor games. '"
	echo "# 'I gave you my NAME    and now   you want a !sign! that I AM  ? ' "  
	echo "# ****************************************************************************"
	echo "# ### END Long menu.lst ######################################"
	) > /mnt/home/menu.lst
    #!
	kill ${GtkPid_Mnu_Box_Splash}
    #!
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
    echo "${gcMgrArCfgIdd}" > "${gcMgrArbCfgFn}"  # config of menu
    #! -D---
/usr/lib/gtkdialog/box_splash -fg cyan -bg darkred -border true  -close never -text "\
.   Install 'Original' Menu.lst:
.         ( DONE )
. ${EXIT} = menu.lst ${gcMgrArCfgIdd} 
.     
. 					                "&
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
		kill ${GtkPid_Mnu_Box_Splash} # after return
		#
        #=============== now
        Sbr_Cbx_ReStart  "1"
        #=============== now
    #
} #
export Sbr_MenuLongList
#
#! ===========================================================
#! ## end: Menu_Long_List   ############################################
#! ===========================================================
#!
#!
#!
#! ===========================================================
#! ## begin: Menu_Short_List   ##########################################
#! ===========================================================
#!
#(: ===========================================================
#(: fx(Sbr_MenuShortList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Short format. 
#(: receives param:
#(: returns:
#(: note:
#(:
#! #################################################################
function Sbr_MenuShortList() {  # ACTIVE # Standard Menu Short List
        #! initz was done by caller 
        #! Sbr_MenuShortList sends parameters to trigger one specific OS. 
        #!
       #! declare Preset Var. 
		lcOsSubClrBase="/boot/grub"	# 'base' allows easy change of "menu.lst" background colors
		lcOsSubTout="32"    # Menu.lst long "Time-Out" for default "menu.lst" selection.
		#! Short Menu.lst is for PreSet Menu.lst.  Each Called OS must have param and Default "Position" value. 
		#! ======================================================================
		#! function EXIT:ARB_00 # short menu.lst   #  Not Called 
		if [ "$EXIT" = "ARB_00" ] ; then    # EXIT:ARB_00 # short 4 option menu of major OS.
                        lcOsSubDef="0"   # "00" default position-selection in "menu.lst"  
                        lcOsSubId="ARB"
                        gcMgrArCfgIdd="ARB_00"
                        lcOsSubDir="Main-00-Generic-SDA" 
                        lcOsSubFn="/mnt/home/menu.lst00"   # Not Used for "00" 
                        lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
                        lcOsSubSplClrBg="red"
                        lcOsSubTout="96"   # very long wait time
		fi
		#! ======================================================================
		#! function EXIT:ARB_KK # short menu.lst
		if [ "$EXIT" = "ARB_KK" ] ; then
			lcOsSubDef="1"   # default position-selection
			lcOsSubId="KK"
			gcMgrArCfgIdd="Upup-Kenitic-Kudo"
			lcOsSubDir="pup_UpupKK-SDA"
			lcOsSubFn="/mnt/home/menu.lstKK"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_B5B # short menu.lst
		if [ "$EXIT" = "ARB_B5B" ] ; then
			lcOsSubDef="2"   # default position-selection
			lcOsSubId="B5B"
			gcMgrArCfgIdd="Upup-Bionic-Beaver-K5"
			lcOsSubDir="pup_UpupB5B-SDA"
			lcOsSubFn="/mnt/home/menu.lstB5B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="brown"   # "brown" is 8B6914 is "darkred"
			lcOsSubSplClrBg="yellow" 
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_JJ # short menu.lst
		if [ "$EXIT" = "ARB_JJ" ] ; then
			lcOsSubDef="3"  # default position-selection
			lcOsSubId="JJ" 
			gcMgrArCfgIdd="Upup-Jazzy-Jellyfish-K5" # subdir ID
			lcOsSubDir="pup_UpupJJ-SDA"  # /subdir-label
			lcOsSubFn="/mnt/home/menu.lstJJ"    
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-pur.xpm"  # image-background
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="purple"   # image name
			lcOsSubTout="12"    # menu timeout
		fi
		#! ======================================================================
		#! function EXIT:ARB_S1564 # short menu.lst
		if [ "$EXIT" = "ARB_S1564" ] ; then
			lcOsSubDef="4"
			lcOsSubId="S15pupS64"
			gcMgrArCfgIdd="Slacko-S15-S64-K5"
			lcOsSubDir="pup_S15pup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstS1564-"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
 		#! ======================================================================
		#! function EXIT:ARB_MM # short menu.lst
		if [ "$EXIT" = "ARB_UMM" ] ; then
			lcOsSubDef="5"   # default position-selection
			lcOsSubId="MM"
			gcMgrArCfgIdd="Mantic-Minotaur"
			lcOsSubDir="pup_UpupMM-SDA"
			lcOsSubFn="/mnt/home/menu.lstManticMinotaur"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="blue"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_T6 # short menu.lst
		if [ "$EXIT" = "ARB_T6" ] ; then
			lcOsSubDef="6"
            lcOsSubId="T6"
			gcMgrArCfgIdd="Tahr"
			lcOsSubDir="pup_UpupT6-SDA"
			lcOsSubFn="/mnt/home/menu.lstT6"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_X64 # short menu.lst
		if [ "$EXIT" = "ARB_X64" ] ; then
			lcOsSubDef="7"   # default position-selection
			lcOsSubId="X64"
			gcMgrArCfgIdd="Upup-Xenial64"
			lcOsSubDir="pup_UpupX64-SDA"
			lcOsSubFn="/mnt/home/menu.lstX64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_DBW # short menu.lst
		if [ "$EXIT" = "ARB_DBW" ] ; then
			lcOsSubDef="8"   # default position-selection
			lcOsSubId="BW"
			gcMgrArCfgIdd="BookWormDeb"
			lcOsSubDir="pup_DpupBW-SDA"
			lcOsSubFn="/mnt/home/menu.lstDpupBW"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="orange"
			lcOsSubSplClrBg="blue"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! ======================================================================
		#! ======================================================================

		#! ======================================================================
		#! ======================================================================
		#! function EXIT:ARB_S7 # short menu.lst
		if [ "$EXIT" = "ARB_S7" ] ; then
			lcOsSubDef=" 9"   # default position-selection
			lcOsSubId="S7"
			gcMgrArCfgIdd="S-7"
			lcOsSubDir="pup_SpupS7-SDA"
			lcOsSubFn="/mnt/home/menu.lstS7"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_UIMP # short menu.lst
		if [ "$EXIT" = "ARB_UIMP" ] ; then
			lcOsSubDef="10"   # default position-selection
			lcOsSubId="UIMP"
			gcMgrArCfgIdd="UIMP"
			lcOsSubDir="pup_UpupII-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! function EXIT:ARB_S64 # short menu.lst
		if [ "$EXIT" = "ARB_S64" ] ; then
			lcOsSubDef="11"   # default position-selection
			lcOsSubId="S64"
			gcMgrArCfgIdd="S64"
			lcOsSubDir="pup_Spup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstSlacko64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_FF # short menu.lst
		if [ "$EXIT" = "ARB_FF" ] ; then
			lcOsSubDef="12"   # default position-selection
			lcOsSubId="FF"
			gcMgrArCfgIdd="F-F"
			lcOsSubDir="pup_UpupFF-SDA"
			lcOsSubFn="/mnt/home/menu.lstFF"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_X708 # short menu.lst
		if [ "$EXIT" = "ARB_X708" ] ; then
			lcOsSubDef="13"
            lcOsSubId="X708"
			gcMgrArCfgIdd="X708"
			lcOsSubDir="pup_UpupX708-SDA"
			lcOsSubFn="/mnt/home/menu.lstX708"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_SLXSC # short menu.lst K=4
		if [ "$EXIT" = "ARB_SLXSC" ] ; then
			lcOsSubDef="14"
			lcOsSubId="SLXSC"
			gcMgrArCfgIdd="SLXSC"
			lcOsSubDir="pup_Slacko-LxSc-SDA"
			lcOsSubFn="/mnt/home/menu.lstSLXSC"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_Q7 # short menu.lst
		if [ "$EXIT" = "ARB_Q7" ] ; then
			lcOsSubDef="15" 
			lcOsSubId="Quirky7"
			gcMgrArCfgIdd="Quicky7"
			lcOsSubDir="pup_Quirky-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_B4B # short menu.lst
		if [ "$EXIT" = "ARB_B4B" ] ; then
			lcOsSubDef="16"   # default position-selection
			lcOsSubId="B4B"
			gcMgrArCfgIdd="Upup-Bionic-Beaver"
			lcOsSubDir="pup_UpupBB-SDA"
			lcOsSubFn="/mnt/home/menu.lstB4B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="brown" # "brown" is 8B6914 is "darkred"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function [EXIT:ARB_DV] # short menu.lst  # Not Ready for Prime Time 
		#! if [ "$EXIT" = "ARB_DV" ] ; then
		#! 	lcOsSubDef="17" 
		#! 	lcOsSubId="Devuan"
		#! 	gcMgrArCfgIdd="Devuan"
		#! 	lcOsSubDir="ppup_Devuan-SDA"
		#! 	lcOsSubFn="/mnt/home/menu.lstDevual"
		#! 	lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
		#! 	lcOsSubSplClrFg="red"
		#! 	lcOsSubSplClrBg="orange"
		#! 	lcOsSubTout="120"
		#! fi

		#! =======================================================
		#! function [EXIT:ARB_ShortMenu() { ; n=0 ; } # based on "C3M"
		#! config via Sys_Pup_State:  gcMgrArbCfgFn="/root/my-applications/bin/C3M_Config_Arb"
		echo "${lcOsSubId}" > "${gcMgrArbCfgFn}" # gcMgrArCfgIdd
    #! -D---
	/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrFg} -bg ${lcOsSubSplClrBg} -border true -close never -text "\
	.
	.  Install  Menu.lst     
	.  ${gcMgrArCfgIdd}     
	.           
	.					                     "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
        # Fall Thru 
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
		#=== begin menu short code =====================================
		#(: =====================================================
		#(: === SHORT MENU === shortmenu === menu short === MenuShort === function ===
		#(:  SHORT MENU is a Build by 'MGR'"
		#(:  'ID = '${gcMgrArCfgIdd}'"
		#(:  "# used by rc.z_MGR.sh "
		#(:  insert user selected OS parameters"
		#(:  allow default forground/background colors"
        #(: ## Short: note peculiar end-of-line comments 
        #(: ## Short: extra quotes may cause fault  
		#( ======================================================"
    #! color NORMAL            HIGHLIGHT       HELPTEXT       HEADING
    #!       f/b               f/b              f/b           f/b
    #! color green/black   yellow/red       cyan/black    light-blue/black
    #! color cyan/black    yellow/red       cyan/black    light-blue/black
    lcOsSubSplClrStr="color green/black  yellow/red       cyan/black    light-blue/black"
    #! Short Menu :   "color cyan/black   yellow/red       cyan/black    light-blue/black"
        #! lcOsSubSplClrID="bg=green/Black fg=yellow/red"
        #! lcOsSubSplClrIfg="black"
        #! lcOsSubSplClrIbg="yellow"	
        #!
 		#! =======================================================
 		(
		echo "#!/bin/bash"
		echo "#=========================================="
		echo "# OS=${lcOsSubId} : Menu System SHORT "
		echo "# DTS=${gcSysDts} : date generated"
		echo "# DTS=${gcSysDevDob} : date generated"
		echo "#=========================================="
		echo "#  compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
		echo "#  ShortMenu"	
        echo "#  ${gcSysDevDob}"
		echo "#=========================================="
		echo "# Default colors , bg is black  , letters yellow on red "
		echo "# color NORMAL            HIGHLIGHT     HELPTEXT      HEADING"
		echo "#       f/b               f/b           f/b           f/b"
		echo "# color green/black     yellow/red     cyan/black    light-blue/black"
		echo "# color cyan/black      yellow/red     cyan/black    light-blue/black"
		echo "# color light-gray/black yellow/red cyan/black light-blue/black"
		echo "color cyan/black yellow/red cyan/black light-blue/black"
		echo "graphicsmode  -1 800 600"
		echo "timeout ${lcOsSubTout}"
		echo "default ${lcOsSubDef}"
		echo "###################################{ Menu with Wait }"
		echo "title  0 { '${gcBootOsHd}' '00' Short Menu }-----${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
		echo "  root (hd0,0)"
		Sbr_Menu_Standard_Selection_Header # function  # SHORT Standard Selection Header 
		echo "###################################{ FIT }"
		echo "title   { SDA }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-SDA1"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { KLM1 Metal }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM1"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT64}- " " \_"
		echo "find --set-root --ignore-floppies --ignore-cd /MARK-FIT64"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT16A }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT16B }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "# #######################################################"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "#######################################################"
		echo "title === G4D => Boot KNOPPIX  #3 partition (hd3,0) ---> ? "
		echo "  root (hd3,0)"
		echo "  chainloader +1 || chainloader /grldr "
		echo "# #######################################################"
		echo "title     " " \_"
		echo "root (hd0,0)"
		echo "# #######################################################"
		echo "title ==={ P-M }  Any Parted-Magic }---"
		echo "	lock"
		echo "	find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
		echo "	kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
		echo "	initrd  /pmagic/initramfs"
		echo "# #######################################################"
		echo "title >>> SDA >>> menu-Boot-NamedDrive.lst ==="
		echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
		echo "	configfile /menu-Boot-NamedDrive.lst"
		echo " "
		echo "title >>> SDA >>> menu-Boot-ChainLoader.lst ==="
		echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
		echo "	configfile /menu-Boot-ChainLoader.lst"
		echo " "
		echo "title >>> SDA >>> Advanced menu ==="
		echo "	  find --set-root  --ignore-floppies --ignore-cd  /MARK-SDA  "
		echo "	  configfile /menu-advanced.lst"
		echo "	  commandline"
		echo "# #######################################################"
		echo " "
		echo "title    *** Help *** " "\_"
		echo "  help"
		echo " "
		echo "title    *** Grub4Dos commandline *** " "\_"
		echo "  commandline"
		echo " "
		echo "title    *** Halt computer ***  \_ ( for experts only )"
		echo "  halt"
		echo " "
		echo "title    *** Re-BOOT command *** "  "\_"
		echo "  reboot"
		echo "# ##############################################################{ Menu with Wait }"
		echo "title  0 find ANY menu.lst ---> {SDA} {KLM1} {KLM2} {FIT64} {FIT16A} {FIT16B} -------"
		echo " errorcheck off"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-SDA && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B && configfile /menu.lst"
		echo " errorcheck on"
		echo " root (hd0,0)"
        echo "# ****************************************************************************"
        #~ echo "# In itself ...  Godly Living is a benefit without consequence. "
        #~ echo "# I can hear God laughing at us, and saying, "
        #~ echo "# 'I gave you one law and you made ten, then a hundered, then a thousand  "
        #~ echo "# I gave you my soul to live a good life, and you play parlor games. "
        #~ echo "# I gave you my NAME    and now   you want a 'sign' that I AM  ? ' "  
        #~ echo "# ****************************************************************************"
        echo "# #######################################################"
		) > /mnt/home/menu.lst   #   "title  0{ 'C3M' '00'  Short Menu }---SDA"
        #!
		sleep 3
		kill ${GtkPid_Mnu_Box_Splash}
		chmod +x "/mnt/home/menu.lst"
		#!
		export gcE3Rcontrol=${EXIT}	# maintain this value
		#!
       n=0
        Sbr_Cbx_ReStart "1" 
        #!
} #
export -f Sbr_MenuShortList
#!
#! ====================================================
#! ## end: Menu_Short_List   ####################################
#! ====================================================
#!
#!
#!
#!
#!
#! #######################################################
#! BEGIN:     Embedded_Graphic_Images   "EmGr"
#! reference: rc.z_CDW_Embedded_Graphic_Images.sh
#! #######################################################
#!
#!
#(: ====================================================
#(: fx(Sbr_CDW_Embedded_Dialog_Colors)	#: Active Marker
#(: called by: 4764
#(: purpose: 
#(: receives param:
#(: returns:
#(: note:
#(:
#! #########################################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # ACTIVE # setup color constants during main ( )
    n=0
    lcDialogColorOrig="  -fg yellow -bg darkred  "	# original
    lcDialogFgDrkRed=" -fg darkred "
    lcDialogFgYel=" -fg yellow "
    lcDialogFgBlk=" -fg black "
    lcDialogBgDrkRed=" -fg darkred "
    lcDialogBgBlu=" -bg blue "
    lcDialogBgGrn=" -bg green "
    lcDialogBgYel=" -bg yellow "
    lcDialogBgBlk=" -fg black "
} #
export -f Sbr_CDW_Embedded_Dialog_Colors
#!
#!
#!
#(: ============================================================
#(: fx(Sbr_CDW_EGI_Long)	#: Active
#(: called by: Check-If
#(: purpose: (MGR) CDW EGI Long FORM
#(: receives param:
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_CDW_EGI_Long() { # ACTIVE #  CDW EGI Long Images 
#!
#! # Title "gcEmGaImgFnTrgTxtMaster" declared/assigned in Header. 
lcEmGrImg="=== ${gcEmGaImgFnTrgTxtMaster} ==="   # Title for each Gui section.
touch ${gcEmGaImgFnTrgTxtMaster}   
echo "### EmGrImg Master File ### $lcEmGrImg" > ${gcEmGaImgFnTrgTxtMaster}
#!
#! ##########################################################################
n=0
#!
#! ##########################################################################
				#! ###########################################################
				#! begin:   HASH   
				#! ###########################################################
				#!
				#! 1 "EmGr"### HASH-GRN ########################################################
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				lcEmGrImgSrc="/tmp/EmGr-img-hash-grn.xpm" ### fake green-PURPLE # major upper-left Image
                echo "hash-grn.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '
				/* XPM */
				static char *hash_xpm[] = {
				"32 32 5 1",
				" 	c none",
				"1	c #00FF00",
				"2	c #FFFFFF",
				"3	c #2222FF",
				"4	c #907072",
				"                                ",
				"                                ",
				"       111        111           ",
				"       12133      12133         ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       12133      121334        ",
				"       12133      121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       111334     111334        ",
				"        33334      33334        ",
				"        33334      33334        ",
				"                                "
				};
				' > ${lcEmGrImgSrc}   # /tmp to be inserted into <button>
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
				#!
				#! 2 "EmGr"### HASH-RED ########################################################
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				lcEmGrImgSrc="/tmp/EmGr-img-hash-red.xpm" ### fake green-RED # major upper-left Image
                echo "hash-red.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '
				/* XPM */
				static char *hash_xpm[] = {
				"32 32 5 1",
				" 	c none",
				"1	c #FF0000",
				"2	c #FFFFFF",
				"3	c #2222FF",
				"4	c #907072",
				"                                ",
				"                                ",
				"       111        111           ",
				"       12133      12133         ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       12133      121334        ",
				"       12133      121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       111334     111334        ",
				"        33334      33334        ",
				"        33334      33334        ",
				"                                "
				};
				' > ${lcEmGrImgSrc}   # /tmp to be inserted into <button>
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
				#!
				#!
				#!
				#! ############################################################
				#! begin:    APPLE
				#! ############################################################
				#!
				#! 2 "EmGr"############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#BB2222; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 2 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#1111FF; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 3 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 4 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#33DD33; stroke:#BE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! #############################################################
				#!
				#!
				#! #############################################################
				#! begin:    QUIT
				#! #############################################################
				#!
				#! 5 "EmGr"#############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-rednnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-rednnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#FF1111;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 6 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-grnnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-grnnnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#33FF33;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 7 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-yelnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-yelnnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#FFFF00;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! ###########################################################
				#! begin:   JUG
				#! ###########################################################
				#!
				#! 8 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-bluxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-bluxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				 <g style="fill:yellow;stroke:blue;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
				 <path d="m 35,35,35,35"/>
				 <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				 </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
                #! 80 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-blu0yel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-blu0yel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:yellow;stroke:blue;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="M 16,20 C -3,48 16,90 51,90 79,90 89,67 90,52 91,37 85,26 83,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 9 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxorange.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-grnxorange.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:orange;stroke:green;stroke-width:21px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 31,31,31,31"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 10 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 11 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-red0yel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-red0yel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:14px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 50,5 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 55,5"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen

				#!
				#! 12 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:green; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 13 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-grnxred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:red; stroke:green; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 14 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 15 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:blue; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! ############################################################
				#! begin: CHECK  
				#! ############################################################
				#!
				#! 16 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57   47,23 55,18 42,16 13,01      57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 16 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 17 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 17 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:yellow;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 18 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 18 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:yellow;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!


				#! 19 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 19 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:blu;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 20 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 20 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!


				#! 21 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 21 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 22 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 23 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#00FF00;fill-opacity:1.3;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 24 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:#888800;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 25 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#0000FF;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! #################################################################
				#! begin: Check-Mark  colorcolor is larger
				#! #################################################################
				#!
				#! 26 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#FF1111;fill-opacity:0.8;stroke:#FF0000;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 27 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grngrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grngrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#01FF01;fill-opacity:0.8;stroke:#00FF00;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 28 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:yellow;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 29 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-blublu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-blublu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#0101FF;fill-opacity:0.8;stroke:#0101FF;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				echo "### end ###" >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
} # end:
export -f Sbr_CDW_EGI_Long			
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#! end: Sbr_CDW_EGI_Long     Sbr_CDW_Embedded_Graphic_Images
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#!
#!
#!#############################################################################
#(: ============================================================
#(: fx(Sbr_CDW_EGI_CheckIF)	#: Active
#(: called by: main ( ) , Check-If
#(:  purpose: CheckIF:  if Master-IMG.txt Images are in /tmp  , then do not write again, else write files.
#(: receives param:
#(: returns:
#(: note:
#(:  lcMasterTrgImgTxtExt="IMG.txt"
#(: master IMG.txt file, for "dump" 
#(: gcMgrMasterSubDir basename is declared/assigned in top of code, line 41 .
#(: export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGr name rises to top of EmGr list
#(: 
#(: using Master_IMG.txt file as the flag  
#(: export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGa name rises to top of EmGr list
#(: export gcMgrMasterSubDir="/root/myapplications/bin-"
#(:
#(: E3R copies /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CDW/rc.z_CDW_Embedded_Graphic_images.sh
#(: to /applications/bin/My_Dev_/Edit_CDW/rc.z_CDW-EGI.sh
#(: /root/my-applicaions/bin/rc.z_CDW_EGI.sh 
#(: 
#(: todo: 240115 process will ALWAYS call for LONG Image format. 
#(: therefore: cull all references to SHORT Image format files.
#(:
#! ##############################################################################
function Sbr_CDW_EGI_CheckIF() {   # ACTIVE # main () # Install Long Image format.
	n=0
    #!
    #! Sbr_Splash_It " "---  Sbr_CDW_EGI_Long ---" " "orange" "purple" "1"    # -D--- Sbr_CDW_EGI_Long
    #!
	if [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# IF not ImgMaster , then build EGI files in /tmp
				n=0   
 				Sbr_CDW_EGI_Long   # CheckIF   will write IMAGE Long files DIRECTLY, now. 
    else
                n=0
 	fi # end: [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build ALL Image files in /tmp
	#!
} # end:
export -f Sbr_CDW_EGI_CheckIF
#!
#!
#!
#!
#! #######################################################
#! BEGIN:     Msg_Windows
#! #######################################################
#!
#! #######################################################
function Sbr_CDW_Msg_Windows_code() { # ACTIVE   # MARKER
	n="marker"
} #
export -f Sbr_CDW_Msg_Windows_code
#!
#! ############################################################
#! BACK-UP Copy of Working Messaage Window
#! window DC_NoShow /tmp/EmGr-img-jug-red0yel.svg  # ACTIVE
#! msg_DC_Quick_window='
#! <window  	
#!     window-position="1"
#!     visible="1">
#! 	<frame>
#! 		<hbox>
#! 			<button> <label>""  </label>
#! 				<input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>46></height> <width>46</width>
#! 				<action function="closewindow">msg_DC_Quick_window</action>
#! 			</button>
#! 		</hbox>
#! 	</frame>
#! 	<variable>msg_DC_Quick_window</variable>
#! </window>'
#! export msg_DC_Quick_window # Small, preferred button msg window 
#!
#! ############################################################
#! window DC_NoShow /tmp/EmGr-img-jug-red0yel.svg  # ACTIVE
msg_DC_Quick_window='
<window  	
    title="msg_DC_Quick_window"
    window-position="1"
    visible="1">
	<frame>
		<hbox>
			<button> <label>""  </label>
				<input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>46></height> <width>46</width>
				<action function="closewindow">msg_DC_Quick_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_Quick_window</variable>
</window>'
export msg_DC_Quick_window # Small, preferred button msg window 
#!
#!
#! ############################################################
#! window DC_0 # hash red for CBX
msg_DC_0_window='
<window title="msg_DC_0_window"
    title="msg_DC_0_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>" "</label>
				<input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_0_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_0_window</variable>
</window>'
export msg_DC_0_window
#!
#!
#! ############################################################
#! window DC_ReStart_0 
msg_DC_ReStart_0_window='
<window title="msg_DC_ReStart_0_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>"Clear the ReStart Set-Up NOW  !  "</label>
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReStart_0_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_ReStart_0_window</variable>
</window>'
export msg_DC_ReStart_0_window
#!
#! ############################################################
#! window DC_PrgQuit 
msg_DC_PrgQuit_window='
<window title="msg_DC_PrgQuit_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>"Clear the Program Quit Set-Up NOW  !  "</label>
				<input file>"/tmp/EmGr-img-quit-rednnn.svg"</input><height>36></height> <width>36</width>
				<action function="closewindow">msg_DC_PrgQuit_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_PrgQuit_window</variable>
</window>'
export msg_DC_PrgQuit_window
#!
#!
#!
#! ############################################################
#! window DC_ReMenu /tmp/EmGr-img-EmGr-hash-red.xpm   S2F , E3R+CTB+ReStart
export gcMsgWindowReMenu1="The ReMenu function is active now ! "
export gcMsgWindowReMenu2="Will Build a Generic Menu.lst ! "
export gcMsgWindowReMenu3="Click the ReMenu Button again ! "
#!
msg_DC_ReMenu_window='
<window title="msg_Chk_ReMenu_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${gcMsgWindowReMenu1}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowReMenu2}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcMsgWindowReMenu3}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_ReMenu_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_ReMenu_window</variable>
</window>'
export msg_DC_ReMenu_window
#! ############################################################
#!
#! ############################################################
export gcMsgWindowCBX="--- Combo-Box-Set -------------------- 
CBXC3C * Clear Caches ! 
   will clear some browser aux storage 
   which browsers rebuild on each run. 
   Vars float. 
CBXS2F * Snap-Merge-Puppy !  
   will run several loops to clear 
   internal non-fatal error flags.
   Vars float.    
CBXCTU * Cold-Tar.Gz.-Backup*  
   writes BackUp file to OS local ! 
   runs CTU Utility version 
   will NOT run SMP 
   CTU has NO GUI 
   Vars float.  
#---------------"
#! ############################################################
msg_DC_CBX_window='
<window title="msg_DC_CBX_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcMsgWindowCBX}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_CBX_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_CBX_window</variable>
</window>'
export msg_DC_CBX_window
#! ############################################################
#!
#! ############################################################
export gcMsgWindowREM="> Build Generic Menu.lst 
 > Manual _1-of-20_PuppyOS__menu.lst_ Options.   "
#! ############################################################
msg_DC_REMENU_window='
<window title="msg_DC_REMENU_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcMsgWindowREM}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_REMENU_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_REMENU_window</variable>
</window>'
export msg_DC_REMENU_window
#! ############################################################
#!
#! ############################################################
export gcMsgWindowBakAll0="
'===-BakAll-Double-Click-Buttons-==='
SubRoutine #1 and #2 
Will run 'BakOne'  or  'BakAll' 
to do a quick Copy/BackUp of Editing Scripts
   from---> Editing subdir 
'/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/'
   into ---> Production subdir
'/root/my_applications/'
   Then --->
EXIT via /'ReStart'/ or  /'ReBoot'/ 
...
SubRoutine  #3 and#4
Will do a 'BakAll' Copy/BackUp of all Editing Scripts
... + UpMnt 
... + CTA 'ColdTarBackup' 'Automatic'  
... + DnMnt 
... + ReBoot or PowerOff
"

#! ############################################################
msg_DC_BakAll_window='
<window title="msg_DC_BakAll_page---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowBakAll0}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_BakAll_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_BakAll_window</variable>
</window>'
export msg_DC_BakAll_window
#! ############################################################
#!

#! ### Not Used #########################################################
export gcMsgWindowVert="
===-MB : Multi-Button Vertical Module-===
#: note: 
#: fx (Sbr_gui_MB_xml) Multi-Button Vertical Module
#: called by : button Vert  
#: purpose :  Build/Present  Multi-Button  array 
#: - - -    of functional calls to sub-routines
#: - - -    which are system programs. 
#: - - -    presented in a vertical format.
#: returns : 
#:  Selected Button generates a Token FileName
#:  Token FileName is sent as a string echo into config-file
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  After 'close' 'return'  Then  BASH will :
#:  - - - load/cat/read the file.cfg 
#:  - - - then BASH will 
#: - - -  - - - run the local function  'Token' 
#:  - - - - - - which will execute the 'Token' .
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  READ the CODE in the Vertical MB page section .
#:  Sbr_gui_MB_xml  eval  will not initiate action
#:  Sbr_gui_MB_xml writes action results into a file.cfg
#:  BASH code  will import/cat/read the file.cfg
#:  BASH code  will call the <action> subroutine.
#:  READ the CODE in the Vertical MB page source.
#:  READ the CODE  to see the specific method.
#:  This method avoids conflict between BASH and GTK .
#: _____________________________________________________"

#! ### Not Used #########################################################
msg_DC_VERT_window='
<window title="msg_DC_Vert_page---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowVert}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_VERT_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_VERT_window</variable>
</window>'
export msg_DC_VERT_window
#! ############################################################
#!
#!
#! ### Not Used #########################################################
export gcMsgWindowVertTT="#: MB_Method: 
#: note:  MB : Multi-Button module
#: fx (Sbr_gui_MB_xml) 
#: called by : Main-GUI-Dialog via EXIT:guiMB 
#: purpose :  Build/Present  Multi-Button  array 
#: - - -    of functional calls to sub-routines
#: - - -    which are system programs.
#: returns : 
#:  Selected Button generates a Token FileName
#:  Token FileName is sent as a string echo into config-file
#:  example for ROX system file manager program:
#:  <action>echo 'Sbr_MB_rox' > /0-MGR_MB_RetVal.cfg </action>  
#: BASH will :
#:  - - - load/cat/read the file.cfg 
#:  - - - then run the local function  Sbr_MB_rox() 
#:  - - - which will execute the ROX system file manager.
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  READ the CODE in the Vertical MB page section .
#:  Sbr_gui_MB_xml  eval  will not initiate action
#:  Sbr_gui_MB_xml writes action results into a file.cfg
#:  BASH code  will import/cat/read the file.cfg
#:  BASH code  will call the <action> subroutine.
#:  READ the CODE in the Vertical MB page source.
#:  READ the CODE  to see the specific method.
#:  This method avoids conflict between BASH and GTK .
#: _____________________________________________________"
#!
#! ### Not Used #########################################################
msg_DC_VERT_TT_window='
<window title="msg_DC_Vert_TT_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label>'${gcMsgWindowVertTT}'</label></text>
<hbox>
    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_VERT_TT_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_VERT_TT_window</variable>
</window>'
export msg_DC_VERT_TT_window
#! ############################################################
#!
#!
#! ############################################################
export gcmsgDcLxgoWindow="
'===-Lxgo-==='
"
#!
#! ############################################################
msg_DC_Lxgo_window='
<window title="msg_DC_Lxgo_page---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcmsgDcLxgoWindow}'</b> </span> " </label></text>
<hbox>
    <button tooltip-text="Simple_guiSimReStart">
        <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
        <label>'_ReStart__'</label>
        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiSimReStart'</action>	</button>

    <button>
        <label>"Clear the Set-Up "</label>
        <input file>"Lxgo_.jpg"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_Lxgo_window</action>    </button>

</hbox></frame>
<variable>msg_DC_Lxgo_window</variable>
</window>'
export msg_DC_Lxgo_window
#! ############################################################
#!
#! ############################################################
export gcmsgDcDxstroWindow="'DC_Dxstro_page'"
#! ### /root/my-applications/Dxstro_.jpg ####################################
#! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###############################
msg_DC_Dxstro_window='
<window title="msg_DC_Dxstro_page---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcmsgDcDxstroWindow}'</b> </span> " </label></text>
<vbox>

    <button  tooltip-text="'closewindow'"   has-focus="false">
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>150</width><height>150</height>
                <label>"''"</label>	
                <action function="">msg_DC_Dxstro_window</action> 
                  </button>
 
   <button  tooltip-text="'closewindow'"   has-focus="false">
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>150></height> <width>100</width>
                <label>"''"</label>	
                <action function="">msg_DC_Dxstro_window</action> 
                  </button>

    <button>
        <label>"Clear the Dxstro_window"</label>
        <action function="closewindow">msg_DC_Dxstro_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_Dxstro_window</variable>
</window>'
export msg_DC_Dxstro_window
#! ############################################################
#!

#! ############################################################
export gcmsgDcDxstroWindow="'=-DC_Dxstro_window-='"

#! ### /root/my-applications/Dxstro_.jpg ####################################
#! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###############################
msg_DC_Dox_window_text="===DOX_Page==="
msg_DC_Dox_window='
<window title="msg_DC_Dox_page---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_Dox_window_text}'</b> </span> " </label></text>
<vbox>

                            <vseparator height-request="3"> </vseparator>

                            <button>
                                        <label>"Clear Main Page"</label>
                                        <action function="closewindow">msg_DC_Dox_window</action>    </button>
                               <action function="closewindow">msg_DC_Dox_window</action>    </button>
</vbox>
</frame>
<variable>msg_DC_Dox_window</variable>
</window>'
export msg_DC_Dox_window
#! ############################################################
#!
#!
#! ############################################################
#! [-1-]
#! msg_DC_LxgenMain_window
#        <vbox visible="'${gcP1_ctl}'"> 
#! ### /root/my-applications/Dxstro_.jpg ####################################
#! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###############################
msg_DC_LxgenMain_window_text="===Main_Page==="
msg_DC_LxgenMain_window='
<window title="msg_DC_LxgenMain_page---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_LxgenMain_window_text}'</b> </span> " </label></text>
<vbox>

            <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page-1-page-MAIN---'" >
                <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label> "'---MAIN---'" </label> <action>'lxEXIT:guiC1_X_ctl'</action> </button>

            <button visible="1"   tooltip-text="width-50-space>'=============================='" <height-request="1">
                    <label>"'!_________!________!_________!_________!_____!____'"</label>
                    <action>'lxPAGE1:spacer'</action> </button>

            <vseparator height-request="3"></vseparator>

            <vseparator height-request="3"></vseparator>
            <button   visible="1" 
                tooltip-text="'EXIT:guiCTX'__< 'CTX'  Tar.Gz from Local to SDA1 Drive, has GUI >" 
                has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'lxAction:guiCTX'</action> </button>

            <button visible="1"  tooltip-text="''" 
                has-focus="true" height-request="65" >
                <input file> "'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>33</width><height>33</height>
                <label> " '*_COLD_TAR_BACKUP_*' " </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiCTX'</action>                 </button>

            <vseparator height-request="3"></vseparator>
            <vseparator height-request="3"></vseparator>
            <button   visible="1" tooltip-text="'EXIT:guiArcMgrDts' : Duplicate only this $0 SRC 
                to LOCAL  Edit SubDir  with current DTS "has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'ttAction:guiMgrOneArcDts'</action> </button>

        <hseparator width-request="3"></hseparator>
        <hbox homogeneous="1">
            <hseparator width-request="53"></hseparator>
            <button has-focus="false" height-request="22"  xalign=".5">  
               <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
               <label>"''"</label><action>'left-smo'</action> </button>

            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>

            <button  visible="1"   
                gtk-apply="true" has-focus="false" > 
                <label> " {{=== 'ONE-ARC+dts'===}}  " </label>
                <action>'EXIT:guiMgrOneArcDts'</action> 		</button>

            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>

           <button has-focus="false" height-request="22"  xalign=".5">  
               <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
                <label>"''"</label><action>'0'</action> </button>
 
            <hseparator width-request="53"></hseparator>
        </hbox>
        <hseparator width-request="3"></hseparator>

                <vseparator height-request="3"></vseparator>

            <vseparator height-request="3"></vseparator>
            <button   visible="1" tooltip-text="''" has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'ttAction:CBX-Tool-Tip'</action> </button>

            <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "  '===-CBX-Tool-Tip==='  " </label>	
                <action function="'launch'">msg_DC_CBX_window</action><action function="'closewindow'">msg_DC_CBX_window</action>
                <action>'ttAction:CBX-Tool-Tip'</action> 
            </button>

            <hbox homogeneous="true">
                <checkbox 
                        active="'$CBXC3C'">
                        <label>'C3C'</label>
                        <variable>CBXC3C</variable>
                </checkbox>
                <checkbox  
                        active="'$CBXS2F'">
                        <label>'S2F'</label>
                        <variable>CBXS2F</variable>
                </checkbox>
                <checkbox 
                    active="'$CBXCTU'">
                    <label>'CTU'   </label>
                    <variable>CBXCTU</variable>
                </checkbox>
            </hbox>

            <hbox>
                <button tooltip-text="EXIT:CBXARS:ReStart" >
                   <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> '_CBx+ReStart'  </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:CBXARS'</action>            </button>
                <button tooltip-text="EXIT:CBXARB:ReBoot" >
                   <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> '_CBx+ReBoot'  </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:CBXARB'</action>            </button>
                <button tooltip-text="EXIT:CBXARQ:ReQuit" >
                    <label> '_CBx+ReQuit'  </label>
                    <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"25"</width><height>"25"</height>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:CBXARQ'</action>            </button>
            </hbox>

                <text visible="1" editable="false" use-markup="true" xalign=".5">
                    <label> "<span color='"'$lcGuiColorblu'"'> <b>'CBXstate:${lcCBXstatus}'</b> </span> " </label> </text>

                <button   visible="1" has-focus="false" height-request="12"> <label> "" </label> 
                    <input file icon="gtk-select-color" ></input>   <action>lxAction:P123-bot</action> </button>
 
            <vseparator height-request="3"> </vseparator>

           <vseparator height-request="7" > </vseparator>
            <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
            <vseparator height-request="7" > </vseparator>

            <button>
                <label>"Clear Main Page"</label>
                <action function="closewindow">msg_DC_LxgenMain_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenMain_window</variable>
</window>'
export msg_DC_LxgenMain_window
#! ############################################################
#!
#!
#! ############################################################
#! [-2-]
# msg_DC_LxgenDox_window
#! ### /root/my-applications/Dxstro_.jpg ####################################
#! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###############################
msg_DC_LxgenDox_window_text="=== Help-Dox_Page==="
msg_DC_LxgenDox_window='
<window title="msg_DC_LxgenDox_page---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_LxgenDox_window_text}'</b> </span> " </label></text>
<vbox>

            <button visible="1"   tooltip-text="width-50-space>'==================================================='" <height-request="1">
                <label>"'!_________!________!_________!_________!_____!____'"</label>
                <action>'0'</action> </button>

            <button   visible="1" has-focus="false" height-request="12"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'0'</action> </button>

            <hbox homogeneous="true">

                <button visible="1" tooltip-text="'EXIT:guiDumpHLP'  <HELP dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label>"'HELP'  " </label>
                    <action>'EXIT:guiDumpHLP'</action> </button>

                <button visible="1" tooltip-text="'EXIT:guiDumpHLP2'  <HELP dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label>"'Distro-List'  " </label>
                    <action>'EXIT:guiDumpDistro'</action> </button>

                 <button visible="1"  tooltip-text="'EXIT:guiDumpFAQ'  <FAQ dump>" has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label> " 'Faq' " </label>
                    <action>'EXIT:guiDumpFAQ'</action> </button>

            </hbox>

            <vbox>
                <button visible="1"  tooltip-text="'EXIT:guiDumpProc'  <Code-Procedures-Process>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label> " 'Dump:-Proc=Code:'  " </label>
                    <action>'EXIT:guiDumpProc'</action> </button>

                <button visible="1"  tooltip-text="'EXIT:guiDumpPUP'  <Pup-State dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label> " 'Dump:-PUP=Code:'  " </label>
                    <action>'EXIT:guiDumpPUP'</action> </button>

               <button visible="1" tooltip-text="'EXIT:guiDumpSRC'  <Source Code Dump>" heihas-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-All_Source=Code:'    " </label>
                    <action>'EXIT:guiDumpSRC'</action> </button>
                <button visible="1"    tooltip-text="'EXIT:guiDumpGUI'  <XML GUI Dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-XML_Main_GUI=Code:'    " </label>
                    <action>'EXIT:guiDumpGUI'</action> </button>
                <button visible="1" tooltip-text="'EXIT:guiDumpIMG'  <XML GUI Dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-svg-xpm_IMG=Code:'    " </label>
                    <action>'EXIT:guiDumpIMG'</action> </button>
            </vbox>

            <button visible="1" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>

            <vseparator height-request="5" > </vseparator>
            <button label="" has-focus="false" height-request="2"> <action>lxAction:spacer</action> </button>

            <button label="" has-focus="false" height-request="2"> <action>lxAction:P2-bot-spacer</action> </button>
          
            <hbox homogeneous="true">

                <button visible="1" tooltip-text="'EXIT:guiDumpUPL'  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_UPL'    " </label>
                    <action>'EXIT:guiDumpUPL'</action> </button>

               <button visible="1" tooltip-text="'EXIT:guiDumpSys'  < Display Devloper Var >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_Sys'  " </label>
                    <action>'EXIT:guiDumpSys'</action>  </button>

            </hbox>

            <hbox homogeneous="true">
                <button    tooltip-text="'EXIT:guiBase64__Sbr_Base64_calculation_display'"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Source-to-Base64'  " </label>	
                    <action>'EXIT:guiSrcBase64'</action> </button>
            </hbox>    

                <hbox homogeneous="true">
                  <button visible="1"    tooltip-text="'EXIT:guiMandelbrot'   "   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'Mandelbrot_'"</label>	
                        <action>'EXIT:guiMandelbrot'</action> </button>
                  <button visible="1" tooltip-text="'EXIT:guiAudio_for_StartUpSound+LogInDts'"   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'StartSound_' "</label>	
                        <action>'EXIT:guiAudio'</action> </button>
                </hbox>
                <hbox visible="true"  homogeneous="true">
                    <button  tooltip-text="'xEXIT:guiBackGround':only-launch, only PageDOX, 250"   has-focus="false">
                            <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>150</width><height>100</height>
                            <label>"''"</label>	
                    <action function="'launch'">msg_DC_Dxstro_window</action> <action function="'closewindow'">msg_DC_Dxstro_window</action>
                            </button> </hbox>

       <vseparator height-request="7" > </vseparator>
        <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
        <vseparator height-request="7" > </vseparator>

    <button>
        <label>"Clear Dox Page"</label>
        <action function="closewindow">msg_DC_LxgenDox_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenDox_window</variable>
</window>'
export msg_DC_LxgenDox_window
#! ############################################################
#!
#!
#! ############################################################
#! [-2-]
# msg_DC_LxgenUtil_window
#! ### /root/my-applications/Dxstro_.jpg ####################################
#! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###############################
msg_DC_LxgenUtil_window_text="===Util_Page==="
msg_DC_LxgenUtil_window='
<window title="msg_DC_LxgenUtil_page---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_LxgenUtil_window_text}'</b> </span> " </label></text>
<vbox>
    <vbox>
           
        <vseparator height-request="7" > </vseparator>
        <vbox visible="1">

            <hbox homogenous="true">
                <button> <label>"'S2F1'"</label>
                        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>'EXIT:guiS2F1'</action> </button>
                <button> <label>"'S2F3'"</label>
                        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>'EXIT:guiS2F3'</action>  </button>
                <hseparator width-request="155" > </hseparator>
                </hbox>

                <vseparator height-request="7" > </vseparator>
                <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
                <vseparator height-request="7" > </vseparator>

            <hbox homogeneous="true" visible="1">
                   <button    tooltip-text="'EXIT:guiCTX'">
                            <input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>15</width><height>15</height>   
                            <label>'{_CTX_}'</label>
                            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                                <action>'EXIT:guiCTX'</action>  </button>
                   <button    tooltip-text="'EXIT:guiCTA'">
                            <input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>15</width><height>15</height>   
                            <label>'{_CTA_}'</label>
                            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                                <action>'EXIT:guiCTA'</action>  </button>
                   <button    tooltip-text="'EXIT:guiCTU'">
                            <input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>15</width><height>15</height>   
                            <label>'{_CTU_}'</label>
                            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                                <action>'EXIT:guiCTU'</action>  </button>
            </hbox>

            <hbox homogeneous="1" visible="1">
                    <button    tooltip-text="'EXIT:guiCTB'">
                            <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>   
                            <label>'={_CTB_}='</label>
                            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                            <action>'EXIT:guiCTB'</action>  </button>
                    <button    tooltip-text="'EXIT:guiCTB-SL'">
                            <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>   
                            <label>'{=_CTB-SL_=}'</label>
                            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                            <action>'EXIT:guiCTB-SL'</action>  </button>
                    <button   tooltip-text="Auto_CTB-SLX_UP_Scan_DN_" > 
                            <input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>22</width><height>22</height>   
                            <label>"'{_CTB-SLX_}'"</label>
                           <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                            <action>echo '/root/my-applications/rc.z_CTB-SLX.sh' > /0-MGR_MB_RetVal.cfg </action>  
                                <action>'EXIT:guiCTB-SLX'</action>                          </button>
                </hbox>
        </vbox>
                
        <vbox>
            <vseparator height-request="5" > </vseparator>
            <button   visible="1"   tooltip-text="'EXIT:guiMCI' < MCI > 
                Embedded Graphics Sample Project  "has-focus="false" height-request="13"> <label> "" </label> 
                    <input file icon="gtk-select-color" ></input>   
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'lxAction:guiMCI'</action>       </button>
     
            <button  visible="1"   gtk-apply="true" has-focus="false" > 
                <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width>"35"</width><height>"35"</height>
                <label> " { 'MCI_Project' }  " </label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMCI'</action>      </button>

        </vbox>
                
        <vseparator height-request="7" > </vseparator>
        <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
        <vseparator height-request="7" > </vseparator>

        <hbox>
            <button label="-NOTE-" visible="false" height-request="5"> <action>'0'</action> </button>
            <hseparator width-request="7" > </hseparator>
            <button label="'-Apples-'" has-focus="false" height-request="5"> <action>'0'</action> </button>
            <button     tooltip-text="'Quit-Red'" ><input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label>
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>"'n:00'"</action> </button>
            <button     tooltip-text="'Quit-Grn'" ><input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:01'"</action> </button>
            <button     tooltip-text="'Quit-Yel'" ><input file>"'/tmp/EmGr-img-quit-yelnnn.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:02'"</action> </button>
            <button     tooltip-text="'apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:03'"</action> </button>
            <button     tooltip-text="'apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:04'"</action> </button>
            <button     tooltip-text="'apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:05'"</action> </button>
            <button     tooltip-text="'apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:06'"</action> </button>
            <hseparator width-request="42" > </hseparator>
        </hbox>

        <hbox>
            <hseparator width-request="7" > </hseparator>
            <button label="'-Jugs-'" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'jug-blu0yel'" ><input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>"'n:11'"</action> </button>
            <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:12'"</action> </button>
            <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:13'"</action> </button>
            <button     tooltip-text="'jug-redxgrn'" ><input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:14'"</action> </button>
            <button     tooltip-text="'jug-grnxred'" ><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:15'"</action> </button>
            <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:15'"</action> </button>
            <button     tooltip-text="'jug-redxblu'" ><input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                <label> "''" </label><action>"'n:16'"</action> </button>
            <hseparator width-request="50" > </hseparator>
        </hbox>

        <hbox>
            <hseparator width-request="7" > </hseparator>
            <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'n:21'</action> </button>
            <button     tooltip-text="'Check-bluXred'" ><input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label>
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>"'n:22'"</action> </button>
            <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'n:23'"</action> </button>
            <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'n:24'"</action> </button>
            <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'n:25'"</action> </button>
            <button     tooltip-text="'Check-blublu'" ><input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'n:26'"</action> </button>
            <hseparator width-request="52" > </hseparator>
        </hbox>
            <button visible="1" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>

    </vbox>

        <vseparator height-request="7" > </vseparator>
        <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
        <vseparator height-request="7" > </vseparator>

            <button>
                <label>"Clear Util Page"</label>
                <action function="closewindow">msg_DC_LxgenUtil_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenUtil_window</variable>
</window>'
export msg_DC_LxgenUtil_window
#! ############################################################
#!
#!
#!
#! #######################################################
#! END:     Msg_Pages / Windows
#! #######################################################
#!
#!
#!
#!
#!
#! #######################################################
#! BEGIN:     ComboBox CBX 
#! #######################################################
#!
#!
#(: ======================================================
#(: fx(Sbr_Cbx_ReStart)
#(: called by:  # CBX_ReStart et al
#(: param:
#(: purpose: ReStart $0 , fresh !
#(: calls:
#(: called by: most <button> CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note : called by ROX
#(:
#! ######################################################
function Sbr_Cbx_ReStart() {   # Active Check-Box # ARB_ReStart
	n=0
     #! called by guiROX with no parameter
    if [ ! "${lcPupRamObjMsg}" ] ; then   #  IF NOT file,  THEN this is First-Time-Run
        #!
        if [ $1  ] ; then # No Param = control Splash
            Sbr_Splash_It  "Manager ReStart" "black" "yellow" "1"     #! -D---   First-Time-Running-Messsage
         fi # end: [ $1 ne "0" ] ; then
        #!
    fi
    #!
    Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
    #! ReStart
    . ${gcZeroRun}      #: $ ZERO	# will run ReStart fresh , todo: must control double ReStart/WriteImg	
    #~ echo "=== Sbr_Cbx_ReStart ===" 
    sleep 1
    #!
} #
export -f Sbr_Cbx_ReStart
#!
#!
#(: ======================================================
#(: fx(Sbr_Cbx_ReBoot)
#(: called by: CBX_Reboot et al 
#(: param:
#(: purpose:
#(: calls:
#(: called by: CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################
function Sbr_Cbx_ReBoot() {   # Active Check-Box # ARB_ReBoot
    n=0
	#
	if [ $1  ] ; then	# control Splash
    	Sbr_Splash_It "ReBOOT" "black" "yellow"  "1"         #! -D---
	fi
	#
 	lcFnRun="/usr/bin/wmreboot"	   # wmpoweroff wmreboot
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
        rm -f ${gcEmGaImgFnTrgTxtMaster}
		${lcFnRun}  && ${lcFnRun}  && exit
    else
        n=0
    	Sbr_Splash_It " ERROR: File Not Found : ${lcFnRun} " "black" "red"  "3"         #! -D---
 	fi
    exit 1	# Should NOT get here !
} #
export -f Sbr_Cbx_ReBoot
#!
#!
#(: ======================================================================
#(: fx(Sbr_Cbx_ReQuit)
#(: called by: CBX_ReQuit
#(: param:
#(: purpose:
#(: calls:
#(: called by: CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Cbx_ReQuit() {   # Active Check-Box # ARB_ReQuit ShutDown
	n=0
	#
	if [ $1 ] ; then
    	Sbr_Splash_It "ReQuit" "black" "yellow"  "1"         #! -D---
 	fi
	#
	lcFnRun="/usr/bin/wmpoweroff"    # wmpoweroff calls /usr/bin/wmexit 
    if [ -f "${lcFnRun}" ]  ; then   # wmpoweroff calls /usr/bin/wmexit 
        n=0
        rm -f ${gcEmGaImgFnTrgTxtMaster}
         ${lcFnRun} && ${lcFnRun} && exit
     else
        n=0
    	Sbr_Splash_It " ERROR: File Not Found : ${lcFnRun} " "black" "red"  "3"         #! -D---
 		#
	fi
    exit 1
} #
export -f Sbr_Cbx_ReQuit
#!
#! ==================================================================
#!
#!
#! #######################################################
#! END:     ComboBox CBX 
#! #######################################################
#!
#!
#!
#!
#!
#!
#(: ====================================================================
#(: fx(Sbr_Sys_SDA_Only)
#(: called by: MainMenu Builder; Some Calls Only Allowed if /SDA1
#(: param:
#(: purpose: Some subroutines are only to be run from SDA system.
#(:        : Author uses several auxillary USB Bootable drives 
#(:        : which are updated frequently from /SDA1 hard drive. 
#(: calls:
#(: method: SDA is the standard EDIT/DEV media.
#(: sends: May send modified code to auxilliary Hard Drives.
#(: rationale: Controls One-Way Out-Going distribution of Edit/Dev code.
#(: note : MUST copy EDIT code from ONLY SDA1 !!!
#(:
#! #####################################################################
function Sbr_Sys_SDA_Only() {    # Active  # if [!SDA] then skip and restart
	#! Sbr_Sys_SDA_Only	# control: test "SDA" && ReStart
	n=0
    #! Key Routine ! Check IF Hard-Drive Identifier 
    if [ ! -f "/initrd/mnt/dev_save/MARK-SDA" ] || [ ! -f "/initrd/mnt/dev_save/MARK-SDA1" ]; then  
        #! if this HD is NOT the Primary Boot Drive. 
        #! then fail = ReStart
        Sbr_Splash_It "= SDA ONLY =" "yellow" "red"  "5"         #! -D---
        #!
        Sbr_Cbx_ReStart 1   ### Clean ReStart #  do not continue the called command.
    fi
    #! IF this is SDA1, THEN OK to run 
    #! ---> now return back to the caller
    #!~ #! -D---
	#!~ /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "--- OK SDA ---" &
	#-------------------
    #!~ RETVAL=$?
	#!~ GtkPidReStart=$!	# capture PID
	#!~ sleep 1.3
	#!~ kill ${GtkPidReStart} # clear current background red box after return
#!
} #
export -f Sbr_Sys_SDA_Only
#!
#(: ===========================================================
#(: ft(Sbr_Sys_KillProc)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Kill current Proc, stub , and restart
#(: calls: gxmessage, Sbr_Cbx_ReStart
#(: method: place this type of header in fallthrough ( if [ "$EXIT"  )  code . 
#(: sends:
#(: rationale: Allows "killing" a <button> call for 'test' or 'demo' purposes.
#(:
#! ###########################################################
function Sbr_Sys_KillProc() { # ACTIVE # permission control # Exit if in Test Mode 
	n=0 # Allows to Skip a Proc , Important for use IF Test file is published as sample. 
lcParam=$1   # "1" will enable ReStart 
#~ if [ $gcSysKillProc -eq 1 ] ; then  # sets up a Sbr_Button_Only as a "stub" .
if [ ! $gcSysKillProc ] ; then  # sets up a Sbr_Button_Only as a "stub" .
	lcMsgStr="Kill Process "
   	Sbr_Splash_It "! $lcParam !  Kill Procss____STUB called  --- ! ${lcParam} ---____" "yellow" "red"  "3"         #! -D---
	Sbr_Cbx_ReStart 1
fi
} #
export -f Sbr_Sys_KillProc
#!
#!
#!
#!
#!
#!
#!
#!
#(: ======================================================================
#(: fx(Sbr_Sys_SetVerDts)
#(: called by: Main ( )
#(: param:
#(: purpose: 'gc' and 'Sys' System Standard Constants can be installed here.
#(: call this way:  Sbr_Sys_SetVerDts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note:
#(:
#! ############################################################
function Sbr_Sys_SetVerDts() {  #: ACTIVE in Main
#! requires Manual Entry for  Developers Version  Date-Time-Stamp
#! which is above in "header"
n=0    #: common "stub" so bare funxtion() will not fault during test/dev.
export gcSysDvar="`date +%y-%m-%d--%H%M-%S`"
export    gcSysDts="`date +%y%m%d-%H%M-%S`"
#(: ====================================
#(: gcSysDtsNow   todo: 
#(: 		### Rationale: 
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(: 		### This is Attempt to generate a "NOW" (this-moment) date-time constant.
#(: 		### Date : grave-mark in date () !!!
#(: 		###  Dts="`date +%y%m%d-%H%M-%S`"
#(: 		### adust from default "z" time
#(: 		###		to local mid-america dts ( -5 hours ).
#(:			###		Does not calc DayLightSavingsTime
#(:			###		But still a consistent error day-to-day.
#(: 	lcNowDts=""
#(: 	lcNowDts="`date +%y%m%d%H%M-%S`"
#(: 	lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
#(: 	gcSysDtsNow="${lcNowDts}-local"
#(: ====================================
#(: date funxtion is ticky. 
#(: ====================================
            #~ #! todo:  Not yet used 
            #~ lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
            #~ gcSysDtsNow="${lcNowDts}"
            #~ gcSysDtsNow-local="${lcNowDts}-local"
#!
#!  Prefix SubDir location of all Editing Routines .   This is the original Source code for MGR, et al. 
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
#!
} #
export -f Sbr_Sys_SetVerDts
#!
#!
#!
#(: ======================================================================
#(: fx(Sbr_Utl_Mandelbrot)
#(:  name: 
#(:  @param
#(:  @return
#(: called by:
#(: param:
#(: purpose:
#(: call this way:
#(: calls:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:	# Draw_Mandelbrot_Robert.sh
#(:	# draw mandelbrot to terminal
#(:	# very slow, to terminal, runs OK !
#(:
#! ############################################################
function Sbr_Utl_Mandelbrot() {  # Active
    n=0 # ALWAYS install a stub, so 'funxtion' is legit code
    Sbr_Splash_It "_Sbr_Utl_Mandelbrot_()_
  should be run/viewed from Xterm
       may run 30 minutes   " "yellow" "red" "7"
	#! 
	#! Required params:
	#! BAILOUT
	#! MAX_ITERATIONS
	#! 
	lnBAILOUT=16  # max loop was 16
	lnMAX_ITERATIONS=100	# 100 is ok for terminal screen.
	#! 
	function sub_mandelbrot_iterate {   # sub-main 
		local zi=0
		local zr=0
		local i=0
		local cr
		cr=$(printf "%s\n" "scale=16; $2 - 0.5" | bc)
		while true
		do
			local temp
			local zr2
			local zi2
			i=$((i + 1))
			zr2=$(printf "%s\n" "scale=16; ($zr * $zr) - ($zi * $zi) + $cr" | bc)
			zi2=$(printf "%s\n" "scale=16; (($zr * $zi) * 2) + $1" | bc)
			temp=$(printf "%s\n" "(($zi * $zi) + ($zr * $zr)) > $lnBAILOUT" | bc)
			if ((temp == 1))
			then
				return "$i"
			fi
			if ((i > lnMAX_ITERATIONS))
			then
				return 0
			fi
			zr="$zr2"
			zi="$zi2"
		done
		#!
	} # end: sub-mandelbrot_iterate
    #!
	function sub_mandelbrot_main {	# sub-main
		local y
                    printf "* Mandelbrot*" > /root/my-applications/Mandelbrot.txt
		for ((y = -39; y < 39; y++))
		do
			printf "\n"
			printf "\n" >>  /root/my-applications/Mandelbrot.txt
			local x
			for ((x = -39; x < 39; x++))
			do
				local xi
				local yi
				local ires
				xi=$(printf "%s\n" "scale=16; $x / 40.0" | bc)
				yi=$(printf "%s\n" "scale=16; $y / 40.0" | bc)
				#! 
				sub_mandelbrot_iterate "$xi" "$yi"
				#!
				ires=$?
				if ((ires == 0))
				then
					printf "*"
                    printf "*" >> /root/my-applications/Mandelbrot.txt
				else
					printf "."
                    printf "." >> /root/my-applications/Mandelbrot.txt
				fi
			done
		done
		printf "\n"
	}
#! # below is the mandelbrot main ()
sub_mandelbrot_main   # this is the mandelbrot main ()
} # 
export -f Sbr_Utl_Mandelbrot
#! export -f sub_mandelbrot_iterate 
#! export -f sub_mandelbrot_main
#!
#!
#!
#(: ======================================================================
#(: fx(Sbr_Base64)  Base64 Base-64 Base_64 Base 64
#(:  name: 
#(:  @param
#(:  @return
#(: called by: if[ EXIT:guiBase64 ]
#(: param:
#(: purpose:
#(: call this way:
#(: calls:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:
#! ####################################################################
function Sbr_Dump_SRC_Base64() {  #: ACTIVE Col 3  Base 64, Base_64, Base-64
    n=0 # ALWAYS install a stub, so 'funxtion' is legit code
    echo "" 
    echo "=== Base64  cat /tmp/Base64-Encoded.txt ============"
    #! Display Information
    #! expects a plain-text file.
    #! Splash is 45 char long, then wraps.
    #! gxmessage is expands to 72++
lxDumpMsg="Usage: base64 [OPTION]... [FILE]
______________________________________________________________________
MUST USE Xterm to see this dump calculated routine !

______________________________________________________________________
Base64 encode or decode FILE, or standard input, to standard output.
______________________________________________________________________
With no FILE, or when FILE is -, read standard input.
______________________________________________________________________
Mandatory arguments to long options are mandatory for short options too.
============================================
  -d, --decode          decode data
  -i, --ignore-garbage  when decoding, ignore non-alphabet characters
  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).
                          Use 0 to disable line wrapping
      --help     display this help and exit
      --version  output version information and exit
The data are encoded as described for the base64 alphabet in RFC 4648.
When decoding, the input may contain newlines in addition to the bytes of
the formal base64 alphabet.  Use --ignore-garbage to attempt to recover
from any other non-alphabet bytes in the encoded stream.
GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/base64>
or available locally via: info '(coreutils) base64 invocation'
-timeout 20
)"
	gxmessage -name "Sbr_Dump_SRC_Base64 documentation 'timeout 20 seconds'"  -fg blue -bg lightyellow -timeout 20  -center  "${lxDumpMsg}"
    #!
    lcBase64fn="/tmp/box_help" 
    cat "$0" > "/tmp/box_help"
    #! Display Encoded
    lcBase64fnEncoded="/tmp/Base64-Encoded.txt"
    base64 ${lcBase64fn} > ${lcBase64fnEncoded}
    gxmessage -title "SourceCode Encoded in Base64"  -name "-Encoded-Base64-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcBase64fnEncoded}
    #!
    echo "" && echo "=== Base64  cat //tmp/Base-64-Decoded.txt ============"
    #!
    #! Display Decoded
    lcBase64fnDecoded="/tmp/Base-64-Decoded.txt"
    base64 -d ${lcBase64fnEncoded} > ${lcBase64fnDecoded}
    gxmessage -title "SourceCode Decoded from Base64"  -name "-Decoded-Base64-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcBase64fnDecoded}
    #!
} # end
export -f Sbr_Dump_SRC_Base64
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_ClearFlagsSystem)   #: Active for System
#(: called by:
#(: param:
#(: purpose: clear all system flags
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : some flags are still hard-code ; ie, LockFile , BackUpStatus
#(:
#! ############################################################
function Sbr_ClearFlagsSystem() {   #: ACTIVE for System
	n=0
		rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	###  but not E3R  CBX
		rm -f "/tmp/snapmergepuppy-error"  ### this is SMP flag ,  Not Used
		rm -f "/tmp/box_help"       ### remove the lingering temp file.
		rm -f "/tmp/box_source"       ### remove the lingering temp file.
		rm -f "${MGR_BackUpStatus}"
		gcMGRConfigArbIdd=""		### cleared for 'next reboot' Menu Selection
	/bin/echo " " > /dev/console
} #
export -f Sbr_ClearFlagsSystem
#!
#!
#(: =====================================================================
#(: fx(Sbr_ClearFlagsQuit)
#(: called by:
#(: param:
#(: purpose: Clear Quit Flags at "QUIT" program
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : some flags are still hard-code ; ie, LockFile , BackUpStatus
#(:
#! ############################################################
function Sbr_ClearFlagsQuit() {   #: ACTIVE for QUIT
    n=0
#!
if [ ! $1  ] ; then   # display active
       Sbr_Splash_It  "Clear Flags Quit" "orange" "purple" "1"
fi # end: [ $1 = "1" ]
#!
	rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	   ###  but not E3R  CBX
	rm -f "${MGR_TouchCBXstatus}" # ## CBX applied flag must linger for GUI		# Carry-Over
	rm -f "${MGR_BackUpStatus}" # ## CBX applied  flag must linger for GUI		# Sbr_ClearFlagsQuit
    rm -f "${MGR_ReStart_flg}"  # ## MGR initial Re-ReStart to init GEANY		# Sbr_ClearFlagsQuit
    rm -f "/tmp/MGR_Page_Control.flg"
	/bin/echo " " > /dev/console
#!
} #
export -f Sbr_ClearFlagsQuit
#!
#!
#!
#(: #####################################################################
#(: fx(Sbr_Box_Message)	  # internal hack on gtkdialog box_help, by gae
#(: called by :
#(:    GuiHLP+  to  fx(Sys_Box_HLP)  to  Sbr_Box_Message
#(:    GuiFAQ+  to  fx(Sys_Box_FAQ)  to  Sbr_Box_Message
#(:
#(: fx(Sbr_Box_Message)
#(: receives param : Header$1 and loads '/tmp/box_help' for Top-Edge Window Title. 
#(:
#(: fx(Sbr_Box_Message)
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" , by gae 2401
#(:   provides wider screen width.
#(:   based directly on gtkdialog box_help code processes.
#(:
#(: fx(Sbr_Box_Message) 
#(:   usage :
#(:   HEADING is a short "title bar" description.
#(:   XML code is custom written to format "/tmp/box_help".
#(: returns:
#(:
#(: fx(Sbr_Box_Message) 
#(: method:
#(:     gtkdialog --center -p XML-Format-file (which loads /tmp/box_help )
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" 
#(:   based on gtkdialog box_help code processes.
#(:   provides wider screen width.
#(:
#(: fx(Sbr_Box_Message) 
#(: note:
#(: purpose :  Simple Message sbr based on gtkdialog box_help
#(:   "case and hack"  rewrite based on "box_help" 
#(:   which allows author to change the "lead-in" XML code
#(:   and thus change the "format" of this custom "message_box".
#(:   Sbr_Box_Message does provide a "OK" user button.
#(:   Sbr_Box_Message does provide a "markup" on text for colors.
#(:   Sbr_Box_Message does allow dimension changes to box.
#(:   Sbr_Box_Message does not require a "URL" param.
#(: note:
#(:   XML assumes /tmp/box_help and "gtkdialog -p" internal code.
#(:   XML sets up the markup and color options for the imported text.
#(:   XML sets up the "OK" control button, and will show/close/"OK"
#(:
#(: fx(Sbr_Box_Message) 
#(: used by "Hlp" , "Distro", "Proc", "Faq"
#(:
#(: gxMessage   Display Information:
#(:     expects plain text .
#(:     displays 45 char long, then wraps.
#(:     line-length expands to 72++
#(: 
#! ############################################################
function Sbr_Box_Message() {  #: ACTIVE   for HELP and FAQ
#
n=0
#(:   "case and hack"  rewrite based on "box_help" 
#(:   which allows author to change the "lead-in" XML code
export TEXTDOMAIN=libstardust
export OUTPUT_CHARSET=UTF-8
#!
if [ "$1" ] ; then
	Box_Msg_Heading="${1}"
else
	Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
fi
#! Is Used by Help and FAQ  : 
export Box_MessageXML='
<window title="MGR_'${Box_Msg_Heading}'"
default-height="550"
default-width="760"
visible="true" >
<vbox space-expand="true" space-fill="true">
  <vbox space-expand="true" space-fill="true">
    <vbox scrollable="true" shadow-type="3" space-expand="true" space-fill="true">
      <vbox space-expand="false" space-fill="false">
        <text xpad="10" ypad="15" use-markup="true"><input file>'/tmp/box_help'</input></text>
      </vbox>
    </vbox>
  </vbox>
  <hbox space-expand="false" space-fill="false">
    <button>
      '"`/usr/lib/gtkdialog/xml_button-icon ok`"'
      <label>'$(gettext 'Ok')'</label>
    </button>
  </hbox>
</vbox>
</window>'
#
gtkdialog --center -p Box_MessageXML	# assumes '/tmp/box_help'    #! -D---
#
} #
export -f Sbr_Box_Message
# ACTIVE   for HELP, Distro, Proc, FAQ
#!
#!
#(: ============================================================
#(: fx(Sbr_ARB_Init)	#: Active #  read config and write menulst 
#(: called by:   main run ( )
#(:    main run ( )  calls  fx(Sbr_ARB_Init)
#(: purpose:  read pre-set configfile then assign to "gcC3MConfigArbId"
#(: receives param:
#(: returns:
#(: note: Setup is gui Fall-Thru ft(Sbr_ARB_00}  /   EXIT:ARB_00
#(:
#! ############################################################ READ CONFIG ###
function Sbr_ARB_Init() {   #: ACTIVE called at main () :  init for "ARB" config  /root/my-applications/bin
#(: purpose:  read pre-set configfile then assign to "gcC3MConfigArbId"
    n=0
    gcMgrArbCfgFn="/root/my-applications/bin/MGR_Config_ARB.cfg"   #: ? ASSIGNED fx(Sys_PupState)
if [ -f ${gcMgrArbCfgFn} ] ; then   #: read config 
    n=0
    gcC3MConfigArbId=`cat ${gcMgrArbCfgFn}`   #:  extract Id
    chmod +x ${gcMgrArbCfgFn}
    echo "gcC3MConfigArbId:${gcC3MConfigArbId}:================="
else
	n=0
    touch ${gcMgrArbCfgFn}
	gcC3MConfigArbId=""
    echo "${gcC3MConfigArbId}" > ${gcMgrArbCfgFn}
	echo "ID:gcC3MConfigArbId:${gcC3MConfigArbId}:"
	echo "FN:${gcMgrArbCfgFn}:Not Found:"
    Sbr_Splash_It "${gcC3MConfigArbId} Config Not Found  ${gcMgrArbCfgFn} empty file created" "yellow" "red" "3"   #! -D---
fi
} #
export -f Sbr_ARB_Init
#!
#!
#!
#!
#(:===========================================================
#! begin: Up Pmount              Not called by Page 3 Vert 
#(:===========================================================
#(: fx(Sbr_Sys_pMount_One)
#(: called by:   Sys_MGR_pMount_All calls "Sbr_Sys_pMount_One"
#(: purpose:  pMOUNT  only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_Sys_pMount_One() {      # ACTIVE UpPmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    lcMsgStr="${1}:trg drive ID"
    gcActiveGui="1"
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Small splash 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
*.      Quick Sbr_Sys_pMount_One
*.             '${1}'                              "&
    RETVAL=$?
    GTKPIDPMNTsbr=$! 
    #! kill ${GTKPIDPMNTsbr} is split
fi
#! IF -d /root THEN already mounted
    mkdir -pv /mnt/${1} drv
    mount         /dev/${1} /mnt/${1}
    mount -t ext3 /dev/${1} /mnt/${1}
    mount -t vfat /dev/${1} /mnt/${1}
if [ "$gcActiveGui" = "1" ] ; then 
    sleep .5
    kill ${GTKPIDPMNTsbr}       #! kill ${GTKPIDPMNTsbr} is split
fi
} #
export -f Sbr_Sys_pMount_One
#!
#!
#(: ====================================================================
#(: fx(Sys_MGR_pMount_All)
#(: called from gui
#(: called by: E3R_Main_Int_Long_List    and gui-P-MntInt
#(: method: code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sbr_Sys_pMount_One)
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(:Dump calls Sbr_Sys_pMount_One with internal prep.
#(:
#! ############################################################
function Sys_MGR_pMount_All() {    # ACTIVE UpPmount Special
    n=0
    gcActiveGui="1"
    lcActiveMntId="P"   # Id    # Not Used
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---  Big Splash BackGround 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
*.      MGR_P_Mount_All INTERNAL
*.
*.
*.
*.
*.
*.                                                          "&
    RETVAL=$?
    GTKPIDPMNT1=$!
    sleep .3
fi
#!
# Sys_MGR_pMount_All
#! if -d /root then already mounted
#;;; multiple calls to subroutine , which runs a single "mount" routine
#;;; begin looping internal code ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; DO NOT USE ON SDA1, which is the primary drive. 
Sbr_Sys_pMount_One "sda2"
Sbr_Sys_pMount_One "sdb1"
Sbr_Sys_pMount_One "sdc1"
Sbr_Sys_pMount_One "sdd1"
Sbr_Sys_pMount_One "sde1"
Sbr_Sys_pMount_One "sdf1"
Sbr_Sys_pMount_One "sdg1"
Sbr_Sys_pMount_One "sdh1"
Sbr_Sys_pMount_One "sdi1"
Sbr_Sys_pMount_One "sdj1"
Sbr_Sys_pMount_One "sdk1"
Sbr_Sys_pMount_One "sdl1"
Sbr_Sys_pMount_One "sdm1"
Sbr_Sys_pMount_One "sdn1"
Sbr_Sys_pMount_One "sdo1"
Sbr_Sys_pMount_One "sdp1"
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if [ "$gcActiveGui" = "1" ] ; then 
    Sbr_Splash_It  "DONE : _pMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDPMNT1} # background splash yel/red 
fi #
    Sbr_Cbx_ReStart 1   # no wait
} # 
export -f Sys_MGR_pMount_All
#!
#! ===========================================================
#! end: Up Pmount              Not called by Page 3 Vert 
#! ===========================================================
#!
#!
#! ===========================================================
#! begin: Dn Umount             Not called by Page 3 Vert 
#! ===========================================================
#!
#(:===========================================================
#(: fx(Sbr_Sys_uMount_One)	#: Active
#(: called by:   ft(EXIT:guiUMntInt)  (each one)
#(: calls:
#(: purpose:  uMOUNT only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:    funxtion "Sys_MGR_uMount_All"  calls "Sbr_Sys_uMount_One"
#! ############################################################
function Sbr_Sys_uMount_One() {   # ACTIVE DnUmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    gcActiveGui="1"
    #~ #lcActiveMntId="U"   # Id    # Not Used
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D--- Small Splash
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
*.        Sbr_Sys_uMount_One
*.             '${1}'                              "&
    RETVAL=$?
    GTKPIDUMNTsbr=$!
fi
    # # # todo: ? choose a different test subdir.  Not /root, which is the Current Active drive /root
    # # # check for conflict.   None on 7 drives and 17 OS.  240205-0710
        lcDirName="/root"
        if [ -d ${lcDirName} ] ; then # IF target directory is real 
            umount -lv      /mnt/${1}
        else    # ELSE /root is the /root/home and cannot be unMounted !
            n="0"
        fi
if [ "$gcActiveGui" = "1" ] ; then 
       sleep 1
       kill ${GTKPIDUMNTsbr}
fi
} #
export -f Sbr_Sys_uMount_One
#!
#!
#(: ============================================================
#(: fx(Sys_MGR_uMount_All)
#(: calls: Sbr_Sys_pMount_One
#(: called from: Gui
#(: called by: E3R_Main_Int_Long_List    and gui-P-MntInt
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(: calls Sbr_Sys_uMount_One with internal prep.
#(:
#! ############################################################
function Sys_MGR_uMount_All() {   # ACTIVE DnUmount Special
    n=0
    gcMntAllLogP="/tmp/MGR_MntAllU.log "
    #~ #lcMntAllTrg=${gcMntAllLogU} # Not Used
    gcActiveGui="1"
    #~ #lcActiveMntId="U"      # Not Used
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Big Splash BackGround
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "
*.        Sys_MGR_uMount_All
*.        :${lcMntAllLogFn}:
*.
*.
*.
*.
*.                                                          "&
    RETVAL=$?
    GTKPIDUMNT1=$!
fi
#;;; never try to unmount /dev/SDA
#;;; begin looping subroutine umount process ;;;;;;;;;;;;;;;;;;;
#;;; DO NOT USE ON SDA1, which is the primary drive. 
Sbr_Sys_uMount_One "sda2"
Sbr_Sys_uMount_One "sdb1"
Sbr_Sys_uMount_One "sdc1"
Sbr_Sys_uMount_One "sdd1"
Sbr_Sys_uMount_One "sde1"
Sbr_Sys_uMount_One "sdf1"
Sbr_Sys_uMount_One "sdg1"
Sbr_Sys_uMount_One "sdh1"
Sbr_Sys_uMount_One "sdi1"
Sbr_Sys_uMount_One "sdj1"
Sbr_Sys_uMount_One "sdk1"
Sbr_Sys_uMount_One "sdl1"
Sbr_Sys_uMount_One "sdm1"
Sbr_Sys_uMount_One "sdn1"
Sbr_Sys_uMount_One "sdo1"
Sbr_Sys_uMount_One "sdp1"
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
if [ "$gcActiveGui" = "1" ] ; then  
    Sbr_Splash_It  "DONE : Sys_MGR_uMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDUMNT1} # background
fi
    Sbr_Cbx_ReStart 1   # no wait
} #
export -f Sys_MGR_uMount_All
#!
#! ===========================================================
#! end: Dn Umount              Not called by Page 3 Vert 
#! ===========================================================
#!
#!
#!
#!
#!
#!
#(: === Begin: ===================================================
#! ### DUMPS ###
#! ### DUMPS ###
#! ### DUMPS ###
#(: === Begin: ===================================================
#!
#!
#(: ============================================================
#(: fx(Sbr_Dump_PUP)
#(: called by: Main Gui
#(: param:
#(: purpose:  Display PUPSTATE via direct link in Main_GUI , returns to same.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT interpret markup text codes.
#(: 	Method: cat ${lcMsgSrc} > ${lcMsgTrg} & xmessage
#(:
#! ############################################################
function Sbr_Dump_PUP() {    #: ACTIVE
	n=0
lcMsgSrcDP="/etc/rc.d/PUPSTATE"
lcMsgTrgDP="/tmp/box_help"	# /tmp/MGR_PUPSTATE
#
echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
echo "# ${lcMsgSrcDP}"  >> ${lcMsgTrgDP}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrgDP}
echo "# This is Linux "  >> ${lcMsgTrgDP}
echo "#    This is Free Open Source  " >> ${lcMsgTrgDP}
echo "#       So, Read the Code" >> ${lcMsgTrgDP}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrgDP}
echo "# `date +%y%m%d-%H%M-%S`"  >> ${lcMsgTrgDP}
#
cat ${lcMsgSrcDP} >> ${lcMsgTrgDP}
#
lcMGR_dts="=== MGR  NowDTS  `date +%y%m%d-%H%M-%S`"
echo "${lcMGR_dts}" >> ${lcMsgTrgDP}	#: add string to PUPSTATE Text Output
echo "=== {PUP+} MGR_Pup_Box ============================" >> ${lcMsgTrgDP}
sleep 1
gxmessage -name "=== PUPSTATE === gxmessage ===" -bg lightyellow  -center -file "${lcMsgTrgDP}" -wrap
} #
export -f Sbr_Dump_PUP
#!
#!
#(: ============================================================
#(: fx(Sbr_Dump_HLP)  Dump_Help
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Help general
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(: 	system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message "=== 'Sbr_Box_Message' for '/tmp/box_help'"
#(:
#! ############################################################
function Sbr_Dump_HLP() {   #: ACTIVE  echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
<b><span foreground='"'red'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
<b><span foreground='"'green'"'>"Not intended for general distribution"</span></b>
<b><span foreground='"'blue'"'>"Not intended to be a Turn-Key project."</span></b>
"--- "
<span foreground='"'red'"'>"About : "</span>
<b><span foreground='"'red'"'>"${gcSysNameBase} is a General Menu framework ! "</span></b>
    <span foreground='"'green'"'>"Purpose is to provide a test-bed for '<b>'experiments'</b>'."</span>
    <span foreground='"'green'"'>"and Allow-Flipping-between-'<b>'20-Puppy_Distros_!'</b>'"</span>
<span foreground='"'red'"'>"About : "</span>
<b><span foreground='"'red'"'>"Special Features of ${gcSysNameBase}: "</span> <span foreground='"'green'"'></span></b>
    <span foreground='"'blue'"'>"has Multiple NoteBook type pages. ! "</span>
    <span foreground='purple'>       "#! to form an expandable compact main screen ."</span>
    <span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
    <span foreground='purple'>       "#! to reduce dependence on system resources ."</span>
    <span foreground='"'blue'"'>"has Double-Click buttons ! "</span>
    <span foreground='purple'>       "#! to reduce accidental triggers."</span>
"--- "
This 'MGR' project series is posted 
   on the Murga website as 
<b><span foreground='"'red'"'> "'"Menu Framework"'" </span></b>
   in the 'utilities' .
This project is posted on "'"GitHub"'"
"---"
<b><span foreground='"'red'"'>"Double-Click"</span></b>
<b><span foreground='"'blue'"'>"buttons with Double-Click will trigger "</span></b>
<b><span foreground='"'blue'"'>"a large tear-drop shaped ICON."</span></b>
<b>:<span foreground='"'red'"'>"RED Border"</span>": tear-"<span foreground='"'yellow'"'>"YELLOW "</span>"-drop:"</b>
<b><span foreground='"'green'"'>"pop-up in middle of screen"</span></b>
"--- "
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"--- "
<b><span foreground='"'green'"'>"___Tested across 20 Puppy Distros______________________"</span></b>
<b><span foreground='"'red'"'>"BASH will always work "</span></b>
<b><span foreground='"'red'"'>"but, GTK is sensitive to the theme settings/formatting"</span></b>

"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'blue'"'>"Authors note about MGR.sh coding :"</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular  code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"designed to prevent interaction "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"... between bash and gtkdialog "</span>
"--- "
<span foreground='"'green'"'>"${gcSysNameBase}.sh restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcSysNameBase}.sh requires 1 second to write all 37 images"</span>
<span foreground='"'green'"'>" . . . . . . . . . . . writes all images one time, at StartUp."</span>
<span foreground='"'green'"'>" . . . . . . . . . . . into 13 KBytes in /tmp "</span>
"--- "
<span foreground='"'green'"'>"____________________________________________"</span>
<b><span foreground='"'purple'"'>" Running Tests on 20 Puppy OS, including: "</span></b>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
"---"
<span foreground='"'blue'"'>  "iso-KineticPup32-22.10+2________________230604"</span>
<span foreground='"'blue'"'>  "iso-BionicPup32-8.0+30_BionicBeaver_____220407"</span>
<b><span foreground='"'red'"'>"iso_BionicPup32-19.03-K5.9_231209.iso___K:5.9_231209"</span></b>
<b><span foreground='"'red'"'>"iso_ManticPup32-23.10+1.iso______________K:6.1_231209"</span></b>
<span foreground='"'blue'"'>  "iso-JammyPup32-22.04+8_JammyJellyfish__22123"</span>
<span foreground='"'blue'"'>  "iso-UPupFF+D-20.12+4_Focal-Fossa_______201210"</span>
<b><span foreground='"'red'"'>"iso-UpupTahr-6.0.6-k4.1.30-uefi___________K:4.1_190211"</span></b>
<span foreground='"'blue'"'>   "iso-Slacko-7.0_DpupS7_14.2_____________220205"</span>
<span foreground='"'blue'"'>   "iso-Xenial-64_7.5_XL____________________220401"</span>
<span foreground='"'blue'"'>   "iso-S15Pup-64_22.12+1-T_________________220922"</span>
<span foreground='"'blue'"'>   "iso-Quirky_April-7.0.1F-uefi____________200511"</span>
<span foreground='"'blue'"'>   "iso_devuanpup-9.7.0-chimaera_4.0_i386___211206"</span>
<span foreground='"'blue'"'>   "iso_BookwormPup32-23.11-B4_K:6__________231210"</span>
<span foreground='"'blue'"'>   "iso_LxPupSc-slacko-20.01+0-T-k64________200129"</span>
<span foreground='"'blue'"'>   "iso_slacko64_14.2_32-674-bit_comptible__220227"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
This 'MGR' project series is posted 
   on the Murga website as 
<b><span foreground='"'red'"'> "'"Menu Framework"'" </span></b>
   in the 'utilities' .
This project is posted on "'"GitHub"'" :
This project is posted on website:
   www.GeoCities.WS/glene77is
"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'red'"'>"Note on running executable BASH script :"</span>
Always check the file "\'set action\'"
... ' $ @ '  'Use-Command'
Always check the file "\'type\'"
... 'Exec'
Always check the file "\'Properties\'"
... 'Exec'
Always check the file "\'Permissions\'"
...'Executable'
Always examine other running scripts
to see how Your System is setting environmentals.
"--- "
<span foreground='green'>'______________________________'</span>
<span foreground='red'>'Geany ROX Debug Method :'</span>
Use the 'Run in Terminal' to Execute a script.
<span foreground='red'>'Geany Debug Method :'</span>
Use the Geany Execute funxtion
   to run the script 'BASH-Terminal'
All 'echo' commands will display.
"--- "
<span foreground='green'>'______________________________'</span>
### output 'HELP' temp file MUST BE '/tmp/box_help'
### due to hard-code in '/gtkdialog/box_help'
<span foreground='green'>'______________________________'</span>
... Dumps available:
... 'Help', 'Faq', 'Pup', 'Src', 'Gui', 'Img', 'Upl', 'Dev'
... All Dumps will run, and 'ReStart' this program.
... User should Run '${gcSysNameBase}' script
...    in 'Geany' or 'ROX' 'terminal'
...    to view/trace action of internal operations !
"--- "
<span foreground='green'>"__________________________________________"</span>
<span foreground='red'>" gtkdialog version as delivered with this Puppy OS  "</span>
<span foreground='blue'>"  MGR is written with GTK as originally installed"</span>
<span foreground='red'>"  gtkdialog 'Button' Format-Sequence-is-critical "</span>
<span foreground='red'>"  gtkdialog 'Button' Format-Sequence-is-critical "</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"-------------------------------------"</span>
<span foreground='green'>"-------------------------------------"</span>
"--- "
<span foreground='blue'>"-------------------------------------"</span>
<span foreground='red'>"Message Box Routines used:  "</span>
<span foreground='green'>"#: Sbr_Box_Message :  "</span>
<span foreground='green'>"#: ... custom rewrite of gtkdialog Box_Help"</span>
<span foreground='green'>"#: ... used by 'HELP' , 'Distro', 'Proc', 'FAQ' "</span>
<span foreground='green'>"#: gxMessage : "</span>
<span foreground='green'>"#: ...    used by: PUP, GUI, SRC, IMG, UPL, SYS. "</span>
<span foreground='green'>"#: ...    expects plain text . "</span>
<span foreground='green'>"#: ...    displays 45 char long, then wraps. "</span>
<span foreground='green'>"#: ...    line-length expands to 72++ "</span>
<span foreground='blue'>"-------------------------------------"</span>
"--- "
<b><span foreground='"'red'"'>"     ${0} "</span></b>
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
......................................................"\
> /tmp/box_help
Sbr_Box_Message "=== HELP === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end
export -f Sbr_Dump_HLP
#! ############################################################
#!
#!


#!
#!
#(: ============================================================
#(: fx(Sbr_Dump_HLP)  Dump_Help
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Help general
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(: 	system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message "=== 'Sbr_Box_Message' for '/tmp/box_help'"
#(:
#! ############################################################
function Sbr_Dump_Distro() {   #: ACTIVE  echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Distro List "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
"--- "
<b><span foreground='"'purple'"'>" Running Tests on 20 Puppy OS, including: "</span></b>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
"---"
<span foreground='"'blue'"'>  "iso-KineticPup32-22.10+2________________230604"</span>
<span foreground='"'blue'"'>  "iso-BionicPup32-8.0+30_BionicBeaver_____220407"</span>
<b><span foreground='"'red'"'>"iso_BionicPup32-19.03-K5.9_231209.iso___K:5.9_231209"</span></b>
<b><span foreground='"'red'"'>"iso_ManticPup32-23.10+1.iso______________K:6.1_231209"</span></b>
<span foreground='"'blue'"'>  "iso-JammyPup32-22.04+8_JammyJellyfish__22123"</span>
<span foreground='"'blue'"'>  "iso-UPupFF+D-20.12+4_Focal-Fossa_______201210"</span>
<b><span foreground='"'red'"'>"iso-UpupTahr-6.0.6-k4.1.30-uefi___________K:4.1_190211"</span></b>
<span foreground='"'blue'"'>   "iso-Slacko-7.0_DpupS7_14.2_____________220205"</span>
<span foreground='"'blue'"'>   "iso-Xenial-64_7.5_XL____________________220401"</span>
<span foreground='"'blue'"'>   "iso-S15Pup-64_22.12+1-T_________________220922"</span>
<span foreground='"'blue'"'>   "iso-Quirky_April-7.0.1F-uefi____________200511"</span>
<span foreground='"'blue'"'>   "iso_devuanpup-9.7.0-chimaera_4.0_i386___211206"</span>
<span foreground='"'blue'"'>   "iso_BookwormPup32-23.11-B4_K:6__________231210"</span>
<span foreground='"'blue'"'>   "iso_LxPupSc-slacko-20.01+0-T-k64________200129"</span>
<span foreground='"'blue'"'>   "iso_slacko64_14.2_32-674-bit_comptible__220227"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"-------------------------------------"</span>
"--- "
<b><span foreground='"'red'"'>"     ${0} "</span></b>
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
......................................................"\
> /tmp/box_help
Sbr_Box_Message "=== Distro === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end
export -f Sbr_Dump_Distro
#! ############################################################

#!

#!
#!
#(: ============================================================
#(: fx(Sbr_Dump_Sbr_Dump_Proc)  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_Proc  
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(: 	system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message "=== 'Sbr_Box_Message' for '/tmp/box_help'"
#(:
#! ############################################################
function Sbr_Dump_Proc() {   #: ACTIVE  echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Procedure-Documention "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
"--- "
"--- "
<span foreground='red'>"#! MGR software has a four part organization.  ."</span>

<span foreground='blue'>"#  1"</span> <span foreground='green'>" = '"Intro"', Setup  Var and Constants : BASH"</span>

<span foreground='blue'>"#  2"</span> <span foreground='green'>"  = '"SubRoutines"' : BASH"</span>
<span foreground='blue'>"  "</span> <span foreground='green'>". . . . which execute Tokens from GTK XML dialog"</span>

<span foreground='blue'>"#  3"</span> <span foreground='green'>"  = '"GTK GUI XML"' "</span>
<span foreground='blue'>"  "</span> <span foreground='green'>".. . . . =  interface Display and Select Buttons. GTK code. "</span>

<span foreground='blue'>"#  4"</span> <span foreground='green'>"  = Fall-Thru '"IF/fi"' BASH routines to :"</span>
<span foreground='blue'>"  "</span> <span foreground='green'>". . . . '"capture"'  GTK Button  Tokens via the '"EXIT"' var "</span>
<span foreground='blue'>"  "</span> <span foreground='green'>". . . . '"re-direct"' to Token SubRoutines."</span>

<span foreground='red'>"-------------------------------------"</span>"\
> /tmp/box_help
Sbr_Box_Message "=== Proc ===  'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end
export -f Sbr_Dump_Proc
#! ############################################################

#!
#! 
#!
#(: =====================================================================
#(: fx(Sbr_Dump_FAQ)
#(: called by:
#(: param:
#(: purpose:  Display FAQ via  direct link in Main_GUI , returns to same.
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note : requires /tmp/box_help
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(:		system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#! ############################################################
function Sbr_Dump_FAQ() {   #: ACTIVE
	n=0
	echo "\
<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<span background='yellow'><span foreground='blue'> '      $gcSysNameBase FAQ    '</span></span>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>
<span foreground='green'>                     # Compiled: ${gcSysDevDob} # </span> 

<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<b><span background='yellow'><span foreground='blue'> '#! Running Tests '</span></span></b>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>\
<span foreground='green'>

<b><span background='lightyellow'><span foreground='red'>     #! Running Tests on 20 live-active Puppy Linux OS </span></span></b>
<b><span background='lightyellow'><span foreground='brown'>     #! including: </span></span></b>
    #! iso-KineticPup32-22.10+2__________________230604
<b><span foreground='blue'> '    #!*** iso_BionicPup32-19.03-K5.9____K:5____231209'</span></b>
    #! iso-BionicPup32-8.0+30_____________K:4____220407
    #! iso-UPupFF+D-20.12+4_Focal-Fossa__________201210
<b><span foreground='blue'> '    #!*** iso_ManticPup32-23.10+1_______K:6____231209'</span></b>
    #! iso_BookwormPup32-23.11-B4_K6.1.55_K:6____231210
    #! iso-JammyPup32-22.04+8_____________K:5.1__221203
    #! iso-S15Pup-64_22.12+1-T____________K:5.1__220922
    #! iso-Xenial-64_7.5_XL_______________K:4.9__220401
    #! iso_slacko64_14.2_32-674-bit_comptible____220227
    #! iso-Slacko-7.0_DpupS7_14.2________________220205
    #! iso_devuanpup-9.7.0-chimaera_4.0_i386_____211206 beta
    #! iso-Quirky_April-7.0.1F-uefi______________200511 beta
    #! iso_LxPupSc-slacko-20.01+0-T-k64__________200129
    #!* iso-UpupTahr-6.0.6-k4.1.30-uefi____K:4.1__190211
<b><span foreground='blue'> '    #!*** iso-UpupTahr-6.0.6-k4.1.30-uefi__K:4.1__190211'</span></b>
    #(: ------------------------------------------------
</span>


<span background='brown'><span foreground='yellow'> '===================='</span></span>
<span background='yellow'><span foreground='blue'> '#! 20 Distros  '</span></span>
<span background='yellow'><span foreground='blue'> '#! Some have  '</span></span>
<span background='yellow'><span foreground='blue'> '#! require the default Themes '</span></span>
<span background='yellow'><span foreground='blue'> '#! for GTK  '</span></span>
<span background='brown'><span foreground='yellow'> '====================' </span></span>
<span foreground='blue'>
</span>

<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<span background='yellow'><span foreground='blue'> ' "SOFT" LockFile:'</span></span>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>
<span foreground='darkblue'>\
    #(: ------------------------------------------------
    #(:  Note:   
    #(:   MGR.sh is written with a "SOFT" LockFile.
    #(:      so error message is displayed, 
    #(:      and program continues to run. 
    #(:  Note: 
    #(:  'strict' lockfile method NOT implemented.
    #(:  	example: for 'LockFile' using 'exit 1'
    #(:  'strict' lockfile WILL 'exit' subroutine  
    #(:      at 'current' stack level. 
    #(:  'strict' lockfile WILL 'exit' program  
    #(:       only at 'base' stack. 
    #(:  'strict' lockfile MAY NOT exit/quit the script program. 
    #(:
    #(:  IF 'strict' lockfile block is written into a funxtion()
    #(:     ( which is a "sub-routine" )
    #(:		[which by definition is a sublevel in the stack],
    #(:  THEN 'exit' will only "pop" one level
    #(:     at the funxtion() stack level,
    #(:  	and will not 'quit' or 'halt' the PRG as desired.
    #(:
<b><span foreground='"'brown'"'>    "#:	MGR.sh has a 'SOFT Lock' method "</span> </b>
    #(:		User is responsible for correcting 
    #(:		repeated runs of MGR.sh . 
    #(:  'soft' lock produces 'non-fatal' errors.  
    #(:
    #(:
    #(:  A monster BASH script program like this 
    #(:  ('MGR' core program has 8357 lines) 
    #(:  ('MGR' system has > 12,000 lines )
    #(:   would be better implemented via 
    #(:   modern high-level language like Python.
    #(:   and would have been a flash 
    #(:   using FoxPro/VisualFox with imbedded T-SQL.
    #(:
    #(: ------------------------------------------------

<span foreground='"'green'"'>"___ Future Dev ___________________________"</span>
<b><span foreground='"'red'"'>"#: note:  Middle-Page-module"</span></b>
<span foreground='"'red'"'>"#: fxSbr_gui_MB_xml  "</span>
<span foreground='"'blue'"'>"#: called by : Main_GUI, EXIT:guiMB "</span>
<span foreground='"'red'"'>"#: purpose :  Middle-Page  Multi-Buttons  array "</span>
<span foreground='"'blue'"'>"#: - - -    of functional calls to sub-routines"</span>
<span foreground='"'blue'"'>"#: returns : "</span>
<span foreground='"'red'"'>"#:  "<b>"Selected Button"</b>" generates "'"token FnTarget"'" "</span>
<span foreground='"'blue'"'>"#:  - - - is sent as a token string echo into config-file"</span>
<span foreground='"'red'"'>"#:  "'"action"'" echo  token FnTarget  "'/"action"'""</span>
<span foreground='"'blue'"'>"#:  - - - is sent as a token string echo  "</span>
<span foreground='"'blue'"'>"#:  - - - into "'"0-MGR_MB_RetVal.cfg"'" "</span>
<span foreground='"'blue'"'>"#:  "<b>"File.cfg "</b>"will be read to "'"extract"'" token FnTarget"'". "</span>
<span foreground='"'blue'"'>"#:  "'""<b>"token FnTarget"</b>""'" will be "'"executed"'". "</span>
<span foreground='"'green'"'>"______________________________"</span>
<b><span foreground='"'darkred'"'>"#:       READ the CODE in the Middle-Vertical "'"Page 1-2-3"'" sections ."</span></b>
<span foreground='"'brown'"'>"#:		Sbr_gui_MB_xml  eval  will not initiate "'"action"'" "</span>
<span foreground='"'brown'"'>"#:		Sbr_gui_MB_xml writes "'"action"'" results into a file.cfg"</span>
<span foreground='"'brown'"'>"#:       BASH code  will import the "'"file.cfg"'" "</span>
<span foreground='"'brown'"'>"#:       BASH code  will call the "'"action"'" subroutine."</span>
<span foreground='"'brown'"'>"#:       BASH code  will call the external system executables"</span>
<span foreground='"'brown'"'>"#:       ... by passing a token thru a /tmp/Page_Control.flg "</span>
<span foreground='"'brown'"'>"#:       READ the CODE in the vertical "'"Center-Page"'" section ."</span>
<span foreground='"'brown'"'>"#:       READ the CODE  to see the specific method."</span>
<span foreground='"'green'"'>"------------------------------------------------------------------"</span>

</span>
..."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} #
export -f Sbr_Dump_FAQ
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_SRC)   #: A
#(: called by:  Main_GUI
#(: param:
#(: purpose:  Display Source via direct link in Main_GUI , returns to same.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     xmessage requires /tmp/help_box
#(:
#(: First Section is a Dump to Screen via gxmessage pulling /tmp/box_help
#(: Second Section is a Base-64 Cat to /my-applications/Mgr_Cat_64_.txt
#! #######################################################################
function Sbr_Dump_SRC() {   #: ACTIVE requires /tmp/box_help
	n=0
#(: lcFileXmessage="/usr/bin/xmessage" # old target
lcFileGXmessage="/usr/bin/gxmessage"    # current target 
    #!
lcMsgStr="===  Sbr_Dump_SRC gxmessage === "  # &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #!
#! begin Source Header
lcMsgSrc="${0}"	# "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"   # box_help is required by gtkdialog 
echo "# ${gcSysNameBase} #  textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
echo "# " >> ${lcMsgTrg}
echo "# { ${gcSysDistroName} } " >> ${lcMsgTrg}
echo "# " >> ${lcMsgTrg}
echo "# SOURCE CODE " >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_SRC " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# Source:  ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# Target:  ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# DOB:     ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Compiled: `date +%y%m%d-%H%M-%S-%a`"  >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "#       " >> ${lcMsgTrg}
#! end Source Header
#!
#! begin Source Body
cat ${0} >> ${lcMsgTrg}     ### Sbr_Dump_SRC   /tmp/box_help ###
    #!lcMsgTrgTxt="/MGR-Source.txt"
    #!cat ${0} > ${lcMsgTrgTxt}     ### Sbr_Dump_SRC   /tmp/box_help ###
    #! end Source Body
sleep 1		# wait for system 
#!
gxmessage -title "=== Source === gxmessage = "  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
#!
} #
export -f Sbr_Dump_SRC
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_GUI)
#(: called by:
#(: param:
#(: purpose: splash GTK GUI XML code 
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_GUI() {   #: ACTIVE # ${MGR_Master_GUI}
	n=0
lcFileGXmessage="/usr/bin/gxmessage"
   #
lcMsgStr="===  Sbr_Dump_GUI gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="/tmp/EmGa-Master-GUI.txt"
lcMsgTrg="/tmp/box_help"
    #!
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
    #!
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_GUI " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# MGR Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# DistroKernel: ${gcMGRKernVer}"  >> ${lcMsgTrg}
echo "# MGR ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}
cat ${lcMsgSrc} >> ${lcMsgTrg}     ### /tmp/box_help ###
sleep 1		# wait for system 
gxmessage -title "=== GUI = Graphical User Interface === gxmessage = "  -name "-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} #
export -f Sbr_Dump_GUI
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_IMG)
#(: called by:
#(: param:
#(: purpose: display all IMG code
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_IMG() {   #: ACTIVE Dump_Image
	n=0
lcFileXmessage="/usr/bin/xmessage"
lcFileGXmessage="/usr/bin/gxmessage"
    #
lcMsgStr="===  Sbr_Dump_IMG gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="EmGa-Master-IMG.txt"	
lcMsgTrg="/tmp/box_help"  
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "${gcSysDistroName} = textfile > cat + gxmessage" >> ${lcMsgTrg}    # preset First Line
echo "# running fx(Sbr_Dump_IMG) showing IMAGE code" >> ${lcMsgTrg}
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "#============================" >> ${lcMsgTrg}
echo "# EmGr-Image-all ===${lcMsgSrc}===" >> ${lcMsgTrg}	
echo "# total 37 images: 17 KBytes " >> ${lcMsgTrg}
echo "# total load time: 0.7 second" >> ${lcMsgTrg}
echo "#============================" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# MGR Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MGR Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`"      >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}
cat /tmp/EmGa-Master-IMG.txt >> ${lcMsgTrg} 	### /tmp/box_help ###
gxmessage -title "=== IMG === Image Embedded Code === gxmessage = " -name "-IMG-" -font bold -bg lightyellow -fg darkblue -center  -file ${lcMsgTrg}
} #
export -f Sbr_Dump_IMG
#!
#!
#(: =====================================================
#(: fx(Sbr_Dump_UPL)
#(: called by:
#(: param:
#(: purpose: splash legal statement by PeeBee
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! #####################################################
function Sbr_Dump_UPL() {   #: ACTIVE
	n=0
# lcStrUpPop is picked up by /box_ok 
lcStrUpPop="
DistroName: {   ${DISTRO_NAME}   }
Compiled: ${gcSysDevDob}
===========================================
Legal notice subroutine developed by peebee
- https://sourceforge.net/u/peabee/profile/
This program is free software; you can redistribute it
and/or modify it
under the terms of the GNU General Public License
as published by the Free Software Foundation.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
"
    #! -D---
/usr/lib/gtkdialog/box_ok "===  Legal === Message box_ok"  error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} #
export -f Sbr_Dump_UPL
#!
#!
#(: =====================================================
#(: fx(Sbr_Dump_Sys)
#(: called by:
#(: param:
#(: purpose: splash Dev Notes and test var
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! #####################################################
function Sbr_Dump_Sys() {   #: ACTIVE
	n=0
#! lcStrUpPop is picked up by /box_ok 
lcStrUpPop="fx(Sbr_Dump_Sys)
=======================================
DistroName: {   ${DISTRO_NAME}   }
DistroVersion: ${DISTRO_VERSION}
DistroKernel: ${gcMGRKernVer}
DateCompiled: ${gcSysDevDob}
=======================================
Save Bak File Name Mount=
"`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
Save Bak File Name Base Src=
"`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
=======================================
uname: 
`uname -a` 
kernal name: `uname -s` 
kernel release: `uname -r` 
kernel verson  `uname -v` 
system: machine: `uname -m` 
processor: `uname -p` 
platform: `uname -i` 
operating sys: `uname -o` 
gcSysDevDob = ${gcSysDevDob}
gcMgrDevId = ${gcMgrDevId}
gcSysDistroPuppySFS=${gcSysDistroPuppySFS}
gcPupSfsFile=${gcPupSfsFile}
gcMGRDistroVer=${gcMGRDistroVer}
gcMGRKernVer=${gcMGRKernVer}
  "
#! -D---
/usr/lib/gtkdialog/box_ok "=== System Notes and Var === Message box_ok"  error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # 
export -f Sbr_Dump_Sys
#!
#!
#! =======================================
#! end:  DUMP 
#! end:  DUMP 
#! end:  DUMP 
#! =======================================
#!
#!
#!
#!
#(: ======================================================
#(: fx(Sbr_Sys_Sync)
#(: called by: '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' + splash
#(: param:
#(: purpose:  link into 'busybox' binary '/bin/busybox'
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################
function Sbr_Sys_Sync() {   #: ACTIVE
#!
n=0
#!  clear lingering colors
/bin/echo -en "\\033[0;39m"		>  /dev/console
/bin/echo -en "\\033[60G"    >/dev/console
/bin/echo -en "\\033[1;33m"    >/dev/console
/bin/echo -e  "\\033[0;39m"   >/dev/console
#! 
if [ ! $1  ] ; then   # display
Sbr_Splash_It "< SYNC >  flush buffers" "orange" "purple" "1"    #! -D---
fi # end: [ $1 = "1" ]
#!
	sync   	# # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'
#!
} #
export -f Sbr_Sys_Sync
#!
#!
#(: ======================================================
#(: fx(Sbr_S2F1)
#(: called by:    EXIT:guiSimReStart, ReBoot, ReQuit
#(: param:
#(: purpose:
#(:
#(: calls: 	nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw
#(: method: code calling handled internal,
#(:		could loop via param
#(:     could call to external S2F-1 multiple times.
#(: sends:
#(: rationale:
#(: note :
#(:     # ## purpose: one-shot "SMP"
#(:     # ## nice -19 puts SMP at top of priority stack
#(:
#! ######################################################
function Sbr_S2F1() {   #: ACTIVE Sbr_S2F1
    # called by EXIT:guiSimReStart, ReBoot, ReQuit
	n=0
llRun01=1
lcRunNum01="19"
lcRunNum="${lcRunNum01}"
### write "C" syntax here
Sbr_Splash_It " ...Save-2-Flash...Standard...
.             nice -n ${lcRunNum} snapmergepuppy" "yellow" "brown" "3"    #! -D---
#!
	nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
#!
} #
export -f Sbr_S2F1
#!
#!
#!
#!
#!
#(: ====================================================================
#(: fx(Sys_PupState)
#(: called by Main
#(: param
#(: purpose:
#(:    consolidation of PUPSTATE
#(:     control generation of local var
#(:     control configfile
#(: rationale:
#(: 	Puppy writes the "state" variables into /etc/rc.d/PUPSTATE .
#(: sends:
#(: note:
#(: 	dox for export
#(:	export      varname
#(: 	export -f	file or funxtion
#(: 	export -d 	directory
#(:
#! ############################################################
function Sys_PupState() {   #: ACTIVE
	n=0
    lcVerDtsTmp="${gcMGRDob}"
	#
		if [ $PUPMODE -eq 2 ] ; then
			#
			lcMsgStr="
		PUPMODE is 2
		MGR requires 'Frugal Install'
		PUPMODE must be '13'           "
			#
			xmessage -timeout 3 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
			exit
			#
		else
			lcMsgStr="PUPMODE=${PUPMODE}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
		fi
	#
    export gcMGRDob="${lcVerDtsTmp}"
	#
	export gcSysDistroLoc="${PDEV1}"	### from PUPSTATE, from rc.sysinit.
	export gcZeroRun="$0"
    # note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then
	echo "BK ==============================================="
	lcSaveBkFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	lcSaveBkFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "BK ==============================================="
    # note  fi
    export gcSysDistroVer="${PUPSFS}"
    export gcSysKernVer=${gcSysKernVer}
	export gcSysVer="${PUPSFS}"	#: ${gcSysDistroVer}
	export gcPupSfsFile="`echo "$PUPSFS" | cut -f 3 -d ','`"
    export gcMGRDistroVer="${PUPSFS}"
    export gcMGRKernVer="`uname -r`"
    export lcPupMode=${PUPMODE}
    export lcPupHome=${PUP_HOME}
    export lcPupSave=${PUPSAVE}
    export lcPupMode=${PUPMODE}
    export gcPupSubDir=${PSUBDIR}
    export gcPupSubDirDts="${gcPupSubDir}.BKP-`date +%y%m%d-%H%M-%S`"
    lcPupSaveNameRaw="PUPSAVE : ${lcPupSave}"
    lcPupSaveName="`echo $lcPupSave | cut -f 3 -d "/"`"
    lcPupSaveNameDts="NameDts = ${lcPupSaveName}.BKP-`date +%y%m%d-%H%M-%S`"
    lcPupSaveNameTrg="${lcPupSaveNameDts}.tar.gz"
    lcPupSaveNameSrc="${lcPupSaveName##*/}"
    lcPupSaveData="`echo $lcPupSave | cut -f 2 -d "/"`"
    lcPupSaveData="/initrd${lcPupHome}/${lcPupSaveData}/${lcPupSaveName}"
    lcPupDistroVer="${PUPSFS}"
    #! dev: "calc" if [ zero ]  for "${lcPupRamObjMsg}"
    if [ "${lcPupRamObjMsg}" ] ; then  # NOT ZERO   # do nothing
         n="0"
        #! MGR has been run/initialized the "first" time. So, Will Show "RamObjMsg" Col #1, bottom. 
        sleep .1    
    else    # so must generate . 
        #! ------------------------------------
        aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
        read -r b ccc <<< "$aa"	# --- saveDATA size calc
        #!
        lcPupRamObj="${b}"
        lcPupRamObjMsg=" DATA size > ${lcPupRamObj} MB "
        #!
        ### changed from leading grave [`] to enclosing double-apostrophe ["]
        ### FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '"
        ### export gcFreeRamNow="${FREERAM}"
        ### export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
    fi
    #!
	export gcPupSave="${PUPSAVE}"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
	export MGR_LockFile="/tmp/MGR_LockFile"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
    #!
	export gcPupSave="${PUPSAVE}"
	export MGR_ReStart_flg="/tmp/MGR_ReStart.flg"
    export lcPupHome lcPupSave  lcPupMode
    export lcPupSaveNameRaw lcPupSaveName lcPupSaveNameDts
    export lcPupSaveNameTrg lcPupSaveNameSrc gcPupSubDir
    #!
} #
export -f Sys_PupState
#!
#!
#!
#(: ===========================================================
#! Check-Box "CBX"  
#(: ===========================================================
#(: fx(Sbr_CBXAR3)       # NOT ACTIVE  Check-Box "CBX"  # External calls
#(: called by: if [ "${EXIT}" == "CBXARS" ] || [ "${EXIT}" == "CBXARB" ] || [ "${EXIT}" == "CBXARQ" ] ; then
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin: ( EXIT:'CBX APPLY+')
#(: begin: check for "APPLY Checks" command   Check-Box "CBX"  # External calls
#(: fx(FT_EXIT='APPLY_Checks_All_')
#(: fx(FT_EXIT='CBXARR')
#(: fx(FT_EXIT='CBXARS')
#(: fx(FT_EXIT='CBXARB')
#(: fx(FT_EXIT='CBXAPO')
#!
#! Fall-Thru Method 
#!
#! ############################################################
#!  via ( EXIT:CBX_APPLY+ )
#! if [ "$EXIT" = "CBXARS" ] ; then ; n=0 ; fi   # CBX ARS, ARB, ARQ ComboBox
#! function #! function [EXIT:CBXAR3() #! function [EXIT:CBXARB() #! function [EXIT:CBXARQ()
#! function Sbr_CBXAR3() {     # NOT ACTIVE  Line 6297
#!     n=0
#! if [ ${EXIT} == "CBXARS" ] || [ ${EXIT} == "CBXARB" ] || [ ${EXIT} == "CBXARQ" ] ; then
#!  		n=0     
    #(: Apply button NOT CONVERTED to funxtion format 
    #(: check for prior "APPLY Checks" commands
 	#(: function ft(FT_EXIT=') [ ${llCBXMASTER} = "1" ]
    #! NO FUNCTION HERE !
#! fi	# end: check for "APPLY Checks" command
#! } #! end: ( EXIT:'CBX_APPLY+')
#! export Sbr_CBXAR3
#! =====================================================================
#!
#!
#!
#! ===========================================================
#! begin :  Bak---   BakAll   BakOne
#! ===========================================================
#!
#(: ===========================================================
#(: ft(Sbr_BakOneArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, only MGR "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##########################################################
function Sbr_BakOneArcDts() {       # Active  
    #! [EXIT:guiMgrOneArcDts] [BakOne]
    #!
    lcSysFnPre="rc.z_"
	lcSysNameBase="MGR"         # ${gcSysNameBase}
	lcSysFnVer="-7"     # "${gcMgrVer}"   # -7
    lcSysNameExt=".sh"
	lcSysArcFnSrc="${lcSysFnPre}${lcSysNameBase}${lcSysFnVer}"
    lcMgrRealFnSrc="`echo -n "$0" | cut -f 2 -d '/'`" 
    #! grRealFnsrc="`echo -n "$0" | cut -f -1 -d '/'`"   #  "./MGR-7.sh"
    #! used only in Sbr_BakOneArcDts
    #! *********************************************************
    #!
    lcMgrArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"	# upupkk, upupbb, upupjj, upupmm+bw
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    #!
#! === MGR Arc+DTS === BackGround ============================
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
*.        BakOne  This Shell Script  + DTS  
*.   -> /mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/     
*.   
*.
*.
*.
*.
*.
*.
*.
*.
*.   
*________________________________________________________________________________________" &
	pidx=$!
	GTKPIDmgrarcdtsA=$!
    sleep 1
    # kill ${GTKPIDmgrarcdtsA}
    Sbr_Splash_It "#(: note : BakAll for ONLY the current 'MGR.sh' 
        #(: into the /Edit developmental subdir " "green" "yellow" "3"
    #!
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    #!
    #! === duplicate ============================================
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/${lcSysArcFnSrc}.sh"
    lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/${lcSysArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}.sh"
    #! ===============================================
    #!   
    echo  "!:  ${lcSysArcFnSrc}"
	echo  "fr: ${lcFnSrc}"
	echo  "to: ${lcFnTrg}"
     #!
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
*.  Single MGR file DTS backup
*.   from:   ${lcFnSrc}
*.   to:      ${lcFnTrg}
*." &
	pidx=$!
	GTKPIDmgrarcdts=$!
    sleep 1
        #!
        cp -v ${lcFnSrc} ${lcFnTrg}
        #!
        sleep 1
        Sbr_Splash_It "Done:
    *.   from:   ${lcFnSrc}                                        .
    *.   to:      ${lcFnTrg}" "yellow" "black" "2"
        #!
        kill ${GTKPIDmgrarcdtsA}
        kill ${GTKPIDmgrarcdts}
        #!
  } # 
export -f Sbr_BakOneArcDts
#!
#!
#!
#! ##########################################################
#!
#!
#(: =====================================================
#(: fx(Sbr_BakAllArcDts_One)
#(: called by: Sbr_BakAllArcDts
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:  Sbr_BakAllArcDts
#(: method: cp -v   
#(: sends:
#(: rationale:  replaces external rc.z_E3R.sh 
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#(: ft Sbr_AllArcDts     # called by: Sbr_BakAllArcDts   # [ BakAll ]
#! #####################################################
function Sbr_BakAllArcDts_One() {    #  ACTIVE #  # called by: Sbr_BakAllArcDts    for < BakAll-RS > < BakAll-RB >
    n=0 # [ BakAll ]
    #! ===== Sbr_BakAllArcDts_One ==========================
   #! param: SubDir ,  FileName 
	lcSysNameSD="${1}"
    lcSysFnPre="rc.z_"
	lcSysNameFN="${2}" 
    lcSysFnExt=".sh"
	#! lcSysArcFnSrc="${lcSysFnPre}${lcSysNameFN}"
	lcSysRealFnSrc="${lcSysFnPre}${lcSysNameFN}"
    #!  gcSysDevSubId  is  upupkk, upupbb, upupjj, upupmm+bw, else "..."
    lcSysArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"	
	lcSysArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    #!
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcSysNameSD}/${lcSysRealFnSrc}${lcSysFnExt}"
    #!
    #! target root/my-applications   RA     is  /Root/Applicatons
    lcFnTrgRA="/root/my-applications/${lcSysRealFnSrc}${lcSysFnExt}"
    #! target /mnt/home/MGR-All-Arc-Dts_   MH    is   /Mount/Home 
    lcFnTrgMH="/mnt/home/MGR-All-Arc-Dts_/${lcSysRealFnSrc}_${lcSysArcSubName}${lcSysArcDtsNow}${lcSysFnExt}"
    #!
    #! Check-If  and Touch  # is  not with DTS  #  is with 'flg'
    lcFnTrgMHflg="/mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg"
    #!
     if  ! [ -e  ${lcFnTrgMHflg} ]   ;  then          
        n=0
       touch ${lcFnTrgMHflg}    # will create or update this Required SubDir
        echo "Sbr_BakAllArcDts_One" > ${lcFnTrgMHflg} # load flag file.
       Sbr_Splash_It "--- FLAG ---" "red" "black" "3"       #! -D---   temp
   else
        n=0
    fi 
    #!
    Sbr_Splash_It "--- copy -v  --- ${lcFnTrgRA} ---" "yellow" "purple" "1"       #! -D---
	cp -v   ${lcFnSrc} ${lcFnTrgRA}
    #!
    Sbr_Splash_It "--- copy -v  --- ${lcFnTrgMH} ---" "orange" "purple" "1"       #! -D---
	cp -v  ${lcFnSrc} ${lcFnTrgMH}
     #!
} # 
export -f Sbr_BakAllArcDts_One # called by: Sbr_BakAllArcDts
#!
#!
#(: =====================================================
#(: fx(Sbr_BakAllArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:
#(: method: cp -v
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#! =====================================
#(: ft Sbr_BakAllArcDts   to "/mnt/home/MGR-All-Arc-Dts_"
#(: ft Sbr_E3RAllArcDts   to "/root/my-applications"
#! =====================================
#!
#! #####################################################
function Sbr_BakAllArcDts() {    #  ACTIVE # should be called by < BakAll-RS > < BakAll-RB >
	n=0
    lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    lcTargetSDbase="/mnt/home"
    Sbr_Splash_It "--- Sbr_Bak_ALL_Arc_dts ---${lcTargetSD}" "yellow" "purple" "3"       #! -D---
    lcMgrArcDtsNow="`date +%y%m%d-%H%M-%S`"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    #! -D---  ### BackGround ###
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true -close never -text "\
*.       Sbr...Bak_All_Dts  
*. for ALL major 'EDIT' scripts  + DTS  
*.
*.
*.
*.
*.
*.Multi:  MGR, + CTX, + , et al, geany.config 
*._______________________________________________________" &
	pidx=$!
	GTKPIDmgrarcdtsA=$!
    sleep 1
    #!     "BakAll-Arc-Dts_"     # used by Sbr_BakOneArcDts  and Sbr_BakAllArcDts
    #! CHECK   /mnt/home/  ;  then # make basesubdir
    if [ ! -f /mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg.tst ]  ;  then # make one
        n=0
        Sbr_Splash_It "--- TOUCH ---${lcTargetSDbase}--- " "yellow" "red" "3"       #! -D---
        ### checkif and mkdir /mnt/home/MGR-flg/  via "touch" command
        #~ touch /mnt/home/${gcMgrAllArcDtsSN}/MGR-ALL-Arc-Dts-flg.tst # will create or update this Required SubDir
        touch /mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg.tst # will create or update this Required SubDir
        lcFnFlg="/mnt/home/${gcMgrAllArcDtsSN}/MGR-ALL-Arc-Dts-flg.tst"
        echo 'MgrAllArcDts flag file' > ${lcFnFlg} # load filename into flag file.
    else
        n=0
        #! Sbr_Splash_It "--- INIT --- Sbr_Bak_ALL_Arc_dts --- " "yellow" "purple" "3"       #! -D---
   fi 
    #!
    lcFnTrg="/mnt/home/${gcMgrAllArcDtsSN}/rc.z_${lcSysArcFnSrcFn}-${lcMgrArcSubName}-${lcMgrArcDtsNow}.sh"
    #!
    #! =====Sbr_BakAllArcDts==========================
    #! param:         SubDir , FileName ,   TargetSubdir 
    lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    #! Sbr_BakAllArcDts_One "MGR"    "MGR"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGR"    "MGR-6"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGR"    "MGR-7"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGR"    "MGR-8"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MCI"     "MCI"         "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGS"    "MGS"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "E3R"     "E3R"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTX"     "CTX"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTU"     "CTU"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTA"     "CTA"         "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-SL"    "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-SLX"  "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-5.2"      "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "PHB"     "PHB-deb"      "/mnt/home/MGR-All-Arc-Dts_"
    #!
    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`"
	lcSysArcFnSrc="Geany.conf"
    #!
	lcFnSrc="/root/.config/geany/geany.conf"
	lcFnTrg="/mnt/home/${gcMgrAllArcDtsSN}/geany.conf-${lcMgrArcDtsNow}.sh"
	#!
	Sbr_Splash_It " ${lcFnTrg} " "yellow" "blue" ""     #! -D---
	#! from MGR(with suffixed surname)
	cp -v ${lcFnSrc} ${lcFnTrg}
	#! out to arc_MGR_dts_sh_
	#!
    #! Sbr_BakAllArcDts special image
    #! "Lxgen_" this needs to be an embedded image.   Standard image for "MGR" .   Else "system" image. 
	lcFnSrcBase="Lxgen_"
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcFnSrcBase}.jpg"
    lcFnTrg="/root/my-applications/${lcFnSrcBase}.jpg"
    #!
	cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    #! Sbr_BakAllArcDts special image
    #! "Lxgen_" this needs to be an embedded image.   Standard image for "MGR" .  Else "system" image. 
	lcFnSrcBase="Dxstro_"
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcFnSrcBase}.jpg"
    lcFnTrg="/root/my-applications/${lcFnSrcBase}.jpg"
    #!
	cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
   #!
    #! =====================================================
    #! on return, then Sbr_Cbx_ReStart 1
    sleep .3
	kill ${GTKPIDmgrarcdtsA}    # main
    #!
    #! fi # end: guiMgrAllArcDts
} # end  
export -f Sbr_BakAllArcDts
#!
#! #####################################################
#(: ===========================================================
#! end :   BakAll
#(: ===========================================================
#!
#!
#!
#(: =====================================================
#(: fx Sbr_Splash_Quit()
#(: called by: Main GUI "QUIT Program"
#(: param:
#(: purpose: "QUIT" program has banner.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! #####################################################
    function Sbr_Splash_Quit() { 
        #!
        echo
        echo
        echo "*======== MGR_Main-Quit ========*"  
        lcMsgStr0=$1
        #!
        echo
        echo
        lcMsgStr="SDT*===>>> ${lcMsgStr0} <<<===*SDT"    # text fg mrg
        Sbr_Str2DevTrm "$lcMsgStr" "7" "7" 
        Sbr_Str2DevTrm "$lcMsgStr" "6" "6" 
        Sbr_Str2DevTrm "$lcMsgStr" "5" "5" 
        Sbr_Str2DevTrm "$lcMsgStr" "4" "4" 
        Sbr_Str2DevTrm "$lcMsgStr" "3" "3" 
        Sbr_Str2DevTrm "$lcMsgStr" "2" "2" 
        Sbr_Str2DevTrm "$lcMsgStr" "1" "1" 
        Sbr_Str2DevTrm "$lcMsgStr" "2" "2" 
        Sbr_Str2DevTrm "$lcMsgStr" "3" "3" 
        Sbr_Str2DevTrm "$lcMsgStr" "4" "4" 
        Sbr_Str2DevTrm "$lcMsgStr" "5" "5" 
        Sbr_Str2DevTrm "$lcMsgStr" "6" "6" 
        Sbr_Str2DevTrm "$lcMsgStr" "7" "7" 
        echo 
        if [  -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
            n=0   
            echo    # ShowBanner
            lcMsgStr="===... clearing EmGrImg ...==="
            Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" #& sleep .5
            Sbr_Splash_Banner "$lcMsgStr" "33m" "33m" #& sleep .5
            Sbr_Splash_Banner "$lcMsgStr" "35m" "35m" #& sleep .5
            echo
            rm ${gcEmGaImgFnTrgTxtMaster}
            sleep .1
        fi
         #! colorful rainbow splash for FALL-THRU trap for 'loose' code.  Str, Mgn, Color
         lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
        DISTRO_NAME_Z="Alpha:"$(echo $DISTRO_NAME | tr -dc 'A-z')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        DISTRO_NAME_Z="Numbers:"$(echo $DISTRO_NAME | tr -dc '0-9')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
} # end
export -f Sbr_Splash_Quit
#!
#!
#!
#! ######################################################
#! ######################################################
#! ######################################################
#!
#!  ## all function ( ) moved to top of code
#(: ## all GUI EXIT to "IF/fi" Selection aremoved to bottom of code, "Fall-Thru" method
#(: fx(name) is "function"  real.
#(: ft(name) is "fall-thru" [ if [] fi ]
#(:
#! ######################################################
#! ######################################################
#! ######################################################
#!
#!
#!
#!
#! ######################################################
#! ######################################################
#! ######   start  M.A.I.N.(.).  #####################################
#! ######################################################
#! ######################################################
#!
#!
#(: ======================================================
#(: fx(MGR_Main)    # main()
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#=== MAIN ====================================================
#!
#! Terminal Screen Only.
lcMsgStr=". . . . . . .  `date +%y-%m-%d--%H%M-%S`. . . . . . . ."  
Sbr_Str2DevTrm "${lcMsgStr}" "1" "0" 
lcMsgStr="       :main === RUNNING === main:"
Sbr_Str2DevTrm "${lcMsgStr}" "2" "4" "1"
lcMsgStr="     ###  ${0} main() begins   ### "
Sbr_Str2DevTrm "${lcMsgStr}" "5" "0" "1"
#!
#! =======================================================================
#! =======================================================================
#! Check If for installed System Mode
#(: function if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then # frugal install
MODE="`grep PUPMODE /etc/rc.d/PUPSTATE | cut -f 2 -d "="`"
if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
    n=0
else 
    lcMsgStr="MODE is not FRUGAL mode '12' or '13' " 
    lcDialogColor="  -fg black -bg red  "
    Sbr_Splash_It " $lcMsgStr " "black" "red" "5"   #! -D---
    exit 1
fi
#: end: fi [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
#!
touch /0-LogIn-DTS  # this call should / must be in main ( ) 
#!
Sbr_Sys_SetVerDts # this call should / must be in main ( ) 
#!
Sbr_CDW_Embedded_Dialog_Colors		# setup color constants
#!
Sbr_CDW_EGI_CheckIF		# Check Graphic Images 
#!
#! Sbr_Page_Init    # check / control the Paged GUI # old method
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ARB_init  : 
#(: purpose:config controls  menu.lst # during main run ( )
#(: method:
#(:    (1) read existing config for OS "Idd",
#(:    (2) install generic "full enough" "SHORT" MENU.lst
#(:         with default "0,1,2,3,4" matching config "Idd"
#!
Sbr_ARB_Init   # # # must be in main ( ) # read config init for "ARB" config
#!
lcMsgStr="=== PupState === " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
Sys_PupState   ### Gather the "state" variables from OS
#!
#!
#(: ======================================================
#(: begin lock-file
#(: Rationale: Lock-File "Soft" Version
#(: MGR is a Master Conrol program.
#(: MGR must have a 'LockFile' to control for "Run-Twice".
#(: ======================================================
#(: ft("LockFile") not written as a "funxtion" LockFile subroutine
#(: called by: main () as "in-line code" ,
#(:		so that "exit 0" is immediate, from top of "0" empty stack.
#(: param:
#(: purpose: provides a "Soft-Lock" method.  IF error, THEN continue .
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin lock-file section ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    #(: generate the name of the 'lock-file' in 'export' section.
    lcMsgStr="=== Lock-File === " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	#(: begin Lock-File Section =======================================
	#(: if previous lockfile is found, then throw a flag, cleanup, possibly exit '1'.
	#(: remember, we have written a "Soft-Lock"
	if [ -f ${MGR_LockFile} ]; then      #: this is Main () lockfile
		lcMsgStr=" Error: Soft LockFile Control
  		  !!! MGR_Running_Already !!!
	  	  ... (1) Quit MGR program
		  ... (2) Clear Running MGR window
		  ... (3) Re-Start MGR program
		  ... (4) however, always, MGR program will continue (Soft Lock)
		#(: IF Hard-Lock code, THEN  ${MGR_LockFile} can prevent re-running program.
		#(: IF Soft-Lock  code, THEN  program allows Continue through a non-fatal error. 
        #(: ideally,
        #(: user will clear lingering lockfile, manually, immediately, 
        #(: then restart program."
		xmessage  -name 'MGR_Soft-Lock-'  -timeout 1  -center   -fg yellow  -bg brown  "${lcMsgStr}"
		#(: Note on "Lock-File" method at end of source code.
		#(:
	else
		lcMsgStr=" =  Config File Not Found  :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	fi
	#!
    #(: >>> begin set lock-file
	#(: Always !
    #(: so Otherwise , SET the lock-file, during this program run.
    touch "${MGR_LockFile}"   # Always ! for "Soft Lock" 
    #(: remove this lockfile at end of "QUIT", bottom of code.
    #!
    #(:
    #(: 
    #! #####################################################
    #(: This is the main () level, and 'exit' will drop out of prg.
    #(: but,
    #(: IF 'Lock-File found' 
    #(: THEN check is inside a subroutine,
    #(: THEREFORE 'exit 1' will only exit up to the previous stack level
    #(:    and will not exit program. 
    #(: THEREFORE must pass back a RETVAL flag of '1' to trigger another 'exit'
    #(: Note: This is a BASH system stack '0' concern,
    #(:		Controlled by manually placing 'Check Lock-Flag' at stack base level '0'.
    #(:
#(: end lock-file section
#! ######################################################
#!
#!
#(: ###^^^ GUI ^^^^^^^ example:
#(: === header ===
#(: fx()
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#!
#! end: Fall-Thru "initz" function 
#!
#! ######################################################
#! ### begin TEST CONFIG 
#! ######################################################
#!
#! MGR_CBXstatus for status of ComboBox column "1"
if [ -f "${MGR_CBXstatus}" ]; then
    rm -f "${MGR_CBXstatus}"
    export lcCBXstatus="   ...Applied..."
else
    export lcCBXstatus="   ,,,,,,ready,,,,,,   "
fi
#!
#!
#!
#! Test IF  "C3M CONFIG ARB" ,  under development
#! working C3M CONFIG ARB
if [ -f ${gcMgrArbCfgFn} ] ; then
    n=0
    gcMgrArbCfgFn="/root/my-applications/bin/C3M_Config_Arb"   # ASSIGNED fx(Sys_PupState)
    gcMGRConfigArbIdd=`cat ${gcMgrArbCfgFn}`   #  extract and export Idd
    echo "gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
    #! Sbr_Splash_It "${gcMgrArbCfgFn}:${gcMGRConfigArbIdd} Found---" "orange" "purple" "1"   #! -D---
else    #  NO Config value
    n=0
    touch ${gcMgrArbCfgFn}
	gcMGRConfigArbIdd="---"
    Sbr_Splash_It "${gcMgrArbCfgFn}:${gcMGRConfigArbIdd} Config File NOT Found---" "orange" "purple" "3"   #! -D---
fi	#
#! working C3M CONFIG ARB
	echo "ID:gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
	echo "FN:${gcMgrArbCfgFn}:"
#! exit
#!
    #! ------------------------------------------------------------------------------
    #! ------------------------------------------------------------------
    #!=====================================================
    #(: fg(MGR_Master_GUI=)   #: A
    #(: called by: main program via fall-thru
    #(: param: only the Fall-Thru <ACTION> sub-name .
    #(: purpose: Master gtkdialog XML Menu structure.
    #(: calls:
    #(:    every thing via gui buttons to [ gui fall-thru "IF/ ft(name) /FI" ]
    #(:
    #(: method:
    #(:   (1) gui <action> "EXIT:ft(name)"
    #(:   (2) 'gui fall-thru to "IF/ ft(name) /FI" (at bottom of source code)
    #(:   (3) call with param to "subroutines"     (at top of source code) .
    #(:
    #(: sends: "EXIT" = choice
    #(: rationale:
    #(: note :
    #(: 	this width=1500 works good on UpupBB. Other Distro may require adjustment or default theme.
    #(:
    #(: note:
    #(: Standard Gui Button Call Method is TWO-STEP:
    #(:  (1) gui-Buttons "call" to a "Fall-Thru funxtion written as ft("IF/FI") (in lower part of source).
    #(:  (2) "IF/FI" funxtions then call regular subroutine funxtion() (at top of code).
    #(: EXAMPLE:  button "MntAll" is <action>'EXIT:MNT+'</action>
    #(: which will exit and fall-thru to "ft( 'EXIT:MNT+' )"
    #(: which will then call "funxtion Sys_MGR_pMount()" (written in top part of source).
    #(: This is the Standard Method written into this Main Gui,
    #(:   which allows parameters to be sent to complex sub-routines .
    #(:   which avoids lack of parameter passing in the gui Button gtkdialog process.
    #(:
#! begin: Test before possible ReStart so MGR is initialized without duplication.
if [ ! -f ${gcEmGaImgFnTrgTxtMaster} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
    lcMsgStr=">>>=== First Time Run ===<<<"     # && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    #! Sbr_Splash_It ${lcMsgStr} "orange" "purple" "1"    #! -D---
    # Given: not file, Then: touch one. 
    # Generate a ReStart Message for First Time Run .  ??? MGR_ReStart_flg ???
    touch ${gcEmGaImgFnTrgTxtMaster}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
else    # this is NOT a First-Time-Run, therefore Do Not ReStart.
    # simple background message
    lcMsgStr=">>>=== No ReStart Required ===<<<"
    #! Sbr_Splash_It ${lcMsgStr} "orange" "purple" "1"    #! -D---
    #~ sleep .3
fi #
#! end: Test before possible ReStart so MGR is initialized without duplication of images to /tmp
###
### MGR 
###
########################################################
#!
#! problem: in some Puppy OS, 
#!    each time the Main Gui XML is run, 
#!    there is a delay ??? until Main Gui <button> are 'active'. 
#!      may be dependent on re-sizing each element of gui.
#!
#! cause: each OS might have special display pixel count, font size, etc. 
#! run gui test on each OS:__________Menu # __Distro Sub Name  
#!
#! GTK main XML gui is dependent on system screen-size, theme , font size. 
#!Generally, the"default" theme, and the "default" character size works,
########################################################
#! run gui test on each OS:__________Menu # __Distro Sub Name  
#! export lcGuiWidthRequest="1730"		# 2 "upupKK" Raleigh theme
#! export lcGuiWidthRequest="1730"		# 1 "upupBB" K:4 Rustic theme
#! export lcGuiWidthRequest="1380"		# 1 "upupBB" K:5 Rustic theme
#! export lcGuiWidthRequest="1730"		# 2 "upupJJ" ? theme
#! export lcGuiWidthRequest="1630"		# 3 "upupFF"
#! export lcGuiWidthRequest="1630"		# 4 "slacko14.2"  "S7" 
#! export lcGuiWidthRequest="1650"		# 5 "tahr"  tahr-6.0.6
#! export lcGuiWidthRequest="1700"		# 6 "xenial64"   "Xenial-64-750"  X64-750
#! export lcGuiWidthRequest="1870"		# 7 "upupii+d"   "UpupII" ImpishIndra
#! export lcGuiWidthRequest="1680"		# 8 "slacko1564.0 K:5"
#! export lcGuiWidthRequest="1870"		# 9 "slacko14.2"
#! export lcGuiWidthRequest="1880"		# 10 "xenial"
#! export lcGuiWidthRequest="1830"		# 11 "slacko14.2"	Slacko-LxSc-20.01
#! export lcGuiWidthRequest="1830"		# 12 "april" buggy  XXX
########################################################
#!
#! ## top MAINGUI MGR R ### INIT ####################################
#! ${gcMgrDistroName}
export lcGuiSplT0="${gcMgrDevId}"
export lcGuiSplT1="<span color='"'$lcGuiColorred'"'><b>'"{${gcMgrDevId}"'}</b></span>"	# not used 
export lcGuiSplT2="<span color='"'$lcGuiColorgrn'"'><b>'"${gcSysSave}"'}</b></span>"	# not used 
export lcGuiSplT3="<span color='"'$lcGuiColorgrn'"'><b>'"${gcSysSaveFn}"'}</b></span>"	# not used 
export lcGuiSplT4="<span color='"'$lcGuiColorgrn'"'></b></span>"	# not used 
#!
#! === Pre-Set =====================================================
export      lcGuiWidth="1450"
export      lcGuiHeight="900"
export      lcGuiTheme="default"
export      lcGuiChar="128"
export      lcGuiVert="1"  # control number of vertical bars / spacers / vseperators to match OS settings. 
#!
#!
#! Test Setup, to control GTK XML screen size. 
#! Here, test methods to control different OS setups on screen size and font size and theme .
#! 
#! case ${gcSysDistroName} = based on /DISTRO_SPECS  "DISTRO_NAME" from Puppy Distro OS.
#! case GTK theme = "default" and CharSize = "128" 
#! # lcGuiVert="1" is "Visible"
#! # lcGuiVert="0" is "Not Visible"
#!  case "${gcSysDistroName}" in   
    #!  "BookwormPup32") lcGuiVert="0" ;; 
    #!  "KineticPup32")  lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "BionicPup32")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "JammyPup32")    lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "S15Pup64")      lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "ManticPup32")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="760" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "tahrpup")       lcGuiVert="1" & lcGuiWidth="1600" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "BookwormPup32") lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "xenialpup64")   lcGuiVert="1" & lcGuiWidth="1600" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "XXXXXXXXXXX")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  *)  lcGuiVert="1" ;;	       # "1" is Visible
#!  esac
#!
#! Note: all above were developed and tested in V.6, very wide main gui. Some Adjustments were needed. 
#! Note: all were tested again in V.7,  much better.  Some Adjustments were needed. 
#!
#! Standard Splash routine:
#!  Sbr_Splash_It "${gcSysDistroName} :${lcGuiVert}:" "yellow" "purple" "3" 
#! ========================================================
#! Note: for V.6 wide main Gui.
#! <window dimentions depend on specific Puppy Distro, and user selected GTK Theme, and selected CharSize. 
#! These data are with theme="default", charsize="128", as supplied with each Puppy Distro OS "original". 
#! # for "default" theme, w="1650" is ok for some.
#! # for "default" theme, w="1380" is ok for some.
#!
#! # for most themes, w="1380" is appropriate. 
#! # for most Puppy Distro, theme="default" or "Polished Blue" works OK. 
#!
#!  K-K   = w="1650", h="750"  
#!  B5B   = w="1380", h="750"  
#!  J-J   = w="1650", h="750"  
#!  S1564 = w="1650", h="750"  
#!  uMM   = w="1600", h="750" 
#!  T-6   = w="1600", h="750"
#!  DBK   = w="1650", h="750"
#!  X64   = w="1400", h="750"
#!  B4B   = w="1380", h="750"  
#!
#! Note: Version_6.  all above were developed and tested in V.6, very wide main gui. Some Adjustments were needed. 
#! Note: Version_7.  all were tested again in V.7, compact/consolidated main gui, much better.  No Adjustments needed.
#!
#! <window dimensions must be hard-code.
#! width-request="1400" is important issue.
#! Theme and Alpha-Size and Screen-size are controlling variables. 
#! <window dimensions must be hard-code >.
#! below, the export var cannot be inserted in the <window line, it will not "expand" . 
#! export lcGuiWindowTitleMain='"${lcGuiWindowTitle}" 
    #! window-position="1" 
    #! width-request="1380"
    #! height-request="750" 
	#! space-expand="true" 
 	#! border-width="3"
	#! resizable="true" '
#!
### MGR
export lcBSS_TrgSubDir="TrgSubDir"			# File Select # Not Used 
export gcPBKP_BACKUP_PATH="BACKUP_PATH"		# File Select # Not Used 
#!
#! Primary "Window" title  Not Used
export lcGuiWindowTitle="_X_MGR_${gcSysDistroLoc}::${lcGuiSplT0}::${lcGuiSplT3}::${gcSysSave}::${gcSysIdFull}::${gcSysKernName}::${gcSysDevHw}::${gcSysDevDob}::${gcMgrVer}"
#! Secondary "Frame" title embeds OK.
export lcGuiFrameTitle="  ${gcMgrDevName}  "
# :${gcSysDistroLoc}_${gcMgrDistroName}_${gcSysIdFull}_v:${gcMgrVer}_${gcSysSaveFn}_Dob:${gcSysDevDob}-:"
#!
    #~ width-request="1380"
#! ## top # MGR # Dialog BEGIN ################################
export  MGR_Master_GUI_Dialog='
<window  title="MGR_Master_GUI_Dialog"
    window-position="1" 
    width-request="800"
    height-request="750" 
	space-expand="true" 
 	border-width="3"
	resizable="true" 
>  

<vbox>
    <text visible="false" editable="false" use-markup="true" xalign=".5">
        <label>"'============================='"</label> </text>
        <button visible="1"   tooltip-text="page-1__width-162-space>" <height-request="15">
                <label>"'!____!!!!!!!!_____!_________!_________!________!__'"</label>
                <action>lcEXIT:spacer</action> </button>
        <button  height-request="35"  size="large"  weight="bold" 
tooltip-text=" Manager ReStart
*.                       This is LINUX, 
*.                       this is a Free OPEN SOURCE SYSTEM, 
*.                       so READ the code and Learn !
*.                       #: Main Screen has top level tabs for 
*.                                THREE Page-Book windows . 
"
            has-focus="false"  xalign=".5" >
            <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>50</width><height>50</height>
                <label> "'${lcGuiFrameTitle}'"  </label> 
            <action>'EXIT:guiTopReStart'</action> </button>
	<vseparator height-request="3" > </vseparator>
 
   <hbox visible="1" homogenous="false">
            <hseparator width-request="40"></hseparator>
     <hseparator width-request="20"></hseparator>
            <button   visible="1" has-focus="false" height-request="43"  xalign=".5"  
                tooltip-text="'-Special_PageBook_Main_page1-top_P1_'" >
               <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-MAIN-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenMain_window</action> <action function="'closewindow'">msg_DC_LxgenMain_window</action>
                           <action>'0'</action>                    </button>
            <button   visible="1" has-focus="false" height-request="43"  xalign=".5"
                tooltip-text="'-Special_PageBook_Doxuments_page2-top_P2_'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-HELP/DOX-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenDox_window</action> <action function="'closewindow'">msg_DC_LxgenDox_window</action>
                           <action>'0'</action>                     </button>
            <button   visible="1" has-focus="false" height-request="43"  xalign=".5" 
                tooltip-text="'-Special_PageBook_Utility_page3-top_P3_'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-UTIL-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenUtil_window</action> <action function="'closewindow'">msg_DC_LxgenUtil_window</action>
                           <action>'0'</action>                     </button>
            <button   visible="1" has-focus="false" height-request="43"  xalign=".5"  tooltip-text="'-these-are-TABs_for_PageBook__'" >
                <input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>10</width><height>10</height>
                <label>"'PageBook'"</label> <action> "0"</action></button>
              <hseparator width-request="140"></hseparator>
    </hbox>
    <vbox>
        <vseparator height-request="1"> </vseparator>
    </vbox>
<hbox>

<text visible="false" editable="false" use-markup="true" xalign=".5">
    <label>"'==============================================='" </label> </text>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>'0'</action> </button>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>'0'</action> </button>

<text visible="false" editable="false" use-markup="true" xalign=".5">
    <label> "=============================================== " </label> </text>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>'0'</action> </button>
<button visible="0" tooltip-text="'Margin-C0vert'" > <label> "''" </label><action>lxAction:botC0</action> </button>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>'0'</action> </button>

<vbox>
    <vbox>

                        <button   visible="0" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page4-page-System---'" >
                            <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>15</height>
                            <label> "'---System---'" </label><action>'0'</action> </button>

        <button visible="1"   tooltip-text="width-80-space>'================================================'" <height-request="1">
			<label>"'!________!________!________!________!________!_________!_________!_________!xx'"</label>
            <action>lcEXIT:spacer</action> </button>

                        <button visible="0"has-focus="false" width-request="111" height-request="10"  xalign=".5"  tooltip-text=",,," >
                                <label> "'---*---'" </label><action>'0'</action></button>
                
            <text visible="1"   editable="false" use-markup="true" xalign=".5"> <label> 
            "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"MANAGER_7.4"'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
              </label> </text>

        <hbox homogenous="0">
              <hseparator width-request="90"></hseparator>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorred'"'  font-family='"'Comic'"' weight='"'bold'"' >  <b>'${DISTRO_NAME}_${gcSysDistroVersion}'</b> </span>" </label> </text>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorgrn'"'> <b>'K:${gcMGRKernVer}'</b> </span>" </label> </text>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorblu'"'> <b>'${lcPupRamObjMsg}'</b> </span>" </label></text>
               <hseparator width-request="90"></hseparator>
        </hbox>
      
        <hbox homogeneous="true">
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
           <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>'0'</action></button>
        </hbox>
    </vbox>

	<vseparator  visible="1" height-request="0"> </vseparator>
        <vbox visible="0">

            <button  visible="1"  has-focus="false" width-request="55"  height-request="1"  xalign=".5"  tooltip-text="Top-Sp" >
                <label> "'---*---'" </label> <action>'0'</action></button>

            <hbox homogeneous="false">
                <hseparator width-request="30"></hseparator>
            
                <button visible="1"    tooltip-text="'Special_PageBook_Code'"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>42</width><height>22</height>
                    <label>""</label>	
                    <action>'0'</action>                    </button>

                <button visible="1"    tooltip-text="'Special_PageBook_Code'"   has-focus="false">
                    <label>"'_PageBook_'"</label>	
                    <action>'0'</action>                    </button>

                <button  tooltip-text="'#1:MAIN:_msg_DC_LxgenMain_window'"   has-focus="false">
                    <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>42</width><height>22</height>
                        <label>"'Main-'"</label>	
                <action function="'launch'">msg_DC_LxgenMain_window</action> <action function="'closewindow'">msg_DC_LxgenMain_window</action>
                                           </button>

                <button  tooltip-text="'#2:DOX:_msg_DC_LxgenDox_window'"   has-focus="false">
                    <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>32</width><height>18</height>
                        <label>"'Dox-'"</label>	
                <action function="'launch'">msg_DC_LxgenDox_window</action> <action function="'closewindow'">msg_DC_LxgenDox_window</action>
                                            </button>
                <button  tooltip-text="'#3:UTL:_msg_DC_LxgenUtil_window'"   has-focus="false">
                    <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>22</width><height>14</height>
                        <label>"'Util-'"</label>	
                <action function="'launch'">msg_DC_LxgenUtil_window</action> <action function="'closewindow'">msg_DC_LxgenUtil_window</action>
                                            </button>

                <button visible="1" tooltip-text="'Special_PageBook_Code'"   has-focus="false">
                    <label>"'_PageBook_' "</label>	
                    <action>'0'</action>                     </button>

                <button visible="1"    tooltip-text="'Special_PageBook_Code'"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>42</width><height>22</height>
                    <label>""</label>	
                    <action>'0'</action>                    </button>

                <hseparator width-request="90"></hseparator>
            </hbox>

            <button  visible="1"  has-focus="false" width-request="55"  height-request="1"  xalign=".5"  tooltip-text="Top-Sp" >
                <label> "'---*---'" </label> <action>'0'</action></button>

            <hbox homogeneous="false">
                <hseparator width-request="160"></hseparator>
                <text  visible="'1'" editable="false" use-markup="true" xalign="0.5">
                   <label> "<span color='"'$lcGuiColorblu'"'><b>{'_PreSet__1-of-16_PuppyOS__menu.lst_'}</b></span>"</label> </text>
                <hseparator width-request="160"></hseparator>
            </hbox>

        </vbox>

    <vbox>
        <hbox homogeneous="1">
            <hseparator width-request="220"></hseparator>
            <button has-focus="false"  xalign=".5"  
                tooltip-text="''">
                <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label>"'ReMenu=20+Generic'"</label> 
               <action function="'launch'">msg_DC_REMENU_window</action>
               <action function="'closewindow'">msg_DC_REMENU_window</action>
                <action>'EXIT:ARB_ORG'</action> </button>
            <hseparator width-request="270"></hseparator>
        </hbox>
    </vbox>
		<vseparator  visible="1" height-request="5"> </vseparator>

    <vbox>
        <hbox homogeneous="0">
           <hseparator  width-request="140"></hseparator>
           <button visible="true" has-focus="false" height-request="20"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <text editable="false" use-markup="true" xalign="0.5">
                <label> "<span color='"'$lcGuiColorgrn'"'><b>{'_Write_New_Menu.lst_for_ReBoot_'}</b></span>"</label> </text>
           <button visible="true" has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <hseparator   width-request="160"></hseparator>
        </hbox>
        <hbox>
            <hseparator width-request="10"></hseparator>
 
           <button has-focus="false" height-request="22"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_K-K_'" tooltip-text="'[]_KineticKudu-Pup_EXIT:ARB_K-K'  
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_KK'</action>  </button>
            <button label="'{-B5B-}'"   tooltip-text="'[]_BionicBeaver:K5:_EXIT:ARB_B5B'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_B5B'</action>  </button>
            <button label="'_J-J_'"    tooltip-text="'[]_JammyJellyfish_EXIT:ARB_J-J'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_JJ'</action>  </button>
            <button label="'_S1564_'"  tooltip-text="'[]_S15pupSlacko64-K:5_FF_EXIT:ARB_S1564'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_S1564'</action>  </button>
            <button label="'{-uMM-}'"    tooltip-text="'[]_UpupMM_Mantic-Minotaur:_EXIT:ARB_MM'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_UMM'</action>  </button>
            <button label="'{-T-6-}'"     tooltip-text="'[]_Tahr_EXIT:ARB_T-6'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_T6'</action>  </button>
            <button label="'_X64_'"    tooltip-text="'[]_UpupXenial64_FF_EXIT:ARB_X64'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_X64'</action>  </button>
            <button label="'_DBW_'"   tooltip-text="'[]_DpupBW_BookWormDebian:_EXIT:ARB_BW'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_DBW'</action>  </button>
           <button has-focus="false" height-request="22"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'right-smo'</action> </button>

            <hseparator width-request="40"></hseparator>
        </hbox>
        <hbox homogeneous="false">
            <hseparator width-request="10"></hseparator>

           <button has-focus="false" height-request="22"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_S-7_'"    tooltip-text="'[]_Slacko7-Alternate_EXIT:ARB_S-7'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_S7'</action>  </button>
            <button label="'_uIMP_'"    tooltip-text="'[]_UpupIMP_EXIT:ARB_UIMP'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_UIMP'</action>  </button>
             <button label="'_S64_'"    tooltip-text="'[]_Slack64-Kern:4_EXIT:ARB_S64'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_S64'</action>  </button>
            <button label="'_F-F_'"    tooltip-text="'[]_FocalFossa_EXIT:ARB_F-F'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_FF'</action>  </button>
            <button label="'_X708_'"   tooltip-text="'[]_Xenial708_EXIT:ARB_X708'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_X708'</action>  </button>
            <button label="'_SLXSC_'"  tooltip-text="'[]_Slacko-LxSc_EXIT:ARB_SLXSC'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_SLXSC'</action>  </button>
            <button label="'_Q-7_'" tooltip-text="'[]_Quirky-7-April_EXIT:ARB_Q7'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_Q7'</action>  </button>
            <button label="'_B4B_'"   tooltip-text="'[]_BionicBeaver:K4:_EXIT:ARB_B4B'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="15"> 
                    <action>'EXIT:ARB_B4B'</action>  </button>
           <button has-focus="false" height-request="22"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>""</label><action>'right-smo'</action> </button>

                <hseparator width-request="60"></hseparator>
        </hbox>
    </vbox>    

    <hbox homogeneous="true">
        <hseparator width-request="17"></hseparator>
        <button  visible="1" tooltip-text="'!!!---Change-Menu-then-call-this---!!!' 
        EXIT:guiBakAllCRB " >
                <input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><width>23</width><height>23</height>
                <label>'______ReBoot_Menu__'</label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiBakAllCRB'</action>            </button>
       <hseparator width-request="17"></hseparator>
    </hbox>
    
        <vseparator  visible="'${lcGuiVert}'" height-request="3" > </vseparator>
        <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4</action></button>
        <vseparator  visible="'${lcGuiVert}'" height-request="5" > </vseparator>

        <hbox homogeneous="true">
            <button label="'===-BakAll-Tool-Tip-==='"
            visible="true" 	has-focus="false" >
            <action function="'launch'">msg_DC_BakAll_window</action><action function="'closewindow'">msg_DC_BakAll_window</action>
            </button>
        </hbox>

    <vbox>
		<hbox homogeneous="false">
            <hseparator width-request="15"></hseparator>

<button  visible="1" tooltip-text="'!---EXIT:guiBakAllRS---!'
	BakAll to 'RA'+'MH' then 'ReSTART' program {!}" >
			<input file>"/tmp/EmGr-img-Check-redred.svg"</input><width>23</width><height>23</height>
			<label>'BakAll-RS'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>EXIT:guiBakAllRS</action>
			</button>
            <hseparator width-request="15"></hseparator>

<button  visible="1" tooltip-text="'!!---EXIT:guiBakAllRB---!!'
	BakAll to 'RA'+'MH' then 'ReBOOT' system {!}" >
			<input file>"/tmp/EmGr-img-Check-grnXgrn.svg"</input><width>23</width><height>23</height>
			<label> BakAll-RB </label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiBakAllRB'</action>
			</button>
            <hseparator width-request="15"></hseparator>

<button visible="1"  tooltip-text="'!!!---EXIT:guiBakAllCRB---!!!'
    BakAll_CTA_'ReBoot' system">
			<input file>"/tmp/EmGr-img-Check-bluXred.svg"</input><width>23</width><height>23</height>
			<label>'{_BakAll-C-RB_}'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
				<action> EXIT:guiBakAllCRB </action>
            </button>
            <hseparator width-request="15"></hseparator>

<button visible="1"  tooltip-text="'!!!!---EXIT:guiBakAllCRQ---!!!!'
    BakAll_CTA_'PowerOff' system">
			<input file>"/tmp/EmGr-img-Check-blublu.svg"</input><width>23</width><height>23</height>
			<label> BakAll-C-RQ </label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
				<action>'EXIT:guiBakAllCRQ'</action>
            </button>

            <hseparator width-request="45"></hseparator>
		</hbox>
    </vbox>
    
    <hbox homogeneous="true">
        <vbox>
            <vseparator  visible="'${lcGuiVert}'" height-request="7"></vseparator>

            <button  visible="'${lcGuiVert}'" has-focus="false" height-request="1"  xalign=".5"   tooltip-text="before-QUIT" >
                    <label> "''" </label> <action>lxAction:Before-Quit</action></button>

            <hbox homogeneous="true">
                <button tooltip-text="'Double-Click-Program_Quit_'" >
                    <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>33</width>  <height>33</height>
                    <label>'!!!_QUIT-MGR_PROGRAM_!!!'</label> 
                        <action function="'launch'">msg_DC_Quick_window</action>
                        <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiMainQUIT'</action>
                </button>
            </hbox>
            <vseparator height-request="1" > </vseparator>
        </vbox>
    </hbox>
    <vseparator  visible="'${lcGuiVert}'" height-request="1" > </vseparator>

    <vbox> 
 
         <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "..." </label><action>lxAction:C4</action></button>

    </vbox>

        <hbox homogeneous="false">
           <hseparator width-request="30"></hseparator>
     
            <button tooltip-text="Simple_guiSimReStart">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_ReStart__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReStart'</action>	</button>
            <button tooltip-text="Simple_guiSimReBoot">
                <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_ReBoot__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReBoot'</action> </button>
            <button tooltip-text="Simple_guiSimPowerOff">
                <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_PwrOff__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimPowerOff'</action> </button>
            <hseparator width-request="180"></hseparator>
        </hbox>
        <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "..." </label><action>lxAction:C4</action></button>

    <hbox>
        <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height><action>"0"</action> </button>
        <button height-request="23" >  <label>" 'https://github.com/GlenE77is' "</label><action>"0"</action>    </button>
        <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height><action>"0"</action> </button>
        <hseparator width-request="200"></hseparator>
    </hbox>
    
    <text  visible="'1'" visible="false" editable="false" use-markup="true" xalign=".5">
        <label> "=============================================== " </label> </text>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" > <label> "''" </label><action>lxAction:botC0</action> </button>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
	</vbox>

    </hbox>
</vbox>
</window>'
#!
#! ## MAIN GUI MGR ### Dialog END ###############################
#! ## MAIN GUI MGR ### Dialog END ###############################
#! ## MAIN GUI MGR ### Dialog END ###############################

#!
lcEmGrGuiFnTrg="/tmp/EmGa-Master-GUI.txt"   # BUILD master GUI IMG.txt, for "DUMP" .
echo "${MGR_Master_GUI_Dialog}" >> ${lcEmGrGuiFnTrg}
echo "### end of Graphical User Interface Code ############ " >> ${lcEmGrGuiFnTrg}   # title for "Dump" to screen
#

#!  example of "DC" "Double-Click" method, by <action on two <windows . 
#!                  <action function="'launch'">msg_DC_Quick_window</action>
#!                  <action function="'closewindow'">msg_DC_Quick_window</action>

          #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            #(: fg(MGR_Main_Gui=eval)
            #(: called by: SYS
            #(: param: MGR Gui  has been exported
            #(: purpose: gtkdialog will evaluate the "MGR_Master_GUI"
            #(: calls:
            #(: method:
            #(:    'eval'  Execute arguments as a shell command, "Fall-Thru" method.
            #(: sends:
            #(: rationale:
            #(: note :
            #(:    ??? same as eval "`gtkdialog --center -p Box_MessageXML`"
            #(:    gtkdialog --center  -p MGR_Master_GUI`" ;;
            #(:
            #
            #! case $EXIT in
                #! "DUMP" ) echo "$MGR_Master_GUI" ;;
                #! *) eval "`gtkdialog --center -p MGR_Master_GUI`" ;;
            #! esac

 eval "`gtkdialog --center -p MGR_Master_GUI_Dialog`" 

#(: end: Main Gui eval

#! ## bot MAINGUI MGR ### INIT ####################################

lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------  Main Gui   --- ${EXIT} ----------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
#!
#! ## bot MAINGUI MGR ### DIALOG ####################################
#!
#!
#!
#!
#(: begin: Fall-Thru code
#! Fall-Thru Method 
#!
#!
#! Begin: Fall-Thru Method "HEADER" ===========================
#!
#! Each Fall-Thru Block has this "header" with label "#! ft(EXIT:"
#!    which makes it easier to "Find" via  Ctl-C , Ctl-F, Ctl-V , In_Document 
#!    to show a List of these headers. 
#! 
#! ft(EXIT: 
#!
#! End: Fall-Thru Method "HEADER"  ===========================
#!
#! begin: regular "function"
#! Each "if" function has a header that begins with label like this:
#!      function EXIT:??????????  
#! to provice "find" link into MainGui XML 
#!
#! begin: regular "function"
#! Each regular "function" has a header that begins with label like this:
#!      function Sys_??????????() {  
#!          n="0"
#!      } end 
#! end: regular "function"
#!
#!
#!
#!
#!
#!
#!
#!
#! ###########################################################
#! begin: # Page MAIN 
#! ###########################################################
#!
#!
#! Fall-Thru Method  ===> Local Fall Thru to    if [ ]    Routines:
#!
#!
#(: ========================================================
#(: ft("EXIT":Check-Box)   # Active   Check-Box "CBX"  # External calls
#(: called by: gui CBX
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
### begin: Check-Box : EXIT:CB --->   EXIT:CBARS+ EXIT:CBARB+ EXIT:CBAPO+
### Design Method : "FALL-THRU"
###
### "ALL" Check-Box will trigger running "ALL", regardless if 'checked' or not .
### "CBXAPPLY+" triggers running all "checked" selections .
###
#!
#! Fall-Thru Method  ===> Local Fall Thru to    if [ ]    Routines:
#!
#(: ========================================================
#(: ft(EXIT:Check-Box)       # Active   Check-Box "CBX"  # External calls
#(: called by: gui CBX
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin: ( EXIT:'CBX APPLY+')
#(: begin: check for "APPLY Checks" command   Ch3ck-Box "CBX"  # External calls
#(: fx(FT_EXIT='APPLY_Checks_All_')
#(: fx(FT_EXIT='CBXARR')
#(: fx(FT_EXIT='CBXARS')
#(: fx(FT_EXIT='CBXARB')
#(: fx(FT_EXIT='CBXAPO')
#!
#!
#! Fall-Thru Method  ===> Local Fall Thru to    if [ ]    Routines:
#!
#!
#! function EXIT:CBXARS
#! function EXIT:CBXARB
#! function EXIT:CBXARQ
#! ======================================================
#! if [ "$EXIT" = "CBXARS" ] ; then ; n=0 ; fi   # CBX ARS, ARB, ARQ ComboBox
if [ ${EXIT} == "CBXARS" ] || [ ${EXIT} == "CBXARB" ] || [ ${EXIT} == "CBXARQ" ] ; then
#! function Sbr_CBXAR3() 
#!
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#!
#(: Apply button  COMBO BOX 
#(: check for prior "APPLY Checks" commands
#!
 	#(: function  IF  CBXC3C  CBXS2F  CBXCTU
    #! ======================================================
	if  [ ${CBXC3C} = "true" ] || [ ${CBXS2F} = "true" ] || [ ${CBXCTA} = "true" ] ; then
		n=0
		CBXALL=""
		#~ llCBMASTER="1"  # Not Used
		lcMsgStr=">>> if CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		Sbr_Sys_KillProc  "CBXALL CBXC3C CBXS2F CBXCTA" # check for KillProc flag up.
		#!
		#! 		#!		#!		#!
		#(: ##=== CheckBox === C3C === Clear 3 Cache
        #! purpose: Clear Large Cache data which lingers 
        #(: function IF CBXC3C
		#!  ========================================
		if [ ${CBXC3C} = "true" ] ; then
			lcMsgStr="=== C3C" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0
			CBXC3C=""
			###	
			echo "=== Begin === C3C ========================"
			### Clear 3 Cache, Fast Direct Calls
            Sbr_Splash_It "=Clear 3 Cache=" "orange" "purple" "2"        #! -D---
			#!
            #! Literal Spell-Out locations
            #! purpose: Clear Large Cache data which lingers 
            #!
			#!==================================================
			### Cache ### FireFox 
			lcFileSrc="/root/.cache/mozilla/firefox/"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/mesa_shader_cache/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound-cache*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==============================================
			### Cache ### LIGHT
			lcFileSrc="/root/.light/light/Light.default"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==============================================
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/cache/cups".
			lcFileSrc="/var/cache/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp/*".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/*".
			lcFileSrc="/var/spool/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			echo "=== DONE === C3C ===================="
            #~ kill ${GtkPid_CBX_C3C}  # now 
			sleep 1
		fi
		#!
		#!  Contue Fall Thru
		#!
		#(: ##=== CheckBox === S2F	=== no need to also call SMP inside of CTU
        #(: function  EXIT:CBXS2F
		#!  ##################################################
		if [ ${CBXS2F} = "true" ] ; then
			lcMsgStr="=== S2F" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0    
            Sbr_Splash_It "Save to Flash" "yellow" "brown" "1"       #! -D---
			#
			CBXS2F=""
			lcFnRun="${gcRootApps}rc.z_S2F.sh" # S2F
			if [ -f "$lcFnRun" ] ; then		# S2F
				[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
			else
				n=0
			    #! -D---
				/usr/lib/gtkdialog/box_ok "ERROR" error " Dependencie File Not Found: ${lcFnRun}"
			fi
		fi
		#!
		#!  Continue Fall Thru
		#!
		#(: ##=== CheckBox === CTU-NSMP   # No SMP   ### handle everything in this block ###
		#(: function EXIT:CBXCTU
		#! ##################################################
		if [ ${CBXCTA} = "true" ] ; then
			n=0
		    #! -D---
			/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text ".    Cold Tar Backup  !!!" &
				RETVAL=$?
				GtkPid_CBX_CTB=$!	# capture PID
				sleep 1
            lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit
            if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List, 
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                lcFnRun="${gcRootApps}rc.z_CTA.sh"  
                if [ -f "$lcFnRun" ] ; then		# CTA
                    [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
                else
                    /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
                fi
            fi
        fi
		touch "${MGR_CBXstatus}"
		lcMsgStr="<<< if any Check-Box" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
        kill ${GtkPid_CBX_CTB}		# now
		#!  Contue Fall Thru
		#!
		#================================================
		#(: fx(FT_EXIT='CBX APPLY')
		lcMsgStr=">>> if any CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		#!
		#! ##################################################
        #! function EXIT:CBXARS
        if [ "$EXIT" = "CBXARS" ] ; then   # CBX ReStart
			n=0
			CBXARS=""
			Sbr_ClearFlagsSystem 0   # CBXARS
			Sbr_Cbx_ReStart 1   # no wait # CBXARS
		fi
		#! #############################################
        #! function EXIT:CBXARB
        if [ "$EXIT" = "CBXARB" ] ; then   # CBX ReBoot
			n=0
			CBXARB=""
			Sbr_ClearFlagsSystem 0   # CBXARB
			Sbr_Cbx_ReBoot
		fi
		#! #############################################
        #! function EXIT:CBXARQ
		if [ "$EXIT" = "CBXARQ" ] ; then   # CBX ReQuit
			n=0
			CBXARQ=""
			Sbr_ClearFlagsSystem ""   # CBXARQ
			Sbr_Cbx_ReQuit  1 # EXIT:CBXARQ
		fi
		#~ llCBMASTER="0"  # Not Used 
		lcMsgStr="<<< if any Apply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
    else
    	### end: Activation buttons
        #~ lcMsgStr="=== Bottom of Apply" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
        Sbr_Splash_It "\
        '===      WARNING         ==='
        '===  Bottom of CBX APPLY ==='
        '=== No-Checkbox-Selected ==='" "yellow" "blue" "3" && 	kill ${GTKPIDShowSplash}    #! -D---
        Sbr_Cbx_ReStart 1     # no wait # CBX APPLY+ in case something fails
	fi	#
fi	# end: check for "APPLY Checks" command
#! end: ( EXIT:'CBX APPLY+')


#(: ==================================================
#! ##################################################
#! function if [EXIT:guiBakAll()    if [ "$EXIT" =
#! gui Exits with guiBakAllRS or guiBakAllRB or guiBakAllCRB or guiBakAllCRQ
#!
#!
#! =====================================================================
#! begin: if [ "$EXIT" = "guiBakAllRS" || "guiBakAllRB" || "guiBakAllCRB || "guiBakAllCRQ" 
#! =====================================================================
#! all guiBakAll? enter here to perform main functions.  
#!    final functions RS / RB / RQ are captured after fall-thru. 
#! 
#!  these function pseudo names are for visual/findall searches. 
#! function EXIT:guiBakAllRS        Sbr_BakAllArcDts        # Quick Short version   
#! function EXIT:guiBakAllRB        Sbr_BakAllArcDts        # Quick Short version   
#! function EXIT:guiBakAllCRB       Sbr_BakAllArcDts         # Quick Short Version  
#! function EXIT:guiBakAllCRQ       Sbr_BakAllArcDts         # Quick Short Version  
#!
#!  if  guiBakAllRS  guiBakAllRB   guiBakAllRQ"    # ACTIVE  
if [ "$EXIT" = "guiBakAllRS" ] || [ "$EXIT" = "guiBakAllRB" ] || [ "$EXIT" = "guiBakAllCRB" ] || [ "$EXIT" = "guiBakAllCRQ" ] ; then
    n=0
	lcMsgStr="guiBakAllRS || guiBakAllRB || guiBakAllCRB ] || guiBakAllCRQ ]"
    Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
    Sbr_Sys_SDA_Only 1
	Sbr_Sys_KillProc "${EXIT}"
    export gcE3Rcontrol=${EXIT}	# maintain this value,might restore 
    #! 
fi  # 
#!
#!  Continue "Fall-Thru"  for    guiBakAllRS  guiBakAllRB   guiBakAllRQ
#!
#!### E3R ReStart #######################################################
#! gui BakAll RS
#(: function EXIT:guiBakAllRS              # BakAll ReStart
if [ "$EXIT" = "guiBakAllRS" ] ; then   # BakAll ReStart 
    n=0
	lcMsgStr="! BakAll + ReSTART Program !"
#~ Sbr_Splash_It "BakAll+RS" "yellow" "purple" "7" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
    Sbr_Cbx_ReStart 1 	 
fi # end: [ "$EXIT" = "guiBakAllRS" ]
#!
#! gui BakAll RB
#(: function EXIT:guiBakAllRB              # BakAll ReBoot
if [ "$EXIT" = "guiBakAllRB" ] ; then   # BakAll ReBoot
    n=0
    lcMsgStr="!! BakAll  + ReBOOT : guiBakAllRB !!"
    #! Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
    Sbr_Cbx_ReBoot "1"
fi # end: [ "$EXIT" = "guiBakAllRB" ]
#!
#!### E3R CTA ReBoot #######################################################
#(: function EXIT:guiBakAllCRB       # BakAll + CTA +ReBoot 
if [ "$EXIT" = "guiBakAllCRB" ] ; then   # BakAll + CTA + ReBoot 
    n=0
    lcMsgStr="!!!_ BakAll_CTA_ReBoot : guiBakAllCRB !!!"
    #! Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
     #! Expand Verify -f Files : /EDIT vs /root/my-applications
    lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit
	if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List, 
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        lcFnRun="${gcRootApps}rc.z_CTA.sh"  
        if [ -f "$lcFnRun" ] ; then		# CTA
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
   Sbr_Cbx_ReBoot
fi # end: [ EXIT:guiBakAllCRB ]    
#!
#!### BakAll + ReQuit #######################################################
#(: function EXIT:guiBakAllCRQ       # BakAll + CTA +ReQuit 
if [ "$EXIT" = "guiBakAllCRQ" ] ; then   # BakAll + CTA +ReQuit 
    n=0
    lcMsgStr="!!!_ BakAll_CTA_ReQuit : guiBakAllCRQ !!!"
    #! Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
     #! Expand Verify -f Files : /EDIT vs /root/my-applications
    lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit 
	if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List,  Just Automatic run through. 
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        lcFnRun="${gcRootApps}rc.z_CTA.sh"  
        if [ -f "$lcFnRun" ] ; then		# CTA
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
   Sbr_Cbx_ReQuit
fi # end: [ EXIT:guiBakAllCRQ ]     # Called by "Menu_ReBoot"
#!
#!
#!
#! =====================================================================
#! end: BakAll Ending Routines: "BakAll" ReStart / ReBoot / RePowerOff
#! =====================================================================
#!
#!
#!
#! =====================================================================
#! begin: #1 Column  CBX, OneArcDts, AllArcDts , E3R, 
#! =====================================================================
##(: ========================================================
#(: ft(EXIT:guiMgrOneArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
##(: purpose: Backup/Archive with DTS, only MGR "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiMgrOneArcDts
if [ "$EXIT" = "guiMgrOneArcDts" ] ; then   # MGR One Arc Dts 
    n=0
    Sbr_BakOneArcDts
    Sbr_Cbx_ReStart 1 	 # display and no wait
	###
fi # end [ "$EXIT" = "guiMgrOneArcDts" ]
#!
##(: ========================================================
#(: ft(guiMgrAllArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#(: function  EXIT:guiMgrAllArcDts  # vis = 0 # NOT ACTIVE 
#! #########################################################
if [ "$EXIT" = "guiMgrAllArcDts" ] ; then   # MGR All Arc Dts # vis = 0 # NOT ACTIVE 
    n=0
    #! Sbr_Splash_It "--- gui_Mgr_ALL_Arc_dts ---# vis = 0 # NOT ACTIVE " "yellow" "red" "3"       #! -D---
    Sbr_Splash_It "--- gui_Mgr_All_Arc_Dts ---" "yellow" "purple" "3"       #! -D---
    Sbr_BakAllArcDts       # Quick Short version 
    Sbr_Cbx_ReStart 1 
fi # end [ "$EXIT" = "guiMgrAllArcDts" ]
#(: ========================================================
#!
#!
#!
#!
#! =====================================================================
#! end: #1 Page  CBX, MCI 
#! =====================================================================
#!
#!
#! Fall-Thru Method 
#!
#!
#! #########################################################
#! begin: #1 Page TEST routines 
#! #########################################################
#!
#!
#(: =========================================================
#(: ft(EXIT:guiAudio)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: play the "startup" music
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiAudio    # "Audio" button calls this if[] .
if [ "$EXIT" = 'guiAudio' ] ; then  # Run Audio Startup Music 
	n=0
    Sbr_Splash_It  "Testing === mpv ===guiAudio StartUp-Sound" "yellow" "purple" "3"
    #!
    #! B5B mpv
       mpv  /usr/share/audio/bark.au &
       mpv  /usr/share/audio/2barks.wav &
    sleep 3
        mpv /usr/share/audio/sys-login.mp3 &
    sleep 5
        mpv /usr/share/audio/bell.wav
    #!
    Sbr_Splash_It  "Testing === mplayer ===guiAudio StartUp-Sound" "yellow" "purple" "3"
    #! B4B mplayer
     mplayer /usr/share/audio/bark.au &
    mplayer /usr/share/audio/2barks.wav &
     sleep 3
    mplayer /usr/share/audio/sys-login.mp3 &
    sleep 5
    mplayer /usr/share/audio/bell.wav    #!
    #!
    Sbr_Cbx_ReStart 1
    #!
fi # end: "$EXIT" = 'guiAudio'
#!
#!
#(: =========================================================
#(: ft(EXIT:guiBackGround)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Launch the BackGround Image
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiBackGround    #  Active
if [ "$EXIT" = 'guiBackGround' ] ; then  # Run Audio Startup Music 
	n=0
    Sbr_Splash_It  "guiBackGround" "yellow" "purple"  "3"
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiBackGround'
#!
#!
#!
#! ########################################################
#! end: #1 Column TEST
#! ########################################################
#!
#!
#! Fall-Thru Method 
#!
#!
#! #########################################################
#! begin: #2 Column EXTERNAL # earlier MGR version
#! #########################################################
#!
#(:   PBB+ Dev+ E3R+ E2D+ GTK+ GEANY+ SFS+ PCP+ PPR+ CTB+ CTU+ CTnsmp+
#!
#!
#(: =========================================================
#(: ft(EXIT:guiROX)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:    lcFnRun=". rox"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiROX   # Run ROX Filer App 
if [ "$EXIT" = "guiROX" ] ; then   # NOT USED 
    n=0
    echo "------- ROX ---Show 'My_Dev_' SubDir"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    # called by ROX with no parameter
    Sbr_Cbx_ReStart & ### must ReStart with no parameter.
    Sbr_ClearFlagsSystem  0  #: clear lockfile, etc,  so that ReStart can run.
    cd /initrd/mnt/dev_save/MY_/usr-share/My_Dev_
    lcFnRun=". rox"
    . rox  
    exit
fi # end: EXIT:guiROX
#!
#!
#(: =========================================================
#(: ft(EXIT:guiGTKsampler)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:  	lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/rc.z_GTK-sampler.sh"
#(: calls: GTK-sampler.sh
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiGTKsampler # # Run GTK Sampler App
if [ "$EXIT" = "guiGTKsampler" ] ; then     # NOT USED
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	echo "--- GTK-sampler ---"
	lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/rc.z_GTK-sampler.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # sfs_load
	Sbr_Cbx_ReStart 1   # no wait # guiGTKsampler
fi # end: EXIT:guiGTKsampler
#!
#!
#(: =========================================================
#(: ft(EXIT:guiSFS)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:  lcFnRun="/usr/sbin/sfs_load"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiSFS   # Run  SFS Loader App
if [ "$EXIT" = "guiSFS" ] ; then    # NOT USED 
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="/usr/sbin/sfs_load"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # Run  SFS Loader App
	Sbr_Cbx_ReStart 1 	 # no wait
fi # end: EXIT:guiSFS
#!
#!
#(: =========================================================
#(: ft(EXIT:guiJWD)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:	lcFnRun="/usr/local/jwmdesk/jwmdesk"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiJWD   # Run JWD App
if [ "$EXIT" = "guiJWD" ] ; then        # NOT USED
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/jwmdesk/jwmdesk"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}   # jwmdesk
    Sbr_Cbx_ReStart 1   # no wait
	#	exit 0
	#
fi # end: EXIT:guiJWD
#!
#!
#(: ========================================================
#(: ft(EXIT:guiPPR)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: 	lcFnRun="/usr/local/bin/pprocess" 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiPPR   # Run Sys App
if [ "$EXIT" = "guiPPR" ] ; then    # NOT USED 
    echo "--- PPR Process --- Run System Application  ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/bin/pprocess"   # pprocess
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
	#
fi # end: EXIT:guiPPR
#!
#!
#(: ========================================================
#(: ft(EXIT:gui-P-MntInt) 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sys_MGR_Mnt_pMount_sbr)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:gui-P-MntInt     # Internal Code still "mount" internal
if [ "$EXIT" = "gui-P-MntInt" ]  ; then	   # NOT USED 
    n=0
	Sbr_Sys_KillProc "${EXIT}"	# gui-P-MntInt
    Sys_MGR_pMount_All "1"  ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-P-MntInt (main)
#!
#!
#(: =========================================================
#(: ft(EXIT:gui-U-MntInt) 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sys_MGR_Mnt_uMount_All)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:gui-U-MntInt #  Internal Code calls "UnMount" Internal
if [ "$EXIT" = "gui-U-MntInt" ]  ; then	   # NOT USED 
    n=0
	Sbr_Sys_KillProc "${EXIT}"	# gui-U-MntInt
    Sys_MGR_uMount_All "1" ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-U-MntInt (main)
#!
#!
#! #########################################################
#! end: #2 Column EXTERNAL 
#! #########################################################
#!
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ########################################################
#! begin: # 3 Column
#! ########################################################
#!
#!
#(: ========================================================
#(: ft(EXIT:guiS2F3)
#(: called by: Main GUI button  "_S2F-3_"
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Internal Call for /rc.z_S2F.sh
#(: calls:
#(: method: calls code from /rc.z_S2F.sh,  copied internal
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiS2F1   # guiButton S2F-1 loop SMP    ACTIVE
if [ "$EXIT" = "guiS2F1" ]  ; then  # guiButton S2F-3 loop SMP    ACTIVE
    n=0
    Sbr_MB_s2f1        # guiButton S2F-1 loop SMP
	Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1  # no wait
fi #
#!
#! ########################################################
#! function EXIT:guiS2F3   # guiButton S2F-3 loop SMP    ACTIVE
if [ "$EXIT" = "guiS2F3" ]  ; then  # guiButton S2F-3 loop SMP    ACTIVE
    n=0
    Sbr_MB_s2f3        # guiButton S2F-3 loop SMP
	Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1  # no wait
fi #
#!
#(: ==================================================
#(: ft(EXIT:guiMCI)	
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: EGI Sample Project
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################
#! function [EXIT:guiMCI]
if [ "$EXIT" = "guiMCI" ] ; then    # Run  M.C.I. project   ACTIVE
    n=0
    Sbr_Splash_It "--- Run MCI Sample Project  ---" "yellow" "purple" "3"       #! -D---
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/root/my-applications/rc.z_MCI.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
	#
fi # end: EXIT:guiMCI
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ########################################################
#! begin:  Column DUMP 
#! ########################################################
#!

#!
#!
#(: =========================================================
#(: ft(EXIT:guiDumpHLP)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup HELP Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#(:
#! ########################################################
#! function [EXIT:guiDumpHLP]	DumpHELP
if [ "$EXIT" = "guiDumpHLP" ] ; then   #  Dump HELP  ACTIVE
    echo "--- HELP --- Sbr_Dump_HLP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!

#(: =========================================================
#(: ft(EXIT:guiDumpDistro)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup HELP Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#(:
#! ########################################################
#! function [EXIT:guiDumpDistro]	DumpHELP
if [ "$EXIT" = "guiDumpDistro" ] ; then   #  Dump HELP  ACTIVE
    echo "--- Distro --- Sbr_Dump_Distro --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_Distro	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDistro
#!
#!
#(: =========================================================
#(: ft(EXIT:guiDumpDistro)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup Code-Procedure-Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#(:
#! ########################################################
#! function [EXIT:guiDumpProc]	Dump Code Procedure Outline 
if [ "$EXIT" = "guiDumpProc" ] ; then   #  Dump Proc  ACTIVE
    echo "--- Distro --- Sbr_Dump_Proc --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_Proc	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDistro
#!
#!
#!
#(: ========================================================
#(: ft(EXIT:guiDumpFAQ)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup FAQ Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpFAQ]
if [ "$EXIT" = "guiDumpFAQ" ] ; then   #  Dump FAQ  ACTIVE
    echo "--- FAQ --- Sbr_Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ	# MGR_Faq_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#(: ========================================================
#(: ft(EXIT:guiDumpPUP)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup Source Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =========================================================
#! function [EXIT:guiDumpPUP]
if [ "$EXIT" = "guiDumpPUP" ] ; then   #  Dump PupState  ACTIVE
    echo "--- Dump/Display Pup State Code ---"
    n=0
    Sbr_Dump_PUP	# MGR_Pup_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! function [EXIT:guiDumpSRC]
if [ "$EXIT" = "guiDumpSRC" ] ; then   #  Dump SOURCE  ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_SRC ---${gcSysDistroName} ---"
    Sbr_Dump_SRC	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSRC
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpGUI]   # ACTIVE
if [ "$EXIT" = "guiDumpGUI" ] ; then   #  Dump GUI  ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_GUI ---${gcSysDistroName} ---"
    Sbr_Dump_GUI	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpIMG]
if [ "$EXIT" = "guiDumpIMG" ] ; then   #  Dump IMAGE   ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_IMG ---${gcSysDistroName} ---"
    Sbr_Dump_IMG	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpIMG
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpUPL)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpUPL]
if [ "$EXIT" = "guiDumpUPL" ] ; then   #  Dump UpLegal  ACTIVE
    n=0
    lcMsgStr="--- UPopLegal --- Sbr_Dump_UPL --- ${gcSysDistroName} ---"
	Sbr_Dump_UPL	# MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpUPL
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpSys]
if [ "$EXIT" = "guiDumpSys" ] ; then   #  Dump System  ACTIVE
    n=0
    lcMsgStr="--- Sys Notes --- ${gcSysDistroName} ---"
	Sbr_Dump_Sys
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSys
#!
#!
#!
#!
#!   Fall-Thru Method 
#!
#!
#(: ===Page1==================================================
#(: ft EXIT:guiCTX  # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function  EXIT:guiCTXmain   {} Standard {_COLD_TAR_BACKUP_X_}  external ACTIVE 
if [ "$EXIT" = "guiCTXmain" ] ; then   # CTX   {}{_COLD_TAR_BACKUP__X_}  external    ACTIVE   
    n=0 # working CTX "A" mode
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run. todo: call CTB-SL
#! ************************************************************
#! E3R "basename" : E3R will check for two paths ***
#! Developer EDIT :
#! export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/" 
#! Production : 
#! export gcRootApps="/root/my-applications/"  # Puppy Linux always provides this. 
#! PET install not required, 
#!      just place downloaded scripts into /root/my-applications and append PATH.
#! *************************************************************************************
    #! Expand Verify -f Files : /EDIT vs /root/my-applications
    Sbr_Splash_It "Page 1 Main : EXIT:guiCTXmain" "yellow" "purple" "3"  
    lcFnRunBaseSd="CTX"
    lcFnRunBaseFn="CTX"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- {_CTX_} ---
	exit 0
fi # end: EXIT:guiCTXmain
#!
#!
#!
#! ========================================================
#(: === begin: Page3=== Six CT? calls to external ==========================
#! ========================================================
#!
#!
#(: ===Page3=== Six CT? calls to external ===============================
#(: ft EXIT:guiCTX  # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : Group of CTX buttons on Page Utility Page3
#(:
#! ###1#################################################
#! function  EXIT:guiCTX   {} Standard {_COLD_TAR_BACKUP_}   ACTIVE 
if [ "$EXIT" = "guiCTX" ] ; then   # CTX   {}{_COLD_TAR_BACKUP_}   ACTIVE   
    n=0 # working CTX "X" mode
    #! Sbr_Splash_It "EXIT:guiCTX " "yellow" "purple" "3"  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run. todo: call CTB-SL

# #! DEV guiCTX
# #! lcFnTrgE="/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTX/rc.z_CTX.sh"
# lcFnTrgE="rc.z_CTX.sh"
# chmod +x "${lcFnTrgE}"
# .  ${lcFnTrgE} 
# #! Expand Verify -f Files : /EDIT vs /root/my-applications

    lcFnRunBaseSd="CTX"
    lcFnRunBaseFn="CTX"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTX
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTA)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###2#################################################
#! function [EXIT:guiCTA]
if [ "$EXIT" = "guiCTA" ] ; then   # CTA  # NOT ACTIVE
    n=0
    echo "--- guiCTA Cold Tar Backup  ---"
    #! Sbr_Splash_It "Page 3 Util  : EXIT:guiCTA" "yellow" "purple" "3"  
	#!
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.

    lcFnRunBaseSd="CTA"
    lcFnRunBaseFn="CTA"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
        [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        #! /root/my-applications/rc.z_.sh
        lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTA
#!
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTB)     # CTB # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###3#################################################
#! function [EXIT:guiCTB-SL]
if [ "$EXIT" = "guiCTB-SL" ] ; then   # CTB-SL  # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SL " "yellow" "purple" "3"  
	Sbr_Sys_KillProc ${EXIT}  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 
	exit 0
fi # end: EXIT:guiCTB-SL
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTB-SL4)     # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiCTB-SL4]
if [ "$EXIT" = "guiCTB-SL4" ] ; then   # CTB-SL4   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SL-4 " "yellow" "purple" "3"  
	Sbr_Sys_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTB-SL-4.sh"
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB-SL-4"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTB-SL4
#!

#(: ===Page3==================================================
#(: ft(EXIT:guiCTB-SLX)     #  ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#~ export gcSysDevId="CTB-SLX"    # ScanList	called by MGR, "E3+CTB+Quit"  includes UpPmnt + DnUmnt
#~ export gcSysDevVer="4.1"
#(:
#! #####################################################
#! function [EXIT:guiCTB-SLX]
if [ "$EXIT" = "guiCTB-SLX" ] ; then   # CTB-SLX   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SLX  has Up and Dn !" "yellow" "purple" "3"  
	Sbr_Sys_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTB-SLX.sh"
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB-SLX"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTB-SL
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTUnsmp)     # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiCTUnsmp] { ; n=0 ; }
if [ "$EXIT" = "guiCTUnsmp" ] ; then    # CBX ARS ReStart   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTUnsmp " "yellow" "purple" "3"  
	Sbr_Sys_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTU-NSMP.sh"
    lcFnRunBaseSd="CTU"
    lcFnRunBaseFn="CTU-NSMP"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait  OK to use after CTU script
	exit 0
fi # end: EXIT:guiCTUnsmp
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTU)     # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiCTU() { ; n=0 ; }
if [ "$EXIT" = "guiCTU" ] ; then    # CTU # NOT ACTIVE
    echo "--- guiCTU ------------"
    n=0
	#! Sbr_Button_Only ${EXIT}   # guiCTU   # NOT ACTIVE
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRunBaseSd="CTU"
    lcFnRunBaseFn="CTU"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use after CTU script
	exit 0
fi # end: EXIT:guiCTU
#!
#!
#! ========================================================
#(: === end: Page3=== Six CT? calls to external ==========================
#! ========================================================
#!
#!
#!   Fall-Thru Method 
#!
#!
#! =================================================
#! begin: #4 Column   ;;;  System and QUIT   ;;;
#! =================================================
#!
#!
#(: ================================================
#(: ft(EXIT:guiTopReStart)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Top Bar, Quick ReStart
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiTopReStart]
if [ "$EXIT" = "guiTopReStart" ] ; then
    n=0
	Sbr_Splash_It "Re-Start MGR from Top Bar" "yellow" "green" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # end: EXIT:guiTopReStart
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimReStart)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiSimReStart]
if [ "$EXIT" = "guiSimReStart" ]  ; then  
    n=0
	Sbr_Splash_It "Simple Re-Start" "yellow" "green" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails.
	exit 0	#! ## "exit 0' should terminate this program.
fi  #  guiSimReStart
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimReBoot)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiSimReBoot]
if [ "$EXIT" = "guiSimReBoot" ]  ; then
    n=0
	Sbr_Splash_It " Warm ReBoot" "." "." 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	Sbr_Cbx_ReBoot 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails.
	exit 0	#! ## "exit 0' should terminate this program.
fi # guiSimReBoot
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimPowerOff)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [ EXIT:guiSimPowerOff ]
if [ "$EXIT" = "guiSimPowerOff" ] ; then
    n=0
	Sbr_Splash_It " Power-Off  via  WrmPowerOff"  "." "."  "1"    #! -D!---
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that WrmPowerOff can run.
    Sbr_Cbx_ReQuit 1   # EXIT:guiSimPowerOff
    EXIT=""	### force "Fall Thru" if "exit 0" fails.
    exit 0		#! ## "exit 0' should terminate this program.
fi # guiSimPowerOff
#(:=========================================
#!
#!
#!
#!
#! end: #4 Page   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! =================================================
#!
#!
#!   Fall-Thru Method 
#!
#!
#! =================================================
#! begin: #4 Page   ;;;  Menu Setup   ;;;
#! === =============================================
#!
#!
#!
#(: =====================================================
#(: ft(EXIT:ARB_00)  ft(EXIT:ARB_KK)   #: Active #: KK, BB, JJ, etc
#(: ft( EXIT:ARB_00 || EXIT:ARB_KK || EXIT:ARB_BB || EXIT:ARB_JJ || EXIT:ARB_S7 || EXIT:ARB_T6 ) || et al
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method: Install only a Two-Character "Id" into config-file
#(:      Re-Start MGR will check config, then build matching menu.lst
#(: sends:
#(: rationale:
#(: note :
#(:
#!   Fall-Thru Method 
#!
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft( EXIT:ARB_ORG || EXIT:ARB_ "ALL"  )
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Build-Short-Menu: 
#(: calls:
#(: method: 
#(:			ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B ]
#(:			Install only a Two-Character "Id" into new Menu.lst, 
#(:			and build with "default" selection. 
#(: sends:
#(: rationale:
#(: note : main run ( )   calls init: fx(Sbr_ARB_Init) to fetch configfile data.
#!
#! ====================================================
#! begin: Build Short Menu  
#! List of Abbreviated OS names: KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B
#! ====================================================
#!
#! function IF   Build-Short-Menu   [ ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B ]
if [ "$EXIT" = "ARB_00" ] || [ "$EXIT" = "ARB_KK" ] || [ "$EXIT" = "ARB_B4B" ] || [ "$EXIT" = "ARB_B5B" ] || [ "$EXIT" = "ARB_JJ" ] || [ "$EXIT" = "ARB_UMM" ] || [ "$EXIT" = "ARB_DBW" ] || [ "$EXIT" = "ARB_BC" ] || [ "$EXIT" = "ARB_FF" ]  || [ "$EXIT" = "ARB_S7" ] || [ "$EXIT" = "ARB_T6" ] || [ "$EXIT" = "ARB_X64" ] || [ "$EXIT" = "ARB_X708" ]  || [ "$EXIT" = "ARB_UIMP" ] || [ "$EXIT" = "ARB_S64" ] || [ "$EXIT" = "ARB_S1564" ]   || [ "$EXIT" = "ARB_SLXSC" ] || [ "$EXIT" = "ARB_Q7" ]  ; then
    n=0
	Sbr_Sys_SDA_Only	# control: test "SDA" else  ReStart
	Sbr_Sys_KillProc  "$EXIT"   # Build Menu permission control 
    Sbr_MenuShortList    #  function at top of code
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
    echo "${gcMgrArCfgIdd}" > "${gcMgrArbCfgFn}"  # config of menu
fi # 
#!  Build Short Menu : ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B
#
#! ================================================
#! ## end: Build Short Menu  ################################
#! ================================================
#!
#!
#!
#! ================================================
#! ## begin: Build Long Menu   ######
#! ================================================
#!
#(: ft(EXIT:ARB_ORG) ||ft(EXIT:ARB_ORGYBYR) ||ft(EXIT:ARB_ORGGBYR) ||ft(EXIT:ARB_ORGRYBG)
#!
#! =================================================
#! ## begin: Build Long "Original" Menu   
#! =================================================
#! function if [ EXIT:ARB_ORG ]    # ACTIVE
if [ "$EXIT" = "ARB_ORG" ] ; then 
    n="0"
	Sbr_Sys_SDA_Only	# control: only run from  "SDA" && ReStart
    #! function EXIT:ARB_OriginalMenu()  # custom long "original" is generated.
    export lcOsSubSplClrIfg="yellow"
    export lcOsSubSplClrIbg="blue"	
#! -D---
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.      ${lcOsSubSplClrID}
.      ${EXIT} = menu.lst  "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	
		sleep 3
        kill ${GtkPid_Mnu_Box_Splash}
    #!
    Sbr_MenuLongList
    Sbr_Cbx_ReStart  "1" #  Long Menu ReStart
fi # end: MenuLongList 
#!
#! =====================================================
#! ## end: LongMenuList  #######################################
#! =====================================================
!
#! #####################################################
#! end: #4 Page   ;;;  Menu Setup   ;;;;;;;;;;;;;;;;;;;;;;;;
#! #####################################################
#!
#!
#!
#!
#! ###########################################################
#! begin: #3 Page Special 
#! ###########################################################
#!
#(: ===========================================================
#(: ft(EXIT:guiSrcBase64)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! function [EXIT:guiSrcBase64]
if [ "$EXIT" = 'guiSrcBase64' ] ; then n=0  ;
	n=0
	Sbr_Sys_KillProc	"${EXIT}------guiSrcBase64"  # Base64 , ReStart
    Sbr_Dump_SRC_Base64
    Sbr_Cbx_ReStart '' ### display
fi # end: "$EXIT" = 'guiSrcBase64'
#(!
#(:
#(:
#(: ====================================================================
#(: ft(EXIT:guiMandelbrot)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###########################################################
#! function [EXIT:guiMandelbrot]
if [ "$EXIT" = 'guiMandelbrot' ] ; then n=0  ;
	n=0
	Sbr_Sys_KillProc	"${EXIT}------guiMandelbrot"
    Sbr_Utl_Mandelbrot	# build text Graphic, very slow build, in Xterm only. 
    Sbr_Cbx_ReStart '1' 
fi # end: "$EXIT" = 'guiMandelbrot'
#!
#!
#!
#! #######################################################################
#! end: #3 Page Special 
#! #######################################################################
#!
#!
#!
#! #######################################################################
#! begin: #4 System : System plus Restart-Reboot-ReQuit 
#! #######################################################################
#!
#(: ====================================================================
#(: ft(EXIT:guiMainQUIT)    #: A
#(: called by: Main GUI
#(: param:
#(: purpose: Main Quit with trailer message.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###########################################################
#! ft [EXIT:guiMainQUIT]       
if [ "$EXIT" = "guiMainQUIT" ]  ; then
	n=0
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "1" "7"
    lcMsgStr="[ '$EXIT' = 'guiMainQUIT+' ]" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="---${gcSysDevDob}---" && Sbr_Str2DevTrm "${lcMsgStr}" "3" "7"
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "1" "7"
	Sbr_ClearFlagsSystem 0  ### no display
    Sbr_ClearFlagsQuit  0    ### no display
			#! list of flags to kill:
			#! rm -f "${MGR_TouchCBXstatus}"
			#! rm -f "${MGR_BackUpStatus}"
			#! rm -f "${MGR_LockFile}"
			#! rm -f "${MGR_ReStart_flg}"
    echo
	lcMsgStr=" " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="... MGR : ReadMe info ! ... " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    echo    # Str2DevTrm
    lcMsgStr="->->->  Hit 'Enter' to clear Terminal <-<-<- "
    Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "6"
    Sbr_Str2DevTrm "$lcMsgStr" "6" "7"
   #!
    Sbr_Splash_Quit "*======== MGR_Main-Quit ========*"
    #!
lcMsgStr="<<<  Q.U.I.T. program " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
    #! caution: "halt"  will Kill the whole system. Dead System, no way out. 
    #! return && exit 0 ### will jump stack, then must "Quit" again to clear stack.
	exit 0  
    return  ### proper sequence must be "exit" then "return" down the "stack"
    #! IF Xterm, THEN IF ROX is running, THEN  MGR halts right here, in Xterm. 
    #! System has an orphaned routine (ROX) still on the stack.
fi
#! ft [EXIT:guiMainQUIT]
#!
#!
##! #######################################################################
#! end: #System Page : System ReStart-Reboot-ReQuit 
#! #######################################################################
#!
#!
#!
#!
#! ###################################################################################
#! begin: Bottom of MGR Fall-Thru 
#! ;;;  MGR_Fall_Thru_Trap  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###################################################################################
#!
#!
#!
#(: ====================================================================
#(: ft(EXIT='') #  FALL-THRU trap for 'loose' code
#(: called by: Fall-Thru
#(: param:
#(: purpose:     FALL-THRU trap for 'loose' code
#(: calls:
#(: method:      function ft(EXIT='')
#(: sends:
#(: rationale:
#(: note :
#(:    Exit Splash in color
#! ###########################################################
#! function ft(EXIT='')
#! colorful splash  FALL-THRU trap for 'loose' code 
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "4"
lcMsgStr="->->->  FALL-THRU trap for 'loose' code  " 
Sbr_Str2DevTrm "$lcMsgStr" "2" "1"
Sbr_Str2DevTrm "$lcMsgStr" "2" "2"
Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
#!
Sbr_Splash_Quit "*===Fall-Thru===Loose-Code===Quit===*"
#!
lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="<<<  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
	Sbr_ClearFlagsSystem  0   ### no display
    Sbr_ClearFlagsQuit   "1"   ### yes display
            #! list of flags to be killed :
            #! rm -f "${MGR_TouchCBXstatus}"
            #! rm -f "${MGR_BackUpStatus}"
            #! rm -f "${MGR_LockFile}"
            #! rm -f "${MGR_ReStart_flg}"
            #! rm -f "/tmp/MGR_Page_Control.flg"
    echo "FALL-THRU has final standard 'exit 0'"
	echo "... Will Pop the Stack if Layered ..."
    exit 0
    return
#! ### end:   "EXIT:QUIT" "EXIT:QUIT+"
#!
#!
#!
#! ###################################
#! end: Bottom of MGR Fall-Thru 
#! ###################################
#!
#! Text from Murga Presentation 
#!
#!
#! ###################################




 "Manager" for project development across 20 Puppy OS Distributions. 
#! ***************************************************************************
#!  JV4J-A9YI-UJFX
#! ***************************************************************************
#! Development "5" moved on to a revised "MGR 6" 
#! Development "6" moved on to a revised "MGR 7" 
#!      with compacted "NoteBook" style main screen. 
#!      with independent floating windows for the NoteBook main screen. 
#! ******************************************************************************
#!  rc.z_MGR.   #!  sh:64:3: note: Not following: 
#!  /etc/DISTRO_SPECS was not specified as input (see shellcheck -x). [SC1091]
#! ******************************************************************************
#(: all "cased, cloned, hacked" by gae.
#! ***************************************************************************
#!
#! PATH: 
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications/bin
. /etc/rc.d/PUPSTATE      #  gather basic "state" of Puppy "system"
. /etc/DISTRO_SPECS     #  gather basic Distro data
#! ************************************************************
#!
#! #######################################
export gcSysDevDob="240411-0633"
#! #######################################
#!
export gcIDME="IDME-JV4J-A9YI-UJFX"
#! *****************************************************
export gcMgrDevId="MGR"  
#! *****************************************************
export gcMgrVer="-7"   # "v:#" 
export gcMgrVerExt="-7.2"   # "v:#" # "-lint" "-TXN" "-DEV"   ### use this:  "gcSysNameVer"
#! *********************************************************
#! 
#! export gcMgrDevSubId=",,," # B4B or B5B   
#!      must be copy/paste from DISTRO_PUPPYDATE, PUPSAVE,  PUPSFS
#!      given: 'sda1,ext4,/pup_UpupB5B-SDA/upupbbsave-B5B' ,  generate "B5B" 
export  gcMgrDevSubId="`echo -n "$PUPSAVE" | cut -f 3 -d '-'`"
export  gcOsSubId="???"
#!
#! Debug controllers:
    #~ set -e		# Start - x e
    #~ set +xe      # Stop  + x e
#!

#! #############################################
#! top: Fall-Thru "initz" function 
#! #############################################
#!
#! =============================================
#! rc.z_MGR , the "Manager"  , the "FrameWork"
#! filename.sh is the name format,  so GEANY sees a 'script' as executable.
#! chmod +x rc.z_MGR.sh might be required for duplicate/export files.
#! "cased+cloned-and-hacked" by gae.
#! 
#! GNU bash is the shell.
#! Gtk is the gui / dialogue builder.
export gcMgrDevFirstRun="1"
#!
export gcMgrDevID="M.G.R.EmGr.DblClk.MnxGen"
export gcMgrDevName="Manager.Embedded-Graphics.DblClk."
#!
export gcSysNameBase="MGR"  #: used in ${gcSysNameBase} code as systemlabel
export gcSysNameVer=".7.2"      # "v:#" # "-lint" "-TXN" "-DEV"
export gcMGRname="Manager" 
#!
export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
export gcSysSaveFn="`echo -n "$gcSysSave" | cut -f 3 -d '/'`"
export gcSysIdFull="${gcSysSave}"			# ${PUPSAVE} # like "iso-KineticPup32-22.10"
#!
export gcSysDevHw="MCT-AMD-500_Bios2009_"	# Dev Computer HardWare
#!
export gcBootOsHd="SDA"			# OS Hard-Drive
export gcBootOsExe="${0}"		# OS Executable
#!
#!
#! ### gcSysKillProc #####################
#! ### purpose: disable GTK gui splash <button> process 
#! ###    for sample distribution we kill calls to external programs.
export gcSysKillProc=0	### used by Sbr_KillProc
#! if [ ${gcSysKillProc} -eq 0 ] then do "enable" all GTK gui <button> DEV process, 
#! if [ ${gcSysKillProc} -eq 1 ] then do "stub kill" for some GTK gui <button> PRODUCTION process
#! ### gcSysKillProc #####################
#!
#! ************************************************************
#! E3R "basename" : E3R will run two paths ***
export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/" 
export gcRootAppsBin="/root/my-applications/bin/"
export gcRootApps="/root/my-applications/"  # Puppy Linux always paths to this. 
#! PET install not required, just place downloaded scripts in /root/my-applications.
#! *************************************************************************************
#!
export gcSysDistroName="${DISTRO_NAME}" 
export gcSysDistroVersion="${DISTRO_VERSION}"
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_Db_Subname="$DISTRO_DB_SUBNAME"
export gcSysDistro_DB_Subname="${DISTRO_DB_SUBNAME}"


#~ export gcE3rAllBakFlg="E3R-All-Bak-Flg"  # used by Sbr_E3rAllBak  Flag Name
#!
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#!
#! touch "/tmp/MGR_Page_Control.flg"
export MGR_Page_Control_flg="/tmp/MGR_Page_Control.flg" # Not Used 
#!
#(: ================================================
#! 
#! Data & Flag for Embedded Graphic Image ### backup and flag-file
export gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"	# Image Master 
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#!
#(: ==================================================
#(:  begin: example of regular "function" label
#(:     Each regular "function" has a "header" that begins with label like this:
#(:     The #(: lines are exported, via TXN.sh to become "Program Documentation". 
#(:  function Sys() 
#(:  function Sbr() 
#(: 
#(: ==================================================
#(: function Sbr()
#(:  name: unknown
#(:  @param
#(:  @return
#(: called by:
#(: param:
#(: purpose:
#(: call this way:
#(: calls:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:
#(: # end:  example of regular "function" label
#(: ==================================================
#(:
#! ################################################
#! end: Fall-Thru "initz" function 
#! ################################################
#!
#!
#!
#!
#!
#! ==================================================
#~ Sbr_ImageCntMin() {		# Not Used 
#~ n=0
#~ }
#! ==================================================
#~ Sbr_ImageCntMax() {		# Not Used 
#~ n=0
#~ }
#! ==================================================



#(: ==================================================
#(: fx(Sbr_Splash_Banner)
#(: called by:  fx(FT_EXIT='CBXARS')
#(: param:
#(: purpose:
#(: calls:        Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" & sleep .5
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! ##################################################
function Sbr_Splash_Banner() {   # ACTIVE
	n=0
	/bin/echo -e "\\033[0G\\033[1;${3}*** \\033[1;${2} ${lcMsgStr} \\033[1;${3}***\\033[0;39m" 
} #
export -f Sbr_Splash_Banner
#!
#!
#!
#(: ==================================================
#(: fx(Sbr_Splash_Flip3)
#(: called by:  
#(: param:
#(: purpose:
#(: calls:        Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" & sleep .5
#(: method:  Sbr_Splash_Flip3 ${string}
#(: sends:
#(: rationale:
#(: note : 
#(:
#! ##################################################
function Sbr_Splash_Flip3() {   #: NOT ACTIVE
    n=0
    lcParam1="${1}"
#--- flipping colors ---red/yel---------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg red -bg yellow -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip1=$!	### kill splash
sleep .7    # minimum screen activation time
#--- flipping colors ---yel/blk-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip2=$!	### kill splash
sleep .9    # minimum screen activation time
#--- flipping colors ---yel/grn-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text " ${lcParam1} " &  
	GtkPidFlip3=$!	### kill splash
sleep .9    # minimum screen activation time
#-----------------------------------------------------------------------------------------------------
    kill ${GtkPidFlip1} 
    kill ${GtkPidFlip2} 
    kill ${GtkPidFlip3} 
#-----------------------------------------
} #
export -f Sbr_Splash_Flip3
#!
#!
#!
#!
#(: ==================================================
#(: fx(Sbr_Splash_It)
#(: called by:  
#(: param: msg string
#(: purpose:
#(: calls:        
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
function Sbr_Splash_It() {   # Active # Simple Splash : param "Str" "fg" "bg" "sleep" "opt"
#(: =====================================================
	n=0 
    #! working on default params.
    #! param = "." will trigger a default value, sometimes 
    #!               " "  or "0" not allowed.  
    #!               ""   converts to 'sleep "1"'  which may be too fast. 
    #! color: system, red, yellow, orange, green, blue, purple
    #! <window dimensions must be hard-code.
    #! <window dimensions must be hard-code.
    #! <window dimensions must be hard-code.
    #!
lcMsgStr="$1"
lcMsgColorFg="$2"   # ForeGround
if [ ! $2  ] ; then 
    lcMsgColorFg="yellow"   # good default 
fi    

lcMsgColorBg="$3"   # BackGround
if [ ! $3  ] ; then 
    lcMsgColorBg="blue"  # good default
fi    

lcMsgSlp="$4"       # sleep  default is "1"
if [ ! $4 ] ; then  # Sleep 
    lcMsgSlp="1"  # < 1  usually does not make it to the screen, timing issues. 
fi    
    #! -D---
/usr/lib/gtkdialog/box_splash -fg ${lcMsgColorFg} -bg ${lcMsgColorBg} -border true  -close never -text "${lcMsgStr}     " &
    RETVAL=$?
	GTKPID_Cold_Splash=$!
	sleep ${lcMsgSlp}
    #
lcMsgOpt="$5"   # standard is do the kill 
if [ ! $5 ] ; then  # IF   No Option,  THEN   kill pid ( compatible / normal)
    kill ${GTKPID_Cold_Splash}
    #! if NOT flag, then KILL,  Normal.
fi    
#!
} #
export -f Sbr_Splash_It
#!
#!

                                    #(: ==================================================
                                    #(: fx(Sbr_Page_Init)
                                    #(: called by:  
                                    #(: param: 
                                    #(: purpose:
                                    #(: calls:        
                                    #(: method:
                                    #(: sends:
                                    #(: rationale:
                                    #(: note : 
                                    #(:
                                    #~ function Sbr_Page_Init-X()  {     # NOT ACTIVE # Main ( ) : Basic V.6 Page Control: trap first run ;
                                    #~ #(: ===============================================================
                                    #~ if  [ ! -f "/tmp/MGR_Page_Control.flg" ]  ; then    
                                        #~ n=0
                                        #~ touch "/tmp/MGR_Page_Control.flg"
                                        #~ #! Sbr_Splash_It " Page_CTL   if ! -f " "yellow" "red" "3"     # -D!---
                                        #~ #(: Page Control NOTE:  
                                        #~ export gcP1_ctl="false"
                                        #~ export gcC2_ctl="false"
                                        #~ export gcP3_ctl="false"
                                        #~ export gcP4_ctl="false"
                                    #~ else
                                        #~ n=0       #  Preserve Previous Page var. 
                                    #~ fi
                                    #~ } # end 
                                    #~ export Sbr_Page_Init

                                    #(: ===========================================================
                                                #(: Page Control NOTE:  
                                                
                                                #(: Function to "open" / "close" a "window" via <vbox visible="true" / "false" 
                                                #(:
                                                #(: Given: User will be selecting a PageCtl value, then execution of function will "Re-Start" via "${0}".
                                                #(: BUT:  THEN every Re-Start ${0} will re-set these to "0" 
                                                #(: ------- which erases the prior action of selecting a PageCtl value. 
                                                 #(: THEREFORE: Page Ctl method has this rule: 
                                                #(: ....... "initial" Select will be from an array of "closed" pages
                                    #(: ===========================================================


                                    #(: ========================================================
                                    #(: ft(EXIT:EXIT:guiC_X_ctl ) (EXIT:guiC_X_ctl)      # Active  Page 1 
                                    #(: called by: gui Page 1 Control , top of page 1
                                    #(: param:
                                    #(: purpose: Page Ctrl to "open" / "close" windows by controlling <vbox visible="${gcP1_ctl}"> 
                                    #(: calls:
                                    #(: method:  InterLocked <button> controls. Only One can be "true" .
                                    #(: sends:
                                    #(: rationale:
                                    #(: note :
                                    #(:
                                    #~ function Sbr_Page_Ctl-X() {    #  EXIT:guiC1_ctl    EXIT:guiC1_X_ctl      # NOT ACTIVE

                                    #(: called by    if [ "$EXIT" = "gui?1_ctl"
                                    #(: if [ "$EXIT" = "guiP1_X_ctl" ] || [ "$EXIT" = "guiP2_X_ctl" ] || [ "$EXIT" = "guiP3_X_ctl" ] || [ "$EXIT" = "guiP4_X_ctl" ] || [ "$EXIT" = "guiP0_X_ctl" ]   ; then  
                                    #!
                                    #! Sbr_Splash_It "function Sbr_Page_Ctl()" "yellow" "green" "1"
                                    #~ n=0
                                    #~ #! ##################################################
                                    #~ #(: function EXIT:guiP1_X_ctl    
                                    #~ if [ "$EXIT" = "guiP1_X_ctl" ] ; then   # PageCtl flip & ReStart
                                        #~ case "${gcP1_ctl}" in   #! TARGET 
                                           #~ "true") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                           #~ "false") 
                                                    #~ export gcP1_ctl="true" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                            #~ *)  export gcP1_ctl="false" 
                                            #~ ;;	 
                                        #~ esac
                                        #~ Sbr_ClearFlagsSystem 0  
                                        #~ Sbr_Cbx_ReStart 1   
                                    #~ fi
                                    #~ #! ##################################################
                                     #~ #(: function EXIT:guiP2_ctl    EXIT:guiC2_X_ctl
                                    #~ if [ "$EXIT" = "guiP2_X_ctl" ] ; then   # PageCtl flip & ReStart
                                        #~ case "${gcP2_ctl}" in   #! TARGET 
                                           #~ "true") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false"
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                           #~ "false") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="true" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                            #~ *)  export gcP2_ctl="false" 
                                            #~ ;;
                                        #~ esac
                                        #~ Sbr_ClearFlagsSystem 0   
                                        #~ Sbr_Cbx_ReStart 1   
                                    #~ fi
                                    #~ #! ##################################################
                                    #~ #(: function EXIT:guiC3_ctl    EXIT:guiC3_X_ctl
                                    #~ if [ "$EXIT" = "guiP3_X_ctl" ] ; then   # PageCtl flip & ReStart
                                        #~ case "${gcP3_ctl}" in   #! TARGET 
                                           #~ "true") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                           #~ "false") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="true" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                            #~ *)  export gcP3_ctl="false"
                                            #~ ;;	 
                                        #~ esac
                                        #~ Sbr_ClearFlagsSystem 0  
                                        #~ Sbr_Cbx_ReStart 1   
                                    #~ fi
                                    #~ #! ##################################################
                                    #~ #(: function EXIT:guiC4_ctl    EXIT:guiC4_X_ctl
                                    #~ if [ "$EXIT" = "guiP0_X_ctl" ] ; then   # PageCtl flip & ReStart
                                        #~ case "${gcP0_ctl}" in   #! TARGET 
                                          #~ "true") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                           #~ "false") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP0_ctl="true" 
                                                    #~ ;;
                                            #~ *)  export gcP0_ctl="false";;	 
                                        #~ esac
                                        #~ Sbr_ClearFlagsSystem 0  
                                        #~ Sbr_Cbx_ReStart 1   
                                    #~ fi
                                    #~ #! ##################################################
                                    #~ #(: function guiC0_X_ctl    EXIT:guiC0_X_ctl
                                    #~ if [ "$EXIT" = "guiP0_X_ctl" ] ; then   # PageCtl flip & ReStart
                                        #~ case "${gcP0_ctl}" in   #! TARGET 
                                          #~ "true") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP4_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                           #~ "false") 
                                                    #~ export gcP1_ctl="false" 
                                                    #~ export gcP2_ctl="false" 
                                                    #~ export gcP3_ctl="false" 
                                                    #~ export gcP4_ctl="false" 
                                                    #~ export gcP0_ctl="false" 
                                                    #~ ;;
                                            #~ *)  export gcC0_ctl="false";;	 
                                        #~ esac
                                        #~ Sbr_ClearFlagsSystem 0  
                                        #~ Sbr_Cbx_ReStart 1   
                                    #~ fi

                                    #~ } # end 
                                    #~ export -f Sbr_Page_Ctl-X
                                    #!
                                    #(: ==========================================================
                                    #(: Page Control NOTE:  
                                    #(: Function to "open" / "close" a "window" via <vbox visible="true" / "false" 
                                    #(:
                                    #(: Given: User will be selecting a PageCtl value, then execution of function will "Re-Start" via "${0}".
                                    #(: BUT:  THEN every Re-Start ${0} will re-set these to "1" 
                                    #(: ------- which erases the prior action of selecting a PageCtl value. 
                                    #(: export gcP1_ctl="true"
                                    #(: export gcC2_ctl="true"
                                    #(: export gcPg2ctl="true"
                                    #(: export gcPg2ctl="true"
                                    #(: THEREFORE: Page Ctl method has this rule: 
                                    #(: ....... "initial" Select will be from an "open" window to a "close" window. 
                                    #(: ========================================================
                                    #(: ft(EXIT:EXIT:guiC_X_ctl ) (EXIT:guiC_X_ctl)      # Active  Page 2 
                                    #(: called by: gui Page 2 Control , top of page 2
                                    #(: param:
                                    #(: purpose: Page Ctrl to "open" / "close" windows by controlling <vbox visible="${gcP1_ctl}"> 
                                    #(: calls:
                                    #(: method:
                                    #(: sends:
                                    #(: rationale:
                                    #(: note :
                                    #(: ========================================================

                                                    #!
                                                    #(: ====================================================
                                                    #(: fx(Sbr_Str2Banner)      # NOT USED
                                                    #(: called by:
                                                    #(: param:
                                                    #(:      ## STRING message
                                                    #(: purpose: Display "String" to Terminal
                                                    #(: calls:
                                                    #(: method: param : # hard code banner # display to xterm   
                                                    #(: sends:
                                                    #(: rationale:
                                                    #(: note :
                                                    #! #####################################################
                                                    # function Sbr_Str2Banner() {   #: NOT USED     # hard code banner # display to xterm
                                                        # n=0  
                                                        # lcMsgStr=$1
                                                        # /bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m"
                                                        # /bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m"
                                                    # } #
                                                    # export -f Sbr_Str2Banner

#!
#(: ==========================================================
#!  240218-0500   
#(: ==========================================================
#(: fx(Sbr_Str2DevTrm)  #  Preferred for Terminal display.
#(: called by: everyone.  #  Preferred for Terminal display.
#(: param:
#(:      ## STRING message
#(:      ## COLOR name or number
#(:      ## MARGIN number 
#(:      ## Destination Display 
#(:
#(: purpose: Display "String" to DevConsole or Terminal
#(: calls:
#(: method: param : "char string" "# color" "# margin"
#(: sends:
#(: rationale:
#(: note :
#! ############################################################
function Sbr_Str2DevTrm() {   #: ACTIVE   #  Preferred for Terminal display.
#! # param:  "char string"  "color"  "margin" "Console-Terminal"
lcS2TStr=${1}   # ## STRING message
lcS2TClr=${2}   # ## COLOR name or number
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal
#!
lcDevConsole=""	   # ${4} # default to "T"erminal ###
#!
case "${lcS2Topt}" in   #! TARGET 
   "C") lcDevConsole=" > /dev/console" ;;
   "T") lcDevConsole="" ;;
    *)  lcDevConsole="" ;;	#: default Geany "T"erminal mode
esac
#!
case "${lcS2TMrg}" in   #! MARGIN
   0|"0") /bin/echo -n -e "\\033[0G"   ${lcDevConsole} ;;
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"  ${lcDevConsole} ;;
esac
#!
case "${lcS2TClr}" in   #!COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
    ""|"0")                                         /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default yellow
    "31"|"32"|"33"|"34"|"35"|"36"|"37"|"38"|"39")   /bin/echo -n -e "\\033[1;${lcS2TClr}m"   ${lcDevConsole} ;; 
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
esac
#! CLEAR Lingering Color setup
	/bin/echo -n "${lcS2TStr}"  ${lcDevConsole} 
	/bin/echo -e "\\033[0;m"  ${lcDevConsole} 
	return  0
#!
} #
export -f Sbr_Str2DevTrm
#!
#!
#!
#!
#! ===_MB_===================================================
#! ## top ###  MB Multi-Button  P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ## top ###  MB Multi-Button  P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ## top ###  MB Multi-Button  P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ===_MB_===================================================
#!
#!
#!
#! === _MB_ =======================================================
function Sbr_MB_S2F1() {   #  called by Sbr_MB
    n=0
    export gcFlgGitHub="<STD>"
    export gcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
    gcRunCnt="1" 			# 2
    gcNiceNum="19" 		# 3
    #! Sbr_Splash_It "=== Sbr_MB_S2F1 === ${gcRunFile} ===" "yellow" "purple" "3"    #! -D---
    #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    #! need gtkdialog here, so to split the splash/kill        
lcMsgStr="-- Running  ${gcRunFile}  -- "
    #! -D---
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.   --- Running  Sbr_MB_S2F-${gcRunCnt}---    
.     "&
    RETVAL=$?
    GTKPID_MB_S2F_Init1=$!	# capture PID
    sleep 1
    #!
    Sbr_Sync   "1"   # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'     #! -D---
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "     --- Running  Sbr_MB_S2F-1---    "&
    RETVAL=$?
    GTKPID_MB_S2F_Init2=$!	# capture PID
    nice -n ${gcNiceNum} ${gcRunFile} /initrd/pup_ro1 /initrd/pup_rw
    #!
    sleep .1
    kill ${GTKPID_MB_S2F_Init2}
    kill ${GTKPID_MB_S2F_Init1}
    #!
    Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1   # no wait
} # 
export -f Sbr_MB_S2F1
#!
#! === _MB_ =======================================================
function Sbr_MB_s2f1() {
    n="0"
    Sbr_MB_S2F1
} #   
export -f Sbr_MB_s2f1
#!
#!
#!
#! === _MB_ =======================================================
function Sbr_MB_S2F3() {    #   #  ACTIVE     #  called by Sbr_MB_ALL   
    n="0"
    Sbr_Sync   "1"   # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' 
    #!
	gcS2FstartCount="1"
    gcS2FwaitCount="1"
    gcS2FloopCount="3"
    gcGtkDialog="1"
    #!
    /bin/echo -en "\\033[0;39m"		>  /dev/console
    /bin/echo -en "\\033[60G"    >/dev/console
    /bin/echo -en "\\033[1;31m "    >/dev/console
    #!
    #!
    sleep .5
    echo "=== '_S2F-3_' =============================================="
            n=0
            export gcFlgGitHub="<STD>"
            export gcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
        #! Sbr_Splash_It "=== Sbr_MB_S2F3 === ${gcRunFile} ===" "yellow" "purple" "3"    #! -D---
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"		### grave-mark in date() !!!
        lcSysNowDts01="`date +%y%m%d-%H%M-%S`" 		### allow visual timing of each cycle
        lcMsgStrTime="    --- Start Time --- ${lcSysNowDts00} "
        #! 
        #! -D---  Background is Stable
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.      MGR-Save-2-Flash () : ${gcS2fDtsVer} 
.             ${PSUBDIR}
.             (${gcS2FloopCount}) loops
.       ${lcMsgStrTime} 
.
.
.
.
.
.
.
.
.      nice -> snapmergepuppy ${gcFlgGitHub}
.                                                                        "&
            RETVAL=$?
            GTKPIDMAIN2=$!
            sleep 3 # ${gcS2fSleep}
            kill ${GTKPIDMAIN2} # test to clear lingering splash
          /bin/echo "- "
          /bin/echo "- "
          /bin/echo "- "
        #!
	WAITCNT="${gcS2FstartCount}"	# MGR-S2F-2 will Loop 1,2,3 times.
    while [ ${WAITCNT} -lt 4 ];do
		gcRunCnt="${WAITCNT}" 			# 2
		gcNiceNum="19" 					# 3
		gcFlgGitHub="${gcFlgGitHub}"	# 4
		#!
		lcMsgStr="-- Running Cnt:${gcRunCnt} -- Nice:${gcNiceNum} --"
        #! -D--- Foreground Action
		/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "$lcMsgStr" &
		GTKPIDRUNC=$!
        #!
		nice -n ${gcNiceNum} ${gcRunFile} /initrd/pup_ro1 /initrd/pup_rw
        #!
		sleep .5 # ${gcS2fSleep}
		kill $GTKPIDRUNC
		#!
		WAITCNT=`expr $WAITCNT + 1`		### count down to zero
		sleep .1
    done
    #! ## that's all.
   /bin/echo "- " >/dev/console
   /bin/echo " - " >/dev/console
   /bin/echo "  - " >/dev/console
   /bin/echo "   - " > /dev/console
    #!
	if [ "$gcGtkDialog" -eq "1" ] ; then
		sleep .1
		kill ${GTKPIDSMP}	# ## has lingered
		sleep .1
		kill ${GTKPIDMAIN2}	# ## has lingered
	fi #

        # head of shell error, PID doesnot clear from screen.
		kill ${GTKPIDSMP}	# ## has lingered
        kill ${GTKPIDMAIN2}	# ## has lingered

	echo "<<< running Save2Flash ============================="
    Sbr_Cbx_ReStart 1   # no wait
} # end 
export -f Sbr_MB_S2F3      #     called by Sbr_MB_s2f3   
#!
#! === _MB_ ================================================
function Sbr_MB_s2f3() {
    n="0"
    Sbr_MB_S2F3
}    
export -f Sbr_MB_s2f3
#!
#!
#! === _MB_ ================================================
function Sbr_MB_sfs_load() {    #   Sbr_MB_All
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="/usr/sbin/sfs_load"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # Run  SFS Loader App
	Sbr_Cbx_ReStart 1 	 # no wait
} #
export -f Sbr_MB_sfs_load
#! === _MB_ =================================================
function Sbr_MB_SFS_LOAD() {      # called by Sbr_MB_All
    n=0
    Sbr_MB_sfs_load
} #
export -f Sbr_MB_SFS_LOAD
#!
#! ===_MB_==================================================
function Sbr_MB_jwd() {     # called by Sbr_MB_All
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/jwmdesk/jwmdesk"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}   # jwmdesk
    Sbr_Cbx_ReStart 1   # no wait
} #
export -f Sbr_MB_jwd
#!
#! === _MB_ ================================================
function Sbr_MB_JWD() {      # called by Sbr_MB_All
    n=0
    Sbr_MB_jwd
} #
export -f Sbr_MB_JWD
#!
#!
#!
#! ===_MB_=================================================
function Sbr_MB_ppr() {     # called by Sbr_MB_All     
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/bin/pprocess"   # pprocess
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
} #
export -f Sbr_MB_ppr
#(: ======================================================
function Sbr_MB_PPR() {        # NOT USED # was called by guiPPR
    n=0
    Sbr_MB_ppr
} #
export -f Sbr_MB_PPR
#!
#!
#!
#! ===_MB_===================================================
function Sbr_MB_rox() {      # calls system "ROX" file manager. 
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    # called by ROX with no parameter.  Tahr_6.06 skips the ReStart, runs .rox "OK". 
    # dropped the ReStart, unnecessary complicaton. 
    # interaction with ROX code. 
    # Sbr_Cbx_ReStart & ### must continue thru ReStart to hit . rox 
    Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that Start/ReStart can run.
    cd /initrd/mnt/dev_save/MY_/usr-share/My_Dev_
    . rox  
    # Sbr_Cbx_ReStart # & ### must continue thru ReStart to hit . rox 
    # exit
} # 
export -f Sbr_MB_rox
#! === _MB_ =======================================================
function Sbr_MB_ROX() {
    n=0
    Sbr_MB_rox
} #
export -f Sbr_MB_ROX
#!
#!
#! ===_MB_===================================================
function Sbr_MB_p_mnt() {        # called from Page UTIL 
    n=0
    Sbr_Splash_It "Sbr_MB_p_mnt" "yellow" "red" "3"
	Sbr_KillProc "${EXIT}"	    # gui-P-MntInt
    Sys_MGR_pMount_All "1"      ### Sbr -> internal
	Sbr_Cbx_ReStart &           # no wait
	Sbr_Cbx_ReStart 1           # no wait
} #
export -f Sbr_MB_p_mnt
#!
#! === _MB_ =======================================================
function Sbr_MB_P_MNT() {
    n=0
    Sbr_MB_p_mnt
} #
export Sbr_MB_P_MNT
#!
#!
#! ===_MB_===================================================
function Sbr_MB_u_mnt() {        # 
    n="0"
    Sbr_Splash_It "Sbr_MB_u_mnt" "yellow" "red" "3"
	Sbr_KillProc "${EXIT}"	    # gui-U_MntInt
    Sys_MGR_uMount_All "1"      ### Sbr -> internal
	Sbr_Cbx_ReStart &           # no wait
	Sbr_Cbx_ReStart 1           # no wait
} #
export -f Sbr_MB_u_mnt
#!
#! === _MB_ =======================================================
function Sbr_MB_U_MNT() {
    n=0
    Sbr_MB_u_mnt
} #
export Sbr_MB_U_MNT
#!
#!
#!
#!
#! ===_MB_===================================================
function Sbr_MB_ctrl() {  # STUB  # CTRL # working on auto creation of independent window. 
        n="0"
        #! Sbr_KillProc "${EXIT}"	# gui-U-MntInt
        #! <action Sbr_Splash_It   sets up a new "window" .
        Sbr_Splash_It "Sbr_MB_ctrl_
        _currently working on auto creation of independent window." " . " "." "."  # kill ${GtkPidSSI} 
        sleep 3
        kill ${GtkPidSSI} 
        #! has lingering splash from an independent window. 
        #! . /usr/sbin/wizardwizard
        #! . /usr/share/applications/Wizard-Wizard.desktop
        #! Sys_MGR_ctrl "1"  ### Sbr -> internal
        Sbr_Cbx_ReStart 1  # no wait
        # STUB  # CTRL # working on auto creation of independent window. 
} #
export -f Sbr_MB_ctrl
#! === _MB_ =======================================================
function Sbr_MB_CTRL() {      # called by Sbr_MB_All
    n=0
    Sbr_MB_ctrl
} #
export -f Sbr_MB_CTRL
#!
#!
#!
#! ===_MB_===================================================
#! ##    ###  MB P.A.G.E.    VERTICAL _GUI   #  "pageV"  "pageVert"
#! ===_MB_===================================================
#!
#! ===_MB_===================================================
#(: ======================================================
#(: fx(Sbr_gui_MB_xml)      ## ACTIVE  # Sbr_MB_All calls Sbr_gui_MB_xml  to evaluate Sbr_gui_MB_Dialog 
#(: called by : Sbr_gui_MB_all
#(: purpose :  Vertical "Multi-Buttons" array of functional calls to sub-routines
#(: receives param : none
#(: returns : "Selected Button"  name-of-subroutine echo into config-file
#(:      <action>echo { 1 ., {} Multi-Button } > /0-MGR_MB_RetVal.cfg </action>  
#(: note:
#(:		MB_gui "eval" will not initiate "<action>"
#(:		MB_gui writes "<action>" results into a "RetVal.cfg"
#(:         BASH code in Sb_MB_gui will import and call the "<action>" subroutine. 
#(:
#(: ======================================================
#(:  	gtkdialog/box_help will handle format and embedded color text codes.
#(:  	xmessage will NOT handle format and color embedded text codes.
#(: ======================================================

#! ===_MB_===================================================
function Sbr_gui_MB_xml() {  # ACTIVE  # contains Sys_Multi_Button_Dialog    # This is "pageV" "pageVert"
	n=0     # called by Sbr_gui_MB_all
        #!
        #!  Sbr_Multi_Button : develop to contain all page (1), (2), (3) of main gui code. 
        #!  this will be a branch call from the "main""GUI". 
        #!  Make use of code like 
        #! 		<button> <label>"#1. Multi_Button ACTIVE " </label>
        #!            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        #!            <action>echo { 1 ., {} Multi-Button } > /0-MB-1-MultiButton.txt </action>  
        #!            <action>echo { 1 ., {} Multi-Button } </action>
        #! which will leave a "Result" flag to be "Imported" by the calling IF[SubRoutine].  
        #!
        #! still working to expand this major function code group. 

        #! <window  title="MGR_Vert_GUI_Dialog"
            #! window-position="1" 
            #! width-request="270"
            #! height-request="550" 
            #! space-expand="true" 
            #! border-width="3"
            #! resizable="true" 
        #!   
export gcMbCfgFn="/0-MGR_MB_RetVal.cfg"     # special temp cfg for "MB" Selection-Transfer .
echo "0" > /0-MGR_MB_RetVal.cfg
#! generating this Second Dialog/eval is slow.
export Sbr_gui_MB_Dialog='
<vbox>

    <vbox>
        <vseparator height-request="7" > </vseparator>
        <hbox homogeneous="true">
            <button tooltip-text="'jug-redxyel'" has-focus="false" width-request="7" xalign=".5"  >
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>25</width><height>25</height>   
            <label> "" </label> 
            <action>lxAction:ToolTip</action> </button>
            <hseparator width-request="11" ></hseparator>
        </hbox>
    </vbox>

    <vbox homogeneous="true">

                <hseparator width-request="11" ></hseparator>

     <button  tooltip-text="PageVert / MB_Method: 
#: note:  Multi-Button module in PageVert
#: fx (Sbr_gui_MB_xml) 
#: called by : Main-GUI-Dialog via EXIT:guiMB 
#: purpose :  Build/Present  Multi-Button  array 
#: - - -    of functional calls to sub-routines
#: - - -    which are experimental system programs.
#: returns : 
#:  Selected Button generates a Token FileName
#:  Token FileName is sent as a string echo into config-file
#:  example for ROX system file manager program:
#: IF GTK <action>echo 'Sbr_MB_rox' > /0-MGR_MB_RetVal.cfg </action>  
#: THEN BASH will :
#:  - - - load/cat/read the file.cfg 
#:  - - - then run the local function  Sbr_MB_rox() 
#:  - - - which will execute the ROX system file manager.
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  READ the CODE in the Vertical MB page section .
#:  Sbr_gui_MB_xml  eval  will not initiate action
#:  Sbr_gui_MB_xml writes action results into a file.cfg
#:  BASH code  will import/cat/read the file.cfg
#:  BASH code  will call the <action> subroutine.
#:  READ the CODE in the Vertical MB page source.
#:  READ the CODE  to see the specific method.
#:  This method avoids conflict between BASH and GTK .
#: 
#:  P_mnt + CTB-SL + U_mnt   
#: will 
#:      UpMountAll, 
#:      CTB Scan All HardDrives, 
#:      DownMount all. 
#: _____________________________________________________
"
        has-focus="false"  xalign=".5" >
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <label>'Tool-Tip'</label>
        <action>lxEXIT:ToolTip </action>
    </button>

    <button> <label>"'S2F1'"</label>
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <action>echo 'Sbr_MB_s2f1' > /0-MGR_MB_RetVal.cfg </action>  
        <action>'EXIT:1' </action>    </button>

    <button> <label>"'S2F3'"</label>
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <action>echo 'Sbr_MB_s2f3' > /0-MGR_MB_RetVal.cfg </action>  
        <action>'EXIT:2' </action>    </button>

    <button> <label>"'-Sfs_load-'"</label>
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <action>echo Sbr_MB_sfs_load > /0-MGR_MB_RetVal.cfg </action>  
        <action>'EXIT:3' </action>    </button>

    <button> <label>"-JWD-" </label>
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <action>echo 'Sbr_MB_jwd' > /0-MGR_MB_RetVal.cfg </action>  
        <action>'EXIT:4' </action>    </button>

    <button> <label>"'{-ROX-}'"</label> 
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <action>echo 'Sbr_MB_rox' > /0-MGR_MB_RetVal.cfg </action>  
        <action>'EXIT:5' </action>    </button>

    <button   tooltip-text="_CTB_UP_Scan_DN_" > 
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <label>"'{_CTB-SLX_}'"</label>
        <action>echo '/root/my-applications/rc.z_CTB-SLX.sh' > /0-MGR_MB_RetVal.cfg </action>  
       <action>'EXIT:8' </action>    </button>
  
     <hseparator width-request="11" ></hseparator>
    </vbox>

    <vbox>
                 <button    tooltip-text="_Multi-Box_ReStart_">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
                    <label>'EXIT'</label>
                    <action function="'launch'">msg_DC_Quick_window</action> <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>echo Sbr_Cbx_ReStart 1 > /0-MGR_MB_RetVal.cfg </action>  
                     <action>'EXIT:8'</action>	</button>
    </vbox>

    <vbox visible="false">
                <hseparator width-request="11" ></hseparator>
        <button cancel><label>Quit</label>	</button>
                <hseparator width-request="11" ></hseparator>
                <vseparator height-request="7" > </vseparator>
    </vbox>

</vbox>
'
#! eval "`gtkdialog --center  -p    Sys_Multi_Button_Dialog`"   # alternate coding. 
#! -D---
gtkdialog  --center --program=Sbr_gui_MB_Dialog
#!
#! ESCAPE key #!
#! <button visible="1"  has-focus="false" width-request="7" xalign=".5"  tooltip-text="Generates an ESC key">
#! <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
#! <label> "'ESCape'" </label> 
#! <action this-is-window="escape" signal="key-press-event" condition="command_is_true( [[ \$KEY_RAW = 0x9 ]] && echo true )">EXIT:exit</action>
#! </button>
#
} # 
export -f Sbr_gui_MB_xml         # pageV pageVert
#!
#!
#(: ====================================================
#(: fx(Sbr_MB_All)       # pageV pageVert
#(: called by : Main_GUI, ft(EXIT:Sbr_MB)
#(: purpose :  Simple Sample of Buttons
#(: receives param : none
#(: returns :
#(: note:
#(:		eval will not initiate the "action"
#(:		gtdialog will activate the "action"
#(:       bash will import the "key-selection"
#(:       bash will execute the "key-selection" 
#(:
#(:  	gtkdialog/box_help will handle format and embedded color text codes.
#(:  	xmessage will NOT handle format and color embedded text codes.
#! ####################################################
function Sbr_gui_MB_All() {  # ACTIVE   # pageV pageVert
    # Sbr_MB_All calls Sbr_gui_MB_xml  to evaluate Sbr_gui_MB_Dialog 
    #!       # pageV pageVert
	n=0
    #! Sbr_Splash_It "!!! TRACE: >>> {Sbr_gui_MB_xml} " "yellow" "purple" "3"
    Sbr_gui_MB_xml      # call the Page-Vertical XML GUI code.   # pageV pageVert
    #! Sbr_Splash_It "!!! TRACE: <<< {Sbr_gui_MB_xml} " "yellow" "purple" "3"
    #! 
    #! === build config code from {Sbr_ARB_Init} ===
    lcMbCfgFn="/0-MGR_MB_RetVal.cfg"
    lcMbCfgId=`cat ${lcMbCfgFn}`   #:  extract {Fn} to lcVar
    #!
    #! ===================================
    #! Sbr_Splash_It "!!! TRACE: ${lcMbCfgFn} delivered 
                  #!  {{ ${lcMbCfgId} }} <<<" "yellow" "purple" "3"  # two line splash Config Delivered
    #! ===================================
    #! Returned with token filename lcMbCfgFn
    #! Express (execute) the FnTarget as a "command' 
    lcMsgStr="${lcMbCfgId}"
    ${lcMbCfgId}    # Express the ".filename" and "Sbr_filename"  "As-Is" ! 
    #!
    #! ===================================
    #! the token filename can refer to a "local" SubRoutine or "external" executble. 
    #!
    # test: if "." is first char of ConfigID,  so to run on external external funxtion
    #       rc.z_MGS.sh ; rc.z_CTX.sh ; rc.z_S2F.sh ; SFS-load ; JWDesk ; pProcess ; Cold-Tar-Backup ; 
    # test: if "EXIT" is first char of ConfigID, so to Fall-Thru to internal "if [ $EXIT' routine
    #       
    # test: else simply call the "configID" ( it is internal to this program, and recognizable as a 'funxtion()' )
    # 
    # Sbr_MB must embed key format, then export key, MGR will import key, execute key. 
    #       "."Fn is a real, external, direct file.  Fn must exist in visible system space. 
    #       "Sbr_" is a local SubRoutine.  Special "Sbr_MB_???" routines are written to handle this.   
    #       "EXIT" is a Fall-Thru "If [ $EXIT" routine.  ( method Not Used ).
    #! IF MB_call has been executed, THEN program will be running that target Fn code.
    #! ELSE   Fall-Thru to this standard Sbr_Cbx_ReStart.
    #!
    Sbr_Cbx_ReStart 1
    #!
 } #  end: Multi-Button
export -f Sbr_gui_MB_All     # pageV pageVert
#!
#! ===_MB_===================================================
#! ## bot ###  MB P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ## bot ###  MB P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ## bot ###  MB P.A.G.E. VERTICAL  #  "pageV"  "pageVert"
#! ===_MB_===================================================
#!
#!
#!
#!
#!
#!
#! ===_Menu.lst_=======================================================
#! ## begin: MenuMain_Echo   
#! ## MenuStandard  
#! ## Menu_Standard_Selection_Header
#! ===_Menu.lst_=======================================================
#!
#(: ====================================================
#(: fx(Sbr_Menu_Standard_Selection_Header)    # MainMenu
#(: called by: Menu Echo Short and Long 
#(: param: 
#(: purpose: Standard Menu Options, both Short and Long 
#(: calls:
#(: method: standard "echo" 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'header' for long menu and short menu. 
#(: note : these "title Numbers" must match the Prep "if [ " for each "Puppy Distro" in list.
#(: Prep "if [ " code will declare/assign menu paramters. 
#!
#! method: echo Standard Main Menu Options into ""Short and "Long" Menu.lst file output. 
#! ########################################################
function Sbr_Menu_Standard_Selection_Header() {  # ACTIVE # Standard Menu Selection Header 
		echo "###  ${gcBootOsHd} ### echo Standard Main Menu Options ##########"
		echo "###################################{ Kinetic Kudu +D.22 } "
		echo "title  1 { K-K }-----UpupKK+D-22.  -------K:5--------------- \n Kinetic Kudu  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupKK-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupKK-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupKK-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:5  }"
		echo "title  2 {!!!_B5B_!!!}--<UpupBB-K5> ---Edit----K:5---FF--LO------  \n Bionic Beaver  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB5B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB5B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB5B-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Jammy Jellyfish +D+22.04 }"
		echo "title  3 { J-J }-----UpupJJ+D+22.04 L6 ---K:5--------------- \n Jazzy Jellyfish  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupJJ-SDA/vmlinuz  psubdir=/pup_UpupJJ-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupJJ-SDA/initrd.gz"
		echo "###################################{ S15pup64 Slacko"
        echo "title  4 { S1564 }---S15pup64-20.01 -----K:5---FF--LO------ \n  \n  \n"
        echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo "  kernel /pup_S15pup64-${gcBootOsHd}/vmlinuz    psubdir=/pup_S15pup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_S15pup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Mantic Minotaur }"
		echo "title  5 {!!!_uMM_!!!}_< UpupMM-23.11 > Mantic-Minotaur-L6-K:6 - \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupMM-SDA/vmlinuz    psubdir=/pup_UpupMM-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupMM-SDA/initrd.gz"
		echo "###################################{ Tahr-6.06}"
		echo "title  6 {!!!_T-6_!!!}----Tahr-6.06  -------------------------   \n Trusty Tahr  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupT6-SDA/vmlinuz    psubdir=/pup_UpupT6-SDA  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupT6-SDA/initrd.gz"
		echo "###################################{ Xenial-64-750}"
		echo "title  7 { X64 }-----Xenial-64-750  ------K:4---FF--LO----------  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX64-SDA/vmlinuz  psubdir=/pup_UpupX64-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupX64-SDA/initrd.gz"
		echo "###################################{ Mantic Minotaur }"
		echo "title  8 { DBW }-----DpupBW       Debian Book-Worm-K:6 ----- \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_DpupBW-SDA/vmlinuz    psubdir=/pup_DpupBW-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_DpupBW-SDA/initrd.gz"
        #!
		echo "###################################"
        #!
		echo "###################################{ SpupSlacko64 }"
		echo "title  9  { S-7 }----pup Slacko7+14.2 ----------------------  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_SpupS7-${gcBootOsHd}/vmlinuz    psubdir=/pup_SpupS7-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_SpupS7-${gcBootOsHd}/initrd.gz"
	    echo "# #####################################{ S15Slacko-64 }"
		echo "title 10 { S64 }-----SpupSlacko64  ------------- 64 ------- \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Spup64-${gcBootOsHd}/vmlinuz  psubdir=/pup_Spup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Spup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Impish Indri }"
		echo "title 11 { I-I }-------Upup-Impish-Indri ------------------------ \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupII-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupII-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupII-${gcBootOsHd}/initrd.gz"
        echo "###################################{ UpupFF+D08.20.12 Focal-Fossa }"
		echo "title 12 { F-F }------Focal-Fossa  -------FireFox-----------  \n Focal-Fossa  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupFF-SDA/vmlinuz    psubdir=/pup_UpupFF-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupFF-SDA/initrd.gz"
		echo "# #####################################{ XenialX7.08 }"
		echo "title 13 { X708}----Xenial-7.08  -------------------         \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX708-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupX708-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupX708-${gcBootOsHd}/initrd.gz"
		echo "# #######################{ Slacko-LxSc }"
		echo "title 14 { SLxSc }- Pup_Slacko-LxSc-20.01 --K:5.4--64--- \n SLxSc \n  \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Slacko-LxSc-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko-LxSc-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Slacko-LxSc-${gcBootOsHd}/initrd.gz"
		echo "# #####################################{ Quirky April 7 }"
		echo "title 15 { Quirky 7 }--- Quirky-7 ---beta--------------    \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Quirky-${gcBootOsHd}/vmlinuz    psubdir=/pup_Quirky-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Quirky-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:4  }"
		echo "title 16 { B4B }--- UpupBB-K:4  -----------------------    \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB4B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB4B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB4B-${gcBootOsHd}/initrd.gz"
} #  Any Other Puppy Distro Calls can be listed without Numbers. 
export -f Sbr_Menu_Standard_Selection_Header
		#! echo "# ### Not Ready for Prime Time ###########{ pup_Devuan }"
		#! echo "title  17 { Devuan X }--- pup_Devuan-SDA   -------- \n   \n   \n"
		#! echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		#! echo "  kernel /pup_Devuan-${gcBootOsHd}/vmlinuz    psubdir=/pup_Devuan-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		#! echo "  initrd /pup_Devuan-${gcBootOsHd}/initrd.gz"
#!
#! ===_Menu.lst_=======================================================
#! ## end: Menu_Main_Echo   
#! ===_Menu.lst_=======================================================
#!
#!
#! ===_Menu.lst_=======================================================
#! ## begin: Menu_Long_List  
#! ===_Menu.lst_=======================================================
#!
#(: ====================================================
#(: fx(Sbr_MenuLongList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Long format. 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ##############################################################
function Sbr_MenuLongList() {  # ACTIVE # Standard Menu Long List 
    n=0
    #! initz was done by caller 
    #! Build Long Menu parameters 
    #!
	#! Main Menu Long with two color schemes: ARB_ORGCBYR ARB_ORGGBYR
    lcOsSubDef="0"   # "Original" Main Menu Long ALWAYS DEFAULTS to "0"  "MainMenu" "MenuLong"
    lcOsSubId="ORG"
    gcC3MOsSubId="{SDA}"
    gcMgrArCfgIdd="ORG"
    lcOsSubDir="Main"
    #~ export lcOsSubFn="/mnt/home/menu-orig.lst"  # NOT USED 
    export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
    export lcOsSubSplClr="red"
    export lcOsSubTout="120"	# very long wait , then default = ?
	#!
    # color NORMAL            HIGHLIGHT       HELPTEXT       HEADING
    #       f/b               f/b              f/b           f/b
    # color green/black   yellow/red       cyan/black    light-blue/black
    # color cyan/black    yellow/red       cyan/black    light-blue/black
    #! 
    lcOsSubSplClrStr="color cyan/black   yellow/red       cyan/black    light-blue/black"
    #! Short Menu :  "color cyan/black   yellow/red       cyan/black    light-blue/black"
    lcOsSubSplClrID="bg=green/Black fg=yellow/red"
    lcOsSubSplClrIfg="yellow"
    lcOsSubSplClrIbg="blue"	
	#!
    #! -D-----
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.  ${lcOsSubSplClrID}
.  ${EXIT} = menu.lst ${gcC3MOsSubId}
.       
. 	                                    "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
        #! =============================================================
        (
        echo "#!/bin/bash"
        echo "#=========================================="
        echo "# OS=${lcOsSubId} : Menu System LONG"
        echo "# DTS=${gcSysDts} : date generated"
        echo "# DTS=${gcSysDevDob} : date generated"
        echo "#======================================================"
        echo "# menu.lst Long Menu "
        echo "# menu-orig.lst is the standard "original" full menu.lst "
        echo "# MARK-${gcBootOsHd}  Main SDA HardDrive 500G / 2"
        echo "#======================================================"
        echo "# Long Menu is a Build by 'MGR'"
        echo "# written by rc.z_MGR.sh & rc.z_C3M.sh"
        echo "#    insert user selected OS parameters"
        echo "#    compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
        echo "#    ${gcSysDevDob} Glen Ellis"
        echo "#======================================================"
        echo "### produced by grub4dosconfig-v1.9.3"
        echo "#"
        echo "### Windows MBR is still installed in the MBR of /dev/${gcBootOsHd}"
        echo "### M$ MBR calls a faux /ntldr , which contains /grldr code"
		echo "# Default colors , bg is black  , letters yellow on red "
		echo "# color NORMAL            HIGHLIGHT       HELPTEXT       HEADING"
		echo "#       f/b               f/b              f/b           f/b"
		echo "# color green/black   yellow/red       cyan/black    light-blue/black"
		echo "# color cyan/black    yellow/red       cyan/black    light-blue/black"
		echo "# graphicsmode -1 800 600"
		echo " "
		echo "color ${lcOsSubSplClrStr}"
		echo " # splashimage=/boot/grub/xpm-c-drkred.xpm"
		echo " # splashimage=/boot/grub/xpm-c-red.xpm"
        echo "timeout ${lcOsSubTout}"
		echo "default ${lcOsSubDef}"
	echo "###################################{ Menu with Wait }"
	echo "title  0 { ${gcBootOsHd} } --- Long Menu --- { ${gcBootOsHd} } -------"
	echo "  # configfile /menu.lst"
	echo "  #find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  #kernel /pup_UpupBB-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupBB-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  #initrd /pup_UpupBB-${gcBootOsHd}/initrd.gz"
	echo "  root (hd0,0)"
	Sbr_Menu_Standard_Selection_Header # function  #  LONG Standard Selection Header 
	echo "###################################"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	title    " "\_"
	echo "	root (hd0,0)"
	echo "	# ##########################################################{ FIT }"
	echo "	title  { SDA }--------------- "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-SDA "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { KLM1 }- "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT64 }- Lenovo "
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 "
	echo "	  configfile /menu.lst " "\_"
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT16A }-  " "\_"
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A "
	echo "	  configfile /menu.lst "
	echo "	# ##########################################################{ FIT }"
	echo "	title   { FIT16B }-  " "\_"
	echo "	  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B "
	echo "	  configfile /menu.lst "
	echo "	# ##########################################################{ FIT }"
	echo "# ############################################################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "##################################### "
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "# #######################################################"
	echo "title ==={ P-M }  Any Parted-Magic }---"
	echo "	lock"
	echo "	find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
	echo "	kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
	echo "	initrd  /pmagic/initramfs"
	echo "# #######################################################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    " "\_"
	echo "root (hd0,0)"
	echo "#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
	echo "title  Six More Puppy OS below:  " "\_"
	echo "root (hd0,0)"
	echo "#______________________________________"
	echo "title   " "\_"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    n"
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "#####################"
	echo "title    "
	echo "root (hd0,0)"
	echo "title === Visible UTL ========================================="
	echo "	root (hd0,0)"
	echo "title Help - Boot Params"
	echo "  configfile /menu_phelp.lst"
	echo "title Boot Partition Sector first hard drive (hd0,0)"
	echo "  root (hd0,0)"
	echo "  # chainloader +1 || chainloader /grldr"
	echo "  chainloader +1 || chainloader /wxldr"
	echo "  # chainloader +1 || chainloader /bootmgr"
	echo "#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
	echo "title    "
	echo "root (hd0,0)"
	echo "# #######################################################"
	echo "  "
	echo "title >>> ${gcBootOsHd} >>> menu-Boot-NamedDrive.lst ==="
	echo "    find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "	configfile /menu-Boot-NamedDrive.lst"
	echo " "
	echo "title >>> ${gcBootOsHd} >>> menu-Boot-ChainLoader.lst ==="
	echo "    find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "	configfile /menu-Boot-ChainLoader.lst"
	echo " "
	echo "title >>> ${gcBootOsHd} >>> Advanced menu"
	echo "		find --set-root  --ignore-floppies --ignore-cd  /MARK-${gcBootOsHd}  "
	echo "	configfile /menu-advanced.lst"
	echo "	  commandline"
	echo "# #######################################################"
	echo " "
	echo "title    *** Grub4Dos commandline *** "
	echo "  commandline"
	echo " "
	echo "title    *** Absolute 'HALT' to computer *** "
	echo "  halt"
	echo " "
	echo "title    *** Re-BOOT command *** "
	echo "  reboot"
	echo "            "
	echo "# ########################################################"
	echo "title   { 'SDA' }---{ set-root to self SDA }-------------"
	echo "	find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
	echo "	configfile /menu.lst 	"
	echo "# ############################################################"
	echo "# *"
	echo "# ##############################################################"
	echo "title  0 find Any Menu.lst ---> {SDA} {KLM1} {FIT64} {FIT16A} {FIT16B} -------"
	echo " errorcheck off"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-SDA && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A && configfile /menu.lst"
	echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B && configfile /menu.lst"
	echo " errorcheck on"
	echo " root (hd0,0)"
	echo "# ############################################################"
	echo "# ****************************************************************************"
	echo "# In itself ...  Godly Living is a benefit without consequence. "
	echo "# I can hear God laughing at us, and saying, "
	echo "# 'I gave you one law and you made ten, then a hundred, then a thousand  '"
	echo "# 'I gave you my soul to live a good life, and you play parlor games. '"
	echo "# 'I gave you my NAME    and now   you want a !sign! that I AM  ? ' "  
	echo "# ****************************************************************************"
	echo "# ### END Long menu.lst ######################################"
	) > /mnt/home/menu.lst
    #!
	kill ${GtkPid_Mnu_Box_Splash}
    #!
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
    echo "${gcMgrArCfgIdd}" > "${gcMgrArbCfgFn}"  # config of menu
    #! -D---
/usr/lib/gtkdialog/box_splash -fg cyan -bg darkred -border true  -close never -text "\
.   Install 'Original' Menu.lst:
.         ( DONE )
. ${EXIT} = menu.lst ${gcMgrArCfgIdd} 
.     
. 					                "&
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
		kill ${GtkPid_Mnu_Box_Splash} # after return
		#
        #=============== now
        Sbr_Cbx_ReStart  "1"
        #=============== now
    #
} #
export Sbr_MenuLongList
#
#! ===_Menu.lst_=======================================================
#! ## end: Menu_Long_List   ############################################
#! ===_Menu.lst_=======================================================
#!
#!
#!
#! ===_Menu.lst_=======================================================
#! ## begin: Menu_Short_List   ##########################################
#(: note:   Loads Parameters for each of 20 Distro Menu.lst
#! ===_Menu.lst_=======================================================
#!
#(: ===========================================================
#(: fx(Sbr_MenuShortList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Short format. 
#(: receives param:
#(: returns:
#(: note:   Loads Parameters for each of 20 Distro Menu.lst
#(:
#! #################################################################
function Sbr_MenuShortList() {  # ACTIVE # Standard Menu Short List
       #! initz was done by caller 
       #! Sbr_MenuShortList sends parameters to trigger one specific OS. 
       #!
       #! declare Preset Var. 
		lcOsSubClrBase="/boot/grub"	# 'base' allows easy change of "menu.lst" background colors
		lcOsSubTout="32"    # Menu.lst long "Time-Out" for default "menu.lst" selection.
		#! Short Menu.lst is for PreSet Menu.lst.  Each Called OS must have param and Default "Position" value. 
		#! ======================================================================
		#! function EXIT:ARB_00 # short menu.lst   #  Not Called 
		if [ "$EXIT" = "ARB_00" ] ; then    # EXIT:ARB_00 # short 4 option menu of major OS.
                        lcOsSubDef="0"   # "00" default position-selection in "menu.lst"  
                        lcOsSubId="ARB"
                        gcMgrArCfgIdd="ARB_00"
                        lcOsSubDir="Main-00-Generic-SDA" 
                        lcOsSubFn="/mnt/home/menu.lst00"   # Not Used for "00" 
                        lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
                        lcOsSubSplClrBg="red"
                        lcOsSubTout="96"   # very long wait time
		fi
		#! ======================================================================
		#! function EXIT:ARB_KK # short menu.lst
		if [ "$EXIT" = "ARB_KK" ] ; then
			lcOsSubDef="1"   # default position-selection
			lcOsSubId="KK"
			gcMgrArCfgIdd="Upup-Kenitic-Kudo"
			lcOsSubDir="pup_UpupKK-SDA"
			lcOsSubFn="/mnt/home/menu.lstKK"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_B5B # short menu.lst
		if [ "$EXIT" = "ARB_B5B" ] ; then
			lcOsSubDef="2"   # default position-selection
			lcOsSubId="B5B"
			gcMgrArCfgIdd="Upup-Bionic-Beaver-K5"
			lcOsSubDir="pup_UpupB5B-SDA"
			lcOsSubFn="/mnt/home/menu.lstB5B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="brown"   # "brown" is 8B6914 is "darkred"
			lcOsSubSplClrBg="yellow" 
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_JJ # short menu.lst
		if [ "$EXIT" = "ARB_JJ" ] ; then
			lcOsSubDef="3"  # default position-selection
			lcOsSubId="JJ" 
			gcMgrArCfgIdd="Upup-Jazzy-Jellyfish-K5" # subdir ID
			lcOsSubDir="pup_UpupJJ-SDA"  # /subdir-label
			lcOsSubFn="/mnt/home/menu.lstJJ"    
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-pur.xpm"  # image-background
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="purple"   # image name
			lcOsSubTout="12"    # menu timeout
		fi
		#! ======================================================================
		#! function EXIT:ARB_S1564 # short menu.lst
		if [ "$EXIT" = "ARB_S1564" ] ; then
			lcOsSubDef="4"
			lcOsSubId="S15pupS64"
			gcMgrArCfgIdd="Slacko-S15-S64-K5"
			lcOsSubDir="pup_S15pup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstS1564-"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
 		#! ======================================================================
		#! function EXIT:ARB_MM # short menu.lst
		if [ "$EXIT" = "ARB_UMM" ] ; then
			lcOsSubDef="5"   # default position-selection
			lcOsSubId="MM"
			gcMgrArCfgIdd="Mantic-Minotaur"
			lcOsSubDir="pup_UpupMM-SDA"
			lcOsSubFn="/mnt/home/menu.lstManticMinotaur"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="blue"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_T6 # short menu.lst
		if [ "$EXIT" = "ARB_T6" ] ; then
			lcOsSubDef="6"
            lcOsSubId="T6"
			gcMgrArCfgIdd="Tahr"
			lcOsSubDir="pup_UpupT6-SDA"
			lcOsSubFn="/mnt/home/menu.lstT6"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_X64 # short menu.lst
		if [ "$EXIT" = "ARB_X64" ] ; then
			lcOsSubDef="7"   # default position-selection
			lcOsSubId="X64"
			gcMgrArCfgIdd="Upup-Xenial64"
			lcOsSubDir="pup_UpupX64-SDA"
			lcOsSubFn="/mnt/home/menu.lstX64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function EXIT:ARB_DBW # short menu.lst
		if [ "$EXIT" = "ARB_DBW" ] ; then
			lcOsSubDef="8"   # default position-selection
			lcOsSubId="BW"
			gcMgrArCfgIdd="BookWormDeb"
			lcOsSubDir="pup_DpupBW-SDA"
			lcOsSubFn="/mnt/home/menu.lstDpupBW"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="orange"
			lcOsSubSplClrBg="blue"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! ======================================================================
		#! ======================================================================

		#! ======================================================================
		#! ======================================================================
		#! function EXIT:ARB_S7 # short menu.lst
		if [ "$EXIT" = "ARB_S7" ] ; then
			lcOsSubDef=" 9"   # default position-selection
			lcOsSubId="S7"
			gcMgrArCfgIdd="S-7"
			lcOsSubDir="pup_SpupS7-SDA"
			lcOsSubFn="/mnt/home/menu.lstS7"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_UIMP # short menu.lst
		if [ "$EXIT" = "ARB_UIMP" ] ; then
			lcOsSubDef="10"   # default position-selection
			lcOsSubId="UIMP"
			gcMgrArCfgIdd="UIMP"
			lcOsSubDir="pup_UpupII-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! function EXIT:ARB_S64 # short menu.lst
		if [ "$EXIT" = "ARB_S64" ] ; then
			lcOsSubDef="11"   # default position-selection
			lcOsSubId="S64"
			gcMgrArCfgIdd="S64"
			lcOsSubDir="pup_Spup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstSlacko64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_FF # short menu.lst
		if [ "$EXIT" = "ARB_FF" ] ; then
			lcOsSubDef="12"   # default position-selection
			lcOsSubId="FF"
			gcMgrArCfgIdd="F-F"
			lcOsSubDir="pup_UpupFF-SDA"
			lcOsSubFn="/mnt/home/menu.lstFF"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_X708 # short menu.lst
		if [ "$EXIT" = "ARB_X708" ] ; then
			lcOsSubDef="13"
            lcOsSubId="X708"
			gcMgrArCfgIdd="X708"
			lcOsSubDir="pup_UpupX708-SDA"
			lcOsSubFn="/mnt/home/menu.lstX708"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_SLXSC # short menu.lst K=4
		if [ "$EXIT" = "ARB_SLXSC" ] ; then
			lcOsSubDef="14"
			lcOsSubId="SLXSC"
			gcMgrArCfgIdd="SLXSC"
			lcOsSubDir="pup_Slacko-LxSc-SDA"
			lcOsSubFn="/mnt/home/menu.lstSLXSC"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_Q7 # short menu.lst
		if [ "$EXIT" = "ARB_Q7" ] ; then
			lcOsSubDef="15" 
			lcOsSubId="Quirky7"
			gcMgrArCfgIdd="Quicky7"
			lcOsSubDir="pup_Quirky-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function EXIT:ARB_B4B # short menu.lst
		if [ "$EXIT" = "ARB_B4B" ] ; then
			lcOsSubDef="16"   # default position-selection
			lcOsSubId="B4B"
			gcMgrArCfgIdd="Upup-Bionic-Beaver"
			lcOsSubDir="pup_UpupBB-SDA"
			lcOsSubFn="/mnt/home/menu.lstB4B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="brown" # "brown" is 8B6914 is "darkred"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function [EXIT:ARB_DV] # short menu.lst  # Not Ready for Prime Time 
		#! if [ "$EXIT" = "ARB_DV" ] ; then
		#! 	lcOsSubDef="17" 
		#! 	lcOsSubId="Devuan"
		#! 	gcMgrArCfgIdd="Devuan"
		#! 	lcOsSubDir="ppup_Devuan-SDA"
		#! 	lcOsSubFn="/mnt/home/menu.lstDevual"
		#! 	lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
		#! 	lcOsSubSplClrFg="red"
		#! 	lcOsSubSplClrBg="orange"
		#! 	lcOsSubTout="120"
		#! fi

#! ===_Menu.lst_=======================================================
#! ## end: Menu_Short_List   ##########################################
#(: note:   Loaded Parameters for each of 20 Distro Menu.lst
#! ===_Menu.lst_=======================================================

		#! =======================================================
		#! function [EXIT:ARB_ShortMenu() { ; n=0 ; } # based on "C3M"
		#! config via Sys_Pup_State:  gcMgrArbCfgFn="/root/my-applications/bin/C3M_Config_Arb"
		echo "${lcOsSubId}" > "${gcMgrArbCfgFn}" # gcMgrArCfgIdd
    #! -D---
	/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrFg} -bg ${lcOsSubSplClrBg} -border true -close never -text "\
	.
	.  Install  Menu.lst     
	.  ${gcMgrArCfgIdd}     
	.           
	.					                     "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
        # Fall Thru 
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
		#=== begin menu short code =====================================
		#(: =====================================================
		#(: === SHORT MENU === shortmenu === menu short === MenuShort === function ===
		#(:  SHORT MENU is a Build by 'MGR'"
		#(:  'ID = '${gcMgrArCfgIdd}'"
		#(:  "# used by rc.z_MGR.sh "
		#(:  insert user selected OS parameters"
		#(:  allow default forground/background colors"
        #(: ## Short: note peculiar end-of-line comments 
        #(: ## Short: extra quotes may cause fault  
		#( ======================================================"
    #! color NORMAL            HIGHLIGHT       HELPTEXT       HEADING
    #!       f/b               f/b              f/b           f/b
    #! color green/black   yellow/red       cyan/black    light-blue/black
    #! color cyan/black    yellow/red       cyan/black    light-blue/black
    lcOsSubSplClrStr="color green/black  yellow/red       cyan/black    light-blue/black"
    #! Short Menu :   "color cyan/black   yellow/red       cyan/black    light-blue/black"
        #! lcOsSubSplClrID="bg=green/Black fg=yellow/red"
        #! lcOsSubSplClrIfg="black"
        #! lcOsSubSplClrIbg="yellow"	
        #!
 		#! =======================================================
 		(
		echo "#!/bin/bash"
		echo "#=========================================="
		echo "# OS=${lcOsSubId} : Menu System SHORT "
		echo "# DTS=${gcSysDts} : date generated"
		echo "# DTS=${gcSysDevDob} : date generated"
		echo "#=========================================="
		echo "#  compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
		echo "#  ShortMenu"	
        echo "#  ${gcSysDevDob}"
		echo "#=========================================="
		echo "# Default colors , bg is black  , letters yellow on red "
		echo "# color NORMAL            HIGHLIGHT     HELPTEXT      HEADING"
		echo "#       f/b               f/b           f/b           f/b"
		echo "# color green/black     yellow/red     cyan/black    light-blue/black"
		echo "# color cyan/black      yellow/red     cyan/black    light-blue/black"
		echo "# color light-gray/black yellow/red cyan/black light-blue/black"
		echo "color cyan/black yellow/red cyan/black light-blue/black"
		echo "graphicsmode  -1 800 600"
		echo "timeout ${lcOsSubTout}"
		echo "default ${lcOsSubDef}"
		echo "###################################{ Menu with Wait }"
		echo "title  0 { '${gcBootOsHd}' '00' Short Menu }-----${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
		echo "  root (hd0,0)"
		Sbr_Menu_Standard_Selection_Header # function  # SHORT Standard Selection Header 
		echo "###################################{ FIT }"
		echo "title   { SDA }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-SDA1"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { KLM1 Metal }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM1"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT64}- " " \_"
		echo "find --set-root --ignore-floppies --ignore-cd /MARK-FIT64"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT16A }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title   { FIT16B }- " " \_"
		echo "  find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B"
		echo "  configfile /menu.lst"
		echo "###################################{ FIT }"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "# #######################################################"
		echo "title    " " \_"
		echo "root (hd0,0)"
		echo "#######################################################"
		echo "title === G4D => Boot KNOPPIX  #3 partition (hd3,0) ---> ? "
		echo "  root (hd3,0)"
		echo "  chainloader +1 || chainloader /grldr "
		echo "# #######################################################"
		echo "title     " " \_"
		echo "root (hd0,0)"
		echo "# #######################################################"
		echo "title ==={ P-M }  Any Parted-Magic }---"
		echo "	lock"
		echo "	find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
		echo "	kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
		echo "	initrd  /pmagic/initramfs"
		echo "# #######################################################"
		echo "title >>> SDA >>> menu-Boot-NamedDrive.lst ==="
		echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
		echo "	configfile /menu-Boot-NamedDrive.lst"
		echo " "
		echo "title >>> SDA >>> menu-Boot-ChainLoader.lst ==="
		echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
		echo "	configfile /menu-Boot-ChainLoader.lst"
		echo " "
		echo "title >>> SDA >>> Advanced menu ==="
		echo "	  find --set-root  --ignore-floppies --ignore-cd  /MARK-SDA  "
		echo "	  configfile /menu-advanced.lst"
		echo "	  commandline"
		echo "# #######################################################"
		echo " "
		echo "title    *** Help *** " "\_"
		echo "  help"
		echo " "
		echo "title    *** Grub4Dos commandline *** " "\_"
		echo "  commandline"
		echo " "
		echo "title    *** Halt computer ***  \_ ( for experts only )"
		echo "  halt"
		echo " "
		echo "title    *** Re-BOOT command *** "  "\_"
		echo "  reboot"
		echo "# ##############################################################{ Menu with Wait }"
		echo "title  0 find ANY menu.lst ---> {SDA} {KLM1} {KLM2} {FIT64} {FIT16A} {FIT16B} -------"
		echo " errorcheck off"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-SDA && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-KLM1 && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT64 && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16A && configfile /menu.lst"
		echo "      find --set-root --ignore-floppies --ignore-cd /MARK-FIT16B && configfile /menu.lst"
		echo " errorcheck on"
		echo " root (hd0,0)"
        echo "# ****************************************************************************"
        #~ echo "# In itself ...  Godly Living is a benefit without consequence. "
        #~ echo "# I can hear God laughing at us, and saying, "
        #~ echo "# 'I gave you one law and you made ten, then a hundered, then a thousand  "
        #~ echo "# I gave you my soul to live a good life, and you play parlor games. "
        #~ echo "# I gave you my NAME    and now   you want a 'sign' that I AM  ? ' "  
        #~ echo "# ****************************************************************************"
        echo "# #######################################################"
		) > /mnt/home/menu.lst   #   "title  0{ 'C3M' '00'  Short Menu }---SDA"
        #!
		sleep 3
		kill ${GtkPid_Mnu_Box_Splash}
		chmod +x "/mnt/home/menu.lst"
		#!
		export gcE3Rcontrol=${EXIT}	# maintain this value
		#!
        #         
        # working E3R+P+CTB+U+Quit
        # working E3R+CTB+Boot
        #!
        n=0
        Sbr_Cbx_ReStart "1" 
        #!
} #
export -f Sbr_MenuShortList
#!
#! === menu.lst =================================================
#! ## end: Menu_Short_List   ####################################
#! ## end: Menu_Short_List   ####################################
#! ## end: Menu_Short_List   ####################################
#! === menu.lst =================================================
#!
#!
#!
#! #######################################################
#! BEGIN:     Embedded_Graphic_Images   "EmGr"
#! reference: rc.z_CDW_Embedded_Graphic_Images.sh
#! #######################################################
#!
#(: ====================================================
#(: fx(Sbr_CDW_Embedded_Dialog_Colors)	#: Active Marker
#(: called by: 4764
#(: purpose: 
#(: receives param:
#(: returns:
#(: note:
#(:
#! #########################################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # ACTIVE # setup color constants during main ( )
    n=0
    lcDialogColorOrig="  -fg yellow -bg darkred  "	# original
    lcDialogFgDrkRed=" -fg darkred "
    lcDialogFgYel=" -fg yellow "
    lcDialogFgBlk=" -fg black "
    lcDialogBgDrkRed=" -fg darkred "
    lcDialogBgBlu=" -bg blue "
    lcDialogBgGrn=" -bg green "
    lcDialogBgYel=" -bg yellow "
    lcDialogBgBlk=" -fg black "
} #
export -f Sbr_CDW_Embedded_Dialog_Colors
#!
#!
#(: ============================================================
#(: fx(Sbr_CDW_EGI_Long)	#: Active
#(: called by: Check-If
#(: purpose: (MGR) CDW EGI Long FORM
#(: receives param:
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_CDW_EGI_Long() { # ACTIVE #  CDW EGI Long Images 
#!
#! # Title "gcEmGaImgFnTrgTxtMaster" declared/assigned in Header. 
lcEmGrImg="=== ${gcEmGaImgFnTrgTxtMaster} ==="   # Title for each Gui section.
touch ${gcEmGaImgFnTrgTxtMaster}   
echo "### EmGrImg Master File ### $lcEmGrImg" > ${gcEmGaImgFnTrgTxtMaster}
#!
#! ##########################################################################
n=0
#!
#! ##########################################################################
				#! ###########################################################
				#! begin:   HASH   
				#! ###########################################################
				#!
				#! 1 "EmGr"### HASH GRN ########################################################
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				lcEmGrImgSrc="/tmp/EmGr-img-hash-grn.xpm" ### fake green-PURPLE # major upper-left Image
                echo "hash-grn.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '
				/* XPM */
				static char *hash_xpm[] = {
				"32 32 5 1",
				" 	c none",
				"1	c #00FF00",
				"2	c #FFFFFF",
				"3	c #2222FF",
				"4	c #907072",
				"                                ",
				"                                ",
				"       111        111           ",
				"       12133      12133         ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       12133      121334        ",
				"       12133      121334        ",
				" 11111112111111111121111111     ",
				" 1222222222222222222222222133   ",
				" 11111112111111111121111111334  ",
				"   333312133333333121333333334  ",
				"   333312133333333121333333334  ",
				"    44412133444444121334444444  ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       121334     121334        ",
				"       111334     111334        ",
				"        33334      33334        ",
				"        33334      33334        ",
				"                                "
				};
				' > ${lcEmGrImgSrc}   # /tmp to be inserted into <button>
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
				#!
				#!
				#! ############################################################
				#! begin:    APPLE
				#! ############################################################
				#!
				#! 2 "EmGr"############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#BB2222; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 2 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#1111FF; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 3 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 4 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "apple-redgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:none; fill:#33DD33; stroke:#BE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! #############################################################
				#!
				#!
				#! #############################################################
				#! begin:    QUIT
				#! #############################################################
				#!
				#! 5 "EmGr"#############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-rednnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-rednnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#FF1111;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 6 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-grnnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-grnnnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#33FF33;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 7 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-yelnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "quit-yelnnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:none;stroke:#FFFF00;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 50,10 0,35"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! ###########################################################
				#! begin:   JUG
				#! ###########################################################
				#!
				#! 8 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-bluxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-bluxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				 <g style="fill:yellow;stroke:blue;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
				 <path d="m 35,35,35,35"/>
				 <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				 </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
                #! 80 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-blu0yel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-blu0yel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:yellow;stroke:blue;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="M 16,20 C -3,48 16,90 51,90 79,90 89,67 90,52 91,37 85,26 83,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 9 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxorange.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-grnxorange.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:orange;stroke:green;stroke-width:21px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 31,31,31,31"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 10 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 11 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-red0yel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-red0yel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:14px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 50,5 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 55,5"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen

				#!
				#! 12 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:green; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 13 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-grnxred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:red; stroke:green; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 14 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 15 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "jug-redxblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g
				style="fill:blue; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					<path d="m 0"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! ############################################################
				#! begin: CHECK  
				#! ############################################################
				#!
				#! 16 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57   47,23 55,18 42,16 13,01      57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 16 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 17 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 17 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:yellow;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 18 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 18 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:yellow;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!


				#! 19 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 19 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:blu;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 20 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 20 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!


				#! 21 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 21 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!

				#! 22 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 23 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#00FF00;fill-opacity:1.3;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 24 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:#888800;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 25 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#0000FF;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! #################################################################
				#! begin: Check-Mark  colorcolor is larger
				#! #################################################################
				#!
				#! 26 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#FF1111;fill-opacity:0.8;stroke:#FF0000;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 27 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grngrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grngrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#01FF01;fill-opacity:0.8;stroke:#00FF00;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 28 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:yellow;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 29 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-blublu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-blublu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#0101FF;fill-opacity:0.8;stroke:#0101FF;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				echo "### end ###" >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
} # end:
export -f Sbr_CDW_EGI_Long			
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#! end: Sbr_CDW_EGI_Long     Sbr_CDW_Embedded_Graphic_Images
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#!
#!
#!#############################################################################
#(: ============================================================
#(: fx(Sbr_CDW_EGI_CheckIF)	#: Active
#(: called by: main ( ) , Check-If
#(:  purpose: CheckIF:  if Master-IMG.txt Images are in /tmp  , then do not write again, else write files.
#(: receives param:
#(: returns:
#(: note:
#(:  lcMasterTrgImgTxtExt="IMG.txt"
#(: master IMG.txt file, for "dump" 
#(: gcMgrMasterSubDir basename is declared/assigned in top of code, line 41 .
#(: export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGr name rises to top of EmGr list
#(: 
#(: using Master_IMG.txt file as the flag  
#(: export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGa name rises to top of EmGr list
#(: export gcMgrMasterSubDir="/root/myapplications/bin-"
#(:
#(: E3R copies /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CDW/rc.z_CDW_Embedded_Graphic_images.sh
#(: to /applications/bin/My_Dev_/Edit_CDW/rc.z_CDW-EGI.sh
#(: /root/my-applicaions/bin/rc.z_CDW_EGI.sh 
#(: 
#(: todo: 240115 process will ALWAYS call for LONG Image format. 
#(: therefore: cull all references to SHORT Image format files.
#(:
#! ##############################################################################
function Sbr_CDW_EGI_CheckIF() {   # ACTIVE # main () # Install Long Image format.
	n=0
    #!
    #! Sbr_Splash_It " "---  Sbr_CDW_EGI_Long ---" " "orange" "purple" "1"    # -D--- Sbr_CDW_EGI_Long
    #!
	if [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# IF not ImgMaster , then build EGI files in /tmp
				n=0   
 				Sbr_CDW_EGI_Long   # CheckIF   will write IMAGE Long files DIRECTLY, now. 
    else
                n=0
 	fi # end: [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build ALL Image files in /tmp
	#!
} # end:
export -f Sbr_CDW_EGI_CheckIF
#!
#!
#!
#! #######################################################
#! END:     Embedded_Graphic_Images   "EmGr"
#! reference: rc.z_CDW_Embedded_Graphic_Images.sh
#! #######################################################
#!
#!
#!
#! #######################################################
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! #######################################################
#!
#!
#! ##########################################################
#~ function Sbr_CDW_Msg_Windows_code() { # NOT ACTIVE   # MARKER
	#~ n="marker"
#~ } #
#~ export -f Sbr_CDW_Msg_Windows_code
#!
#! ############################################################
#! BACK-UP Copy of Working Messaage Window
#! window DC_NoShow /tmp/EmGr-img-jug-red0yel.svg  # ACTIVE
#! msg_DC_Quick_window='
#! <window  	
#!     window-position="1"
#!     visible="1">
#! 	<frame>
#! 		<hbox>
#! 			<button> <label>""  </label>
#! 				<input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>46></height> <width>46</width>
#! 				<action function="closewindow">msg_DC_Quick_window</action>
#! 			</button>
#! 		</hbox>
#! 	</frame>
#! 	<variable>msg_DC_Quick_window</variable>
#! </window>'
#! export msg_DC_Quick_window # Small, preferred button msg window 
#!
#! ############################################################
#! window DC_NoShow /tmp/EmGr-img-jug-red0yel.svg  # ACTIVE
msg_DC_Quick_window='
<window  	
    title="msg_DC_Quick_window"
    window-position="1"
    visible="1">
	<frame>
		<hbox>
			<button> <label>""  </label>
				<input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>46></height> <width>46</width>
				<action function="closewindow">msg_DC_Quick_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_Quick_window</variable>
</window>'
export msg_DC_Quick_window # Small, preferred button msg window 
#!
#!
#! ############################################################
#! window DC_0 # hash green for CBX
msg_DC_0_window='
<window title="msg_DC_0_window"
    title="msg_DC_0_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>" "</label>
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_0_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_0_window</variable>
</window>'
export msg_DC_0_window
#!
#!
#! ############################################################
#! window DC_ReStart_0 
msg_DC_ReStart_0_window='
<window title="msg_DC_ReStart_0_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>"Clear the ReStart Set-Up NOW  !  "</label>
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReStart_0_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_ReStart_0_window</variable>
</window>'
export msg_DC_ReStart_0_window
#!
#! ############################################################
#! window DC_PrgQuit 
msg_DC_PrgQuit_window='
<window title="msg_DC_PrgQuit_window"
    window-position="${GTK_WIN_POS_CENTER}"
visible="true" >
	<frame>
		<hbox>
			<button> <label>"Clear the Program Quit Set-Up NOW  !  "</label>
				<input file>"/tmp/EmGr-img-quit-rednnn.svg"</input><height>36></height> <width>36</width>
				<action function="closewindow">msg_DC_PrgQuit_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_PrgQuit_window</variable>
</window>'
export msg_DC_PrgQuit_window
#!
#!
#!
#! ############################################################
#! window DC_ReMenu /tmp/EmGr-img-EmGr-hash-grn.xpm   S2F , E3R+CTB+ReStart
export gcMsgWindowReMenu1="The ReMenu function is active now ! "
export gcMsgWindowReMenu2="Will Build a Generic Menu.lst ! "
export gcMsgWindowReMenu3="Click the ReMenu Button again ! "
#!
msg_DC_ReMenu_window='
<window title="msg_Chk_ReMenu_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${gcMsgWindowReMenu1}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowReMenu2}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcMsgWindowReMenu3}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the ReMenu window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_ReMenu_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_ReMenu_window</variable>
</window>'
export msg_DC_ReMenu_window
#! ############################################################
#!
#! ############################################################
export gcMsgWindowCBX="--- Combo-Box-Set -------------------- 
CBXC3C * Clear Caches ! 
   will clear some browser aux storage 
   which browsers rebuild on each run. 
   Vars float. 
CBXS2F * Snap-Merge-Puppy !  
   will run several loops to clear 
   internal non-fatal error flags.
   Vars float.    
CBXCTU * Cold-Tar.Gz.-Backup*  
   writes BackUp file to OS local ! 
   runs CTU Utility version 
   will NOT run SMP 
   CTU has NO GUI 
   Vars float.  
#---------------"
#! ############################################################
msg_DC_CBX_window='
<window title="msg_DC_CBX_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${gcMsgWindowCBX}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the CBX window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_CBX_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_CBX_window</variable>
</window>'
export msg_DC_CBX_window
#! ############################################################
#!
#! ### covers Remenu button ###################################
export gcMsgWindowREM="> Build Generic Menu.lst 
 > Manual _1-of-20_PuppyOS__menu.lst_ Options.   "
#! ### Not Used ###############################################
msg_DC_REMENU_window='
<window title="msg_DC_REMENU_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'brown'"'> <b>'${gcMsgWindowREM}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Remenu window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_REMENU_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_REMENU_window</variable>
</window>'
export msg_DC_REMENU_window
#! ############################################################
#!
#!
#! ############################################################
export gcMsgWindowBakAll0="
'===-BakAll-Double-Click-Buttons-==='
SubRoutine #1 and #2 
Will run 'BakOne'  or  'BakAll' 
to do a quick Copy/BackUp of Editing Scripts
   from---> Editing subdir 
   '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/'
(1)  into ---> System "Production" subdir
   '/root/my_applications/'
(2)  into ---> User "Hard-Drive" storage subdir
   '/mnt/home/Bak-All-Arc-Dts_'
Then --->
EXIT via /'ReStart'/ or  /'ReBoot'/ 
...
SubRoutine  #3 and#4
Will do a 'BakAll' Copy/BackUp of all Editing Scripts
to all 'mounted hard media' 
... + UpMnt 
... + CTA 'ColdTarBackup' 'Automatic'  
... + DnMnt 
... + ReBoot or PowerOff
"
#! end:   gcMsgWindowBakAll0   msg_DC_BakAll_window
#!
#! ############################################################
msg_DC_BakAll_window='
<window title="msg_DC_BakAll_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'brown'"'> <b>'${gcMsgWindowBakAll0}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the BakAll window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_BakAll_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_BakAll_window</variable>
</window>'
export msg_DC_BakAll_window
#! ############################################################
#!
#!
#! ############################################################
export gcMsgWindowVert="
===-Multi-Button Vertical Module-===
#: note: 
#: fx (Sbr_gui_MB_xml) Multi-Button Vertical Module
#: called by : button Vert  
#: purpose :  Build/Present  Multi-Button  array 
#: - - -    of functional calls to sub-routines
#: - - -    which are system programs. 
#: - - -    presented in a vertical format.
#: returns : 
#:  Selected Button generates a Token FileName
#:  Token FileName is sent as a string echo into config-file
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
#:  After 'close' 'return'  Then  BASH will :
#:  - - - load/cat/read the file.cfg 
#:  - - - then BASH will 
#: - - -  - - - run the local function  'Token' 
#:  - - - - - - which will execute the 'Token' .
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  READ the CODE in the Vertical MB page section .
#:  Sbr_gui_MB_xml  eval  will not initiate action
#:  Sbr_gui_MB_xml writes action results into a file.cfg
#:  BASH code  will import/cat/read the file.cfg
#:  BASH code  will call the -action- subroutine.
#:  READ the CODE in the Vertical MB page source.
#:  READ the CODE  to see the specific method.
#:  This method avoids conflict between BASH and GTK .
#: _____________________________________________________"
#! end:   gcMsgWindowVert   msg_DC_VERT_window
#! ############################################################
msg_DC_VERT_window='
<window title="msg_DC_Vert_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'brown'"'> <b>'${gcMsgWindowVert}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the Vert window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_VERT_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_VERT_window</variable>
</window>'
export msg_DC_VERT_window
#! ############################################################
#!
#!
#! ############################################################
export gcMsgWindowVertTT="#: MB_Method: 
#: note:  Multi-Button module
#: fx (Sbr_gui_MB_xml) 
#: called by : Main-GUI-Dialog via EXIT:guiMB 
#: purpose :  Build/Present  Multi-Button  array 
#: - - -    of functional calls to sub-routines
#: - - -    which are system programs.
#: returns : 
#:  Selected Button generates a Token FileName
#:  Token FileName is sent as a string echo into config-file
#:  example for ROX system file manager program:
#:  <action>echo 'Sbr_MB_rox' > /0-MGR_MB_RetVal.cfg </action>  
#: BASH will :
#:  - - - load/cat/read the file.cfg 
#:  - - - then run the local function  Sbr_MB_rox() 
#:  - - - which will execute the ROX system file manager.
#: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#:  READ the CODE in the Vertical MB page section .
#:  Sbr_gui_MB_xml  eval  will not initiate action
#:  Sbr_gui_MB_xml writes action results into a file.cfg
#:  BASH code  will import/cat/read the file.cfg
#:  BASH code  will call the <action> subroutine.
#:  READ the CODE in the Vertical MB page source.
#:  READ the CODE  to see the specific method.
#:  This method avoids conflict between BASH and GTK .
#: _____________________________________________________"
#!
#! ############################################################
msg_DC_VERT_TT_window='
<window title="msg_DC_Vert_TT_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label>'${gcMsgWindowVertTT}'</label></text>
<hbox>
    <button>
        <label>"Clear the Vert window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_VERT_TT_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_VERT_TT_window</variable>
</window>'
export msg_DC_VERT_TT_window
#! ############################################################
#!
#!
#! ############################################################
export gcmsgDcLxgoWindow="
'===-Lxgo-==='
"
#! ############################################################
msg_DC_Lxgo_window='
<window title="msg_DC_Lxgo_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${gcmsgDcLxgoWindow}'</b> </span> " </label></text>
<hbox>
    <button tooltip-text="Simple_guiSimReStart">
        <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
        <label>'_ReStart__'</label>
        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiSimReStart'</action>	</button>
    <button>
        <label>"Clear the Lxgo window "</label>
        <input file>"Lxgo_.jpg"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_Lxgo_window</action>    </button>
</hbox></frame>
<variable>msg_DC_Lxgo_window</variable>
</window>'
export msg_DC_Lxgo_window
#! ############################################################
#!
#!
#! ############################################################
export gcmsgDcDxstroWindow="'DC_Dxstro_window'"
    #! ### /root/my-applications/Dxstro_.jpg ###
    #! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###
msg_DC_Dxstro_window='
<window title="msg_DC_Dxstro_window---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${gcmsgDcDxstroWindow}'</b> </span> " </label></text>
<vbox>
       <button  tooltip-text="'xEXIT:Dxstro_window':only-launch, only PageDOX"   has-focus="false">
                <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>150</width><height>150</height>
                <label>"''"</label>	<action>'xEXIT:Dxstro_window'</action>	  </button>
    <button visible="0" tooltip-text="Simple_guiSimReStart">
        <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
        <label>'_ReStart__'</label>
        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiSimReStart'</action>	</button>
    <button>
        <label>""</label>
        <input file>"/root/my-applications/Dxstro_.jpg"</input><height>948></height> <width>400</width>
        <action>'xEXIT:guiSimReStart'</action>	</button>

    <button>
        <label>"Clear the Dxstro_window"</label>
        <action function="closewindow">msg_DC_Dxstro_window</action>    </button>
</vbox>
</frame>
<variable>msg_DC_Dxstro_window</variable>
</window>'
export msg_DC_Dxstro_window
#! ############################################################
#!
#!
                    #~ #! ############################################################ test ? used ?
                    #~ export gcmsgDcDxstroWindow="'=-DC_Dxstro_window-='"
                        #~ #! ### /root/my-applications/Dxstro_.jpg ###
                        #~ #! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###
                    #~ msg_DC_Dox_window_text="===DOX_WINDOW==="
                    #~ msg_DC_Dox_window='
                    #~ <window title="msg_DC_Dox_window---"
                    #~ visible="true" >
                    #~ <frame>
                    #~ <text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_Dox_window_text}'</b> </span> " </label></text>
                    #~ <vbox>
                                                #~ <vseparator height-request="3"> </vseparator>

                                                #~ <button>
                                                            #~ <label>"Clear the Set-Up"</label>
                                                            #~ <action function="closewindow">msg_DC_Dox_window</action>    </button>
                                                   #~ <action function="closewindow">msg_DC_Dox_window</action>    </button>
                    #~ </vbox>
                    #~ </frame>
                    #~ <variable>msg_DC_Dox_window</variable>
                    #~ </window>'
                    #~ export msg_DC_Dox_window
                    #~ #! ############################################################
#!
#!
#! [-1-]  Floating Msg Window ###
    #! msg_DC_LxgenMain_window
    #        <vbox visible="'${gcP1_ctl}'"> 
    #! ### /root/my-applications/Dxstro_.jpg ###
    #! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###
msg_DC_LxgenMain_window_text="===Main_WINDOW==="
msg_DC_LxgenMain_window='
<window title="msg_DC_LxgenMain_window---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenMain_window_text}'</b> </span> " </label></text>
<vbox>

            <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page-1-page-MAIN---${gcP1_ctl}'" >
                <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label> "'---MAIN---'" </label> <action>'lxEXIT:guiC1_X_ctl'</action> </button>

            <button visible="1"   tooltip-text="width-50-space>'=============================='" <height-request="1">
                    <label>"'!_________!________!_________!_________!_____!____'"</label>
                    <action>'lxPAGE1:spacer'</action> </button>

            <vseparator height-request="3"></vseparator>

            <vseparator height-request="3"></vseparator>
            <button   visible="1" 
                tooltip-text="'EXIT:guiCTX'__< 'CTX'  Tar.Gz from Local to SDA1 Drive, has GUI >" 
                has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'lxAction:guiCTX'</action> </button>

            <button visible="1"  tooltip-text="''" 
                has-focus="true" height-request="65" >
                <input file> "'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>33</width><height>33</height>
                <label> " '*_COLD_TAR_BACKUP_*' " </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiCTX'</action> </button>

            <vseparator height-request="3"></vseparator>
            <vseparator height-request="3"></vseparator>
            <button   visible="1" tooltip-text="'EXIT:guiArcMgrDts' : Duplicate only this $0 SRC 
                to LOCAL  Edit SubDir  with current DTS "has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'ttAction:guiMgrOneArcDts'</action> </button>

            <button  visible="1"  tooltip-text="EXIT:guiMgrOneArcDts_" > 
                <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
                <label> " {{=== 'ONE-ARC+dts'==='Edit'===}}  " </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMgrOneArcDts'</action> 		</button>

                <vseparator height-request="23"></vseparator>

            <vseparator height-request="3"></vseparator>
            <button   visible="1" tooltip-text="''" has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'ttAction:CBX-Tool-Tip'</action> </button>

            <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "  '===-CBX-Tool-Tip==='  " </label>	
                <action function="'launch'">msg_DC_CBX_window</action><action function="'closewindow'">msg_DC_CBX_window</action>
                <action>'ttAction:CBX-Tool-Tip'</action> 
            </button>

            <hbox homogeneous="true">
                <checkbox 
                        active="'$CBXC3C'">
                        <label>'C3C'</label>
                        <variable>CBXC3C</variable>
                </checkbox>
                <checkbox  
                        active="'$CBXS2F'">
                        <label>'S2F'</label>
                        <variable>CBXS2F</variable>
                </checkbox>
                <checkbox 
                    active="'$CBXCTU'">
                    <label>'CTU'   </label>
                    <variable>CBXCTU</variable>
                </checkbox>
            </hbox>

            <hbox>
                <button tooltip-text="EXIT:CBXARS:ReStart" >
                   <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> '_CBx+ReStart'  </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:CBXARS'</action>            </button>
                <button tooltip-text="EXIT:CBXARB:ReBoot" >
                   <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> '_CBx+ReBoot'  </label>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:CBXARB'</action>            </button>
                <button tooltip-text="EXIT:CBXARQ:ReQuit" >
                    <label> '_CBx+ReQuit'  </label>
                    <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"25"</width><height>"25"</height>
                    <action function="'xlaunch'">msg_DC_Quick_window</action><action function="'xclosewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:CBXARQ'</action>            </button>
            </hbox>

                <text visible="1" editable="false" use-markup="true" xalign=".5">
                    <label> "<span color='"'$lcGuiColorblu'"'> <b>'CBXstate:${lcCBXstatus}'</b> </span> " </label> </text>

                <button   visible="1" has-focus="false" height-request="12"> <label> "" </label> 
                    <input file icon="gtk-select-color" ></input>   <action>lxAction:P123-bot</action> </button>
 
            <vseparator height-request="3"> </vseparator>

            <button>
                <label>"Clear Main Window"</label>
                <action function="closewindow">msg_DC_LxgenMain_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenMain_window</variable>
</window>'
export msg_DC_LxgenMain_window
#! ############################################################
#!

#! [-2-]  Floating Msg Window ###########################################
    # msg_DC_LxgenDox_window
    #! ### /root/my-applications/Dxstro_.jpg ###
    #! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###
msg_DC_LxgenDox_window_text="===Dox_WINDOW==="
msg_DC_LxgenDox_window='
<window title="msg_DC_LxgenDox_window---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenDox_window_text}'</b> </span> " </label></text>
<vbox>

            <button visible="1"   tooltip-text="width-50-space>'==================================================='" <height-request="1">
                <label>"'!_________!________!_________!_________!_____!____'"</label>
                <action>'lxPAGE2:spacer'</action> </button>

            <button   visible="1" has-focus="false" height-request="12"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'lxAction:Dump-top'</action> </button>

            <hbox homogeneous="true">
                <button visible="1" tooltip-text="'EXIT:guiDumpHLP'  <HELP dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label>"'HELP'  " </label>
                    <action>'EXIT:guiDumpHLP'</action> </button>
                <button visible="1"  tooltip-text="'EXIT:guiDumpPUP'  <Pup-State dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label> "'Pup'  " </label>
                    <action>'EXIT:guiDumpPUP'</action> </button>
                <button visible="1"  tooltip-text="'EXIT:guiDumpFAQ'  <FAQ dump>" has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
                    <label> "'Faq'  " </label>
                    <action>'EXIT:guiDumpFAQ'</action> </button>
            </hbox>

            <vbox>
                <button visible="1" tooltip-text="'EXIT:guiDumpSRC'  <Source Code Dump>" heihas-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-All_Source=Code:'    " </label>
                    <action>'EXIT:guiDumpSRC'</action> </button>
                <button visible="1"    tooltip-text="'EXIT:guiDumpGUI'  <XML GUI Dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-XML_Main_GUI=Code:'    " </label>
                    <action>'EXIT:guiDumpGUI'</action> </button>
                <button visible="1" tooltip-text="'EXIT:guiDumpIMG'  <XML GUI Dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump:-svg-xpm_IMG=Code:'    " </label>
                    <action>'EXIT:guiDumpIMG'</action> </button>
            </vbox>
  

            <button visible="1" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>

            <vseparator height-request="5" > </vseparator>
            <button label="" has-focus="false" height-request="2"> <action>lxAction:spacer</action> </button>

            <button label="" has-focus="false" height-request="2"> <action>lxAction:P2-bot-spacer</action> </button>
          
            <hbox homogeneous="true">
                <button visible="1" tooltip-text="'EXIT:guiDumpUPL'  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_UPL'    " </label>
                    <action>'EXIT:guiDumpUPL'</action> </button>
               <button visible="1" tooltip-text="'EXIT:guiDumpSys'  < Display Devloper Var >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_Sys'  " </label>
                    <action>'EXIT:guiDumpSys'</action> </button>
            </hbox>

            <hbox homogeneous="true">
                <button    tooltip-text="'EXIT:guiBase64__Sbr_Base64'"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Source-to-Base64'  " </label>	
                    <action>'EXIT:guiSrcBase64'</action> </button>
            </hbox>    

                <hbox homogeneous="true">
                  <button visible="1"    tooltip-text="'EXIT:guiMandelbrot'   "   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'Mandelbrot_'"</label>	
                        <action>'EXIT:guiMandelbrot'</action> 
                   </button>
                  <button visible="1" tooltip-text="'EXIT:guiAudio_for_StartUpSound+LogInDts'"   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'StartSound_' "</label>	
                        <action>'EXIT:guiAudio'</action> 
                    </button>
                </hbox>
                <hbox visible="true"  homogeneous="true">
                    <button  tooltip-text="'xEXIT:guiBackGround':only-launch, only PageDOX, 250"   has-focus="false">
                            <input file>"'/root/my-applications/Lxgo_.jpg'"</input><width>250</width><height>200</height>
                            <label>"''"</label>	
                    <action function="'launch'">msg_DC_Dxstro_window</action> <action function="'closewindow'">msg_DC_Dxstro_window</action>
                            <action>'xEXIT:guiBackGround'</action>                     </button>
                </hbox>

    <button visible="0" tooltip-text="Simple_guiSimReStart">
        <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
        <label>'_ReStart__'</label>
        <action function="'launch'">msg_DC_LxgenDox_window</action><action function="'closewindow'">msg_DC_LxgenDox_window</action>
        <action>'EXIT:guiSimReStart'</action>	</button>

    <button>
        <label>"Clear Dox Window"</label>
        <action function="closewindow">msg_DC_LxgenDox_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenDox_window</variable>
</window>'
export msg_DC_LxgenDox_window
#! ############################################################
#!
#!
#! [-3-]  Floating Msg Window ###########################################
    # msg_DC_LxgenUtil_window
    #! ### /root/my-applications/Dxstro_.jpg ###
    #! ### /mnt/home/pup_UpupMM-SDA/Dxstro_.jpg ###
msg_DC_LxgenUtil_window_text="===Util_WINDOW==="
msg_DC_LxgenUtil_window='
<window title="msg_DC_LxgenUtil_window---"
visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenUtil_window_text}'</b> </span> " </label></text>
<vbox>
    <vbox>
    
             <vseparator height-request="7" > </vseparator>
              <vbox visible="1">
                    <hbox homogenous="true">
                    <button> <label>"'S2F1'"</label>
                        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>'EXIT:guiS2F1'</action>  </button>
                    <button> <label>"'S2F3'"</label>
                        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                        <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>'EXIT:guiS2F3'</action>  </button>
                    <hseparator width-request="125" > </hseparator>
                    </hbox>
 
                    <vseparator height-request="7" > </vseparator>
                    <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
                    <vseparator height-request="7" > </vseparator>

                    <hbox homogeneous="true" visible="1">
                         <button> <label>"'{_CTX_}'"</label> 
                                <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                                <action>'EXIT:guiCTX'</action>                          </button>
                        <button> <label>"'{_CTA_}'" </label>
                                <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                                <action>'EXIT:guiCTA'</action>                          </button>
                         <button> <label>"'{_CTU_}'"</label> 
                                <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                                <action>'EXIT:guiCTU'</action>                          </button>
                    </hbox>

                    <hbox homogeneous="1" visible="1">
                        <button> <label>"'{_CTB_}'"</label> 
                                <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                                <action>'EXIT:guiCTB'</action>                          </button>
                        <button> <label>"'{_CTB-SL_}'" </label>
                                <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                                <action>'EXIT:guiCTB-SL'</action>                          </button>
                        <button   tooltip-text="Auto_CTB-SLX_UP_Scan_DN_" > 
                            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
                            <label>"'{_CTB-SLX_}'"</label>
                            <action>echo '/root/my-applications/rc.z_CTB-SLX.sh' > /0-MGR_MB_RetVal.cfg </action>  
                                <action>'EXIT:guiCTB-SLX'</action>                          </button>
                     </hbox>

               </vbox>
                
                <vbox>
                <vseparator height-request="5" > </vseparator>
                <button   visible="1"   tooltip-text="'EXIT:guiMCI' < MCI > 
                    Embedded Graphics Sample Project  "has-focus="false" height-request="13"> <label> "" </label> 
                            <input file icon="gtk-select-color" ></input>   
                     <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                           <action>'lxAction:guiMCI'</action>       </button>
         
                <button  visible="1"   gtk-apply="true" has-focus="false" > 
                    <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width>"35"</width><height>"35"</height>
                    <label> " { 'MCI_Project' }  " </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiMCI'</action>      </button>

                </vbox>
                
                <vseparator height-request="7" > </vseparator>
                <button visible="1" label="" has-focus="false" height-request="7"> <action>lxAction:0</action> </button>
                <vseparator height-request="7" > </vseparator>

                <hbox>
                    <button label="-NOTE-" visible="false" height-request="5"> <action>lxAction:spacer</action> </button>
                    <hseparator width-request="7" > </hseparator>
                    <button label="'-Apples-'" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
                    <button     tooltip-text="'Quit-Red'" ><input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>25</width><height>25</height>
                        <label> "''" </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>"'n:00'"</action> </button>
                    <button     tooltip-text="'Quit-Grn'" ><input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:00'"</action> </button>
                    <button     tooltip-text="'Quit-Yel'" ><input file>"'/tmp/EmGr-img-quit-yelnnn.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:00'"</action> </button>
                    <button     tooltip-text="'apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:01'"</action> </button>
                    <button     tooltip-text="'apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>"'n:02'"</action> </button>
                    <button     tooltip-text="'apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:03'"</action> </button>
                    <button     tooltip-text="'apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:04'"</action> </button>
                    <hseparator width-request="42" > </hseparator>
                </hbox>

                <hbox>
                    <hseparator width-request="7" > </hseparator>
                    <button label="'-Jugs-'" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
                    <button     tooltip-text="'jug-blu0yel'" ><input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>25</width><height>25</height>
                        <label> "''" </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>"'n:05'"</action> </button>
                    <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:06'"</action> </button>
                    <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:07'"</action> </button>
                    <button     tooltip-text="'jug-redxgrn'" ><input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:08'"</action> </button>
                    <button     tooltip-text="'jug-grnxred'" ><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:09'"</action> </button>
                    <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:10'"</action> </button>
                    <button     tooltip-text="'jug-redxblu'" ><input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                        <label> "''" </label><action>"'n:11'"</action> </button>
                    <hseparator width-request="50" > </hseparator>
                </hbox>

                <hbox>
                    <hseparator width-request="7" > </hseparator>
                    <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
                        <label> "''" </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>"'n:12'"</action> </button>
                    <button     tooltip-text="'Check-bluXred'" ><input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>33</width><height>33</height>
                        <label> "''" </label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                        <action>"'n:18'"</action> </button>
                    <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>33</width><height>33</height>
                        <label> "''" </label><action>"'n:18'"</action> </button>
                    <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>33</width><height>33</height>
                        <label> "''" </label><action>"'n:19'"</action> </button>
                    <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>33</width><height>33</height>
                        <label> "''" </label><action>"'n:20'"</action> </button>
                    <button     tooltip-text="'Check-blublu'" ><input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>33</width><height>33</height>
                        <label> "''" </label><action>"'n:21'"</action> </button>
                    <hseparator width-request="52" > </hseparator>
                </hbox>
                    <button visible="1" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>

            </vbox>

            <button tooltip-text="Simple_guiSimReStart">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
                <label>'_ReStart__'</label>
                <action function="'launch'">msg_DC_LxgenUtil_window</action><action function="'closewindow'">msg_DC_LxgenUtil_window</action>
                <action>'EXIT:guiSimReStart'</action>	</button>

            <button>
                <label>"Clear Util Window"</label>
                <action function="closewindow">msg_DC_LxgenUtil_window</action>    </button>

</vbox>
</frame>
<variable>msg_DC_LxgenUtil_window</variable>
</window>'
export msg_DC_LxgenUtil_window
#! ############################################################
#!
#!
#!
#! #######################################################
#! END:     Msg_Windows :  Independent  Floating  Pages 
#! END:     Msg_Windows :  Independent  Floating  Pages 
#! END:     Msg_Windows :  Independent  Floating  Pages 
#! #######################################################




#!
#!
#! #######################################################
#! BEGIN:     Combo-Boxes   on  Page One "Main" 
#! #######################################################
#!
#!
#!
#(: ======================================================
#(: fx(Sbr_Cbx_ReStart)
#(: called by:  # CBX_ReStart et al
#(: param:
#(: purpose: ReStart $0 , fresh !
#(: calls:
#(: called by: most <button> CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note : called by ROX
#(:
#! ######################################################
function Sbr_Cbx_ReStart() {   # Active Check-Box # ARB_ReStart
	n=0
     #! called by guiROX with no parameter
    if [ ! "${lcPupRamObjMsg}" ] ; then   #  IF NOT file,  THEN this is First-Time-Run
        #!
        if [ $1  ] ; then # No Param = control Splash
            Sbr_Splash_It  "Manager ReStart" "black" "yellow" "1"     #! -D---   First-Time-Running-Messsage
         fi # end: [ $1 ne "0" ] ; then
        #!
    fi
    #!
    Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
    #! ReStart
    . ${gcZeroRun}      #: $ ZERO	# will run ReStart fresh , todo: must control double ReStart/WriteImg	
    #~ echo "=== Sbr_Cbx_ReStart ===" 
    sleep 1
    #!
} #
export -f Sbr_Cbx_ReStart
#!
#!
#(: ======================================================
#(: fx(Sbr_Cbx_ReBoot)
#(: called by: CBX_Reboot et al 
#(: param:
#(: purpose:
#(: calls:
#(: called by: CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################
function Sbr_Cbx_ReBoot() {   # Active Check-Box # ARB_ReBoot
    n=0
	#
	if [ $1  ] ; then	# control Splash
    	Sbr_Splash_It "ReBOOT" "black" "yellow"  "1"         #! -D---
	fi
	#
 	lcFnRun="/usr/bin/wmreboot"	   # wmpoweroff wmreboot
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
        rm -f ${gcEmGaImgFnTrgTxtMaster}
		${lcFnRun}  && ${lcFnRun}  && exit
    else
        n=0
    	Sbr_Splash_It " ERROR: File Not Found : ${lcFnRun} " "black" "red"  "3"         #! -D---
 	fi
    exit 1	# Should NOT get here !
} #
export -f Sbr_Cbx_ReBoot
#!
#!
#(: ======================================================================
#(: fx(Sbr_Cbx_ReQuit)
#(: called by: CBX_ReQuit
#(: param:
#(: purpose:
#(: calls:
#(: called by: CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Cbx_ReQuit() {   # Active Check-Box # ARB_ReQuit ShutDown
	n=0
	#
	if [ $1 ] ; then
    	Sbr_Splash_It "ReQuit" "black" "yellow"  "1"         #! -D---
 	fi
	#
	lcFnRun="/usr/bin/wmpoweroff"    # wmpoweroff calls /usr/bin/wmexit 
    if [ -f "${lcFnRun}" ]  ; then   # wmpoweroff calls /usr/bin/wmexit 
        n=0
        rm -f ${gcEmGaImgFnTrgTxtMaster}
         ${lcFnRun} && ${lcFnRun} && exit
     else
        n=0
    	Sbr_Splash_It " ERROR: File Not Found : ${lcFnRun} " "black" "red"  "3"         #! -D---
 		#
	fi
    exit 1
} #
export -f Sbr_Cbx_ReQuit
#!
#!
#! #######################################################
#! END:     Combo-Boxes   on  Page One "Main" 
#! #######################################################
#!
#!
#!
#!
#!
#!
#(: ====================================================================
#(: fx(Sbr_SDA_Only)
#(: called by: MainMenu Builder; Some Calls Only Allowed if /SDA1
#(: param:
#(: purpose: Some subroutines are only to be run from SDA system.
#(:        : Author uses several auxillary USB Bootable drives 
#(:        : which are updated frequently from /SDA1 hard drive. 
#(: calls:
#(: method: SDA is the standard EDIT/DEV media.
#(: sends: May send modified code to auxilliary Hard Drives.
#(: rationale: Controls One-Way Out-Going distribution of Edit/Dev code.
#(: note : MUST copy EDIT code from ONLY SDA1 !!!
#(:
#! #####################################################################
function Sbr_SDA_Only() {    # Active  # if [!SDA] then skip and restart
	#! Sbr_SDA_Only	# control: test "SDA" && ReStart
	n=0
    #! Key Routine ! Check IF Hard-Drive Identifier 
    if [ ! -f "/initrd/mnt/dev_save/MARK-SDA" ] || [ ! -f "/initrd/mnt/dev_save/MARK-SDA1" ]; then  
        #! if this HD is NOT the Primary Boot Drive. 
        #! then fail = ReStart
        Sbr_Splash_It "= SDA ONLY =" "yellow" "red"  "5"         #! -D---
        #!
        Sbr_Cbx_ReStart 1   ### Clean ReStart #  do not continue the called command.
    fi
    #! IF this is SDA1, THEN OK to run 
    #! ---> now return back to the caller
    #!
} #
export -f Sbr_SDA_Only
#!
#!
#(: ===========================================================
#(: ft(Sbr_KillProc)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Kill current Proc, stub , and restart
#(: calls: gxmessage, Sbr_Cbx_ReStart
#(: method: place this type of header in fallthrough ( if [ "$EXIT"  )  code . 
#(: sends:
#(: rationale: Allows "killing" a <button> call for 'test' or 'demo' purposes.
#(:
#! ###########################################################
function Sbr_KillProc() { # ACTIVE # permission control # Exit if in Test Mode 
	n=0 # Allows to Skip a Proc , Important for use IF Test file is published as sample. 
lcParam=$1   # "1" will enable ReStart 
# if [ $gcSysKillProc -eq 1 ] ; then  # sets up a Sbr_Button_Only as a "stub" .
if [ ! $gcSysKillProc ] ; then  # sets up a Sbr_Button_Only as a "stub" .
	lcMsgStr="Kill Process "
   	Sbr_Splash_It "! $lcParam !  Kill Procss____STUB called  --- ! ${lcParam} ---____" "yellow" "red"  "3"         #! -D---
	Sbr_Cbx_ReStart 1
fi
} #
export -f Sbr_KillProc
#!
#!
#!
#(: ======================================================================
#(: fx(Sys_MgrSetVerDts)
#(: called by: Main ( )
#(: param:
#(: purpose: 'gc' and 'Sys' System Standard Constants can be installed here.
#(: call this way:  Sys_MgrSetVerDts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note:
#(:
#! ############################################################
function Sys_MgrSetVerDts() {  #: ACTIVE in Main
#! requires Manual Entry for  Developers Version  Date-Time-Stamp
#! which is above in "header"
n=0    #: common "stub" so bare funxtion() will not fault during test/dev.
export gcSysDvar="`date +%y-%m-%d--%H%M-%S`"
export    gcSysDts="`date +%y%m%d-%H%M-%S`"
#(: ====================================
#(: gcSysDtsNow   todo: 
#(: 		### Rationale: 
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(: 		### This is Attempt to generate a "NOW" (this-moment) date-time constant.
#(: 		### Date : grave-mark in date () !!!
#(: 		###  Dts="`date +%y%m%d-%H%M-%S`"
#(: 		### adust from default "z" time
#(: 		###		to local mid-america dts ( -5 hours ).
#(:			###		Does not calc DayLightSavingsTime
#(:			###		But still a consistent error day-to-day.
#(: 	lcNowDts=""
#(: 	lcNowDts="`date +%y%m%d%H%M-%S`"
#(: 	lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
#(: 	gcSysDtsNow="${lcNowDts}-local"
#(: ====================================
#(: date funxtion is ticky. 
#(: ====================================
            #! #! todo:  Not yet used 
            #! lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
            #! gcSysDtsNow="${lcNowDts}"
            #! gcSysDtsNow-local="${lcNowDts}-local"
#!
#!  Prefix SubDir location of all Editing Routines .   This is the original Source code for MGR project, et al. 
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
#!
} #
export -f Sys_MgrSetVerDts
#!
#!
#!
#!
#!
#(: ======================================================================
#(: fx(Sbr_Utl_Mandelbrot)
#(:  name: 
#(:  @param
#(:  @return
#(: called by:
#(: param:
#(: purpose:
#(: call this way:
#(: calls:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:	# Draw_Mandelbrot_Robert.sh
#(:	# draw mandelbrot to terminal
#(:	# very slow, to terminal, runs OK !
#(:
#! ############################################################
function Sbr_Utl_Mandelbrot() {  # Active
    n=0 # ALWAYS install a stub, so 'funxtion' is legit code
    Sbr_Splash_It "_Sbr_Utl_Mandelbrot_()_
  should be run/viewed from Xterm
       may run 30 minutes   " "yellow" "red" "7"
	#! 
	#! Required params:
	#! BAILOUT
	#! MAX_ITERATIONS
	#! 
	lnBAILOUT=16  # max loop was 16
	lnMAX_ITERATIONS=100	# 100 is ok for terminal screen.
	#! 
	function sub_mandelbrot_iterate {   # sub-main 
		local zi=0
		local zr=0
		local i=0
		local cr
		cr=$(printf "%s\n" "scale=16; $2 - 0.5" | bc)
		while true
		do
			local temp
			local zr2
			local zi2
			i=$((i + 1))
			zr2=$(printf "%s\n" "scale=16; ($zr * $zr) - ($zi * $zi) + $cr" | bc)
			zi2=$(printf "%s\n" "scale=16; (($zr * $zi) * 2) + $1" | bc)
			temp=$(printf "%s\n" "(($zi * $zi) + ($zr * $zr)) > $lnBAILOUT" | bc)
			if ((temp == 1))
			then
				return "$i"
			fi
			if ((i > lnMAX_ITERATIONS))
			then
				return 0
			fi
			zr="$zr2"
			zi="$zi2"
		done
		#!
	} # end: sub-mandelbrot_iterate
    #!
	function sub_mandelbrot_main {	# sub-main
		local y
                    printf "* Mandelbrot*" > /root/my-applications/Mandelbrot.txt
		for ((y = -39; y < 39; y++))
		do
			printf "\n"
			printf "\n" >>  /root/my-applications/Mandelbrot.txt
			local x
			for ((x = -39; x < 39; x++))
			do
				local xi
				local yi
				local ires
				xi=$(printf "%s\n" "scale=16; $x / 40.0" | bc)
				yi=$(printf "%s\n" "scale=16; $y / 40.0" | bc)
				#! 
				sub_mandelbrot_iterate "$xi" "$yi"
				#!
				ires=$?
				if ((ires == 0))
				then
					printf "*"
                    printf "*" >> /root/my-applications/Mandelbrot.txt
				else
					printf "."
                    printf "." >> /root/my-applications/Mandelbrot.txt
				fi
			done
		done
		printf "\n"
	}
#! # below is the mandelbrot main ()
sub_mandelbrot_main   # this is the mandelbrot main ()
} # 
export -f Sbr_Utl_Mandelbrot
#! export -f sub_mandelbrot_iterate 
#! export -f sub_mandelbrot_main
#!
#!
#!
#!
#!
#(: ======================================================================
#(: fx(Sbr_Base64)  Base64 Base-64 Base_64 Base 64
#(:  name: 
#(:  @param
#(:  @return
#(: called by: if[ EXIT:guiBase64 ]
#(: param:
#(: purpose:
#(: call this way:
#(: calls:
#(: returns:
#(: method:
#(: rationale:
#(: note:
#(:
#! ####################################################################
function Sbr_Dump_SRC_Base64() {  #: ACTIVE Col 3  Base 64, Base_64, Base-64
    n=0 # ALWAYS install a stub, so 'funxtion' is legit code
    #~ set -xe
    echo "" 
    echo "=== Base64  cat /tmp/Base64-Encoded.txt ============"
    #! Display Information
    #! Splash is 45 char long, then wraps.
    #! gxmessage is expands to 72++
lxDumpMsg="Usage: base64 [OPTION]... [FILE]
______________________________________________________________________
MUST USE Xterm to see this dump calculated routine !

______________________________________________________________________
Base64 encode or decode FILE, or standard input, to standard output.
______________________________________________________________________
With no FILE, or when FILE is -, read standard input.
______________________________________________________________________
Mandatory arguments to long options are mandatory for short options too.
============================================
  -d, --decode          decode data
  -i, --ignore-garbage  when decoding, ignore non-alphabet characters
  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).
                          Use 0 to disable line wrapping
      --help     display this help and exit
      --version  output version information and exit
The data are encoded as described for the base64 alphabet in RFC 4648.
When decoding, the input may contain newlines in addition to the bytes of
the formal base64 alphabet.  Use --ignore-garbage to attempt to recover
from any other non-alphabet bytes in the encoded stream.
GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/base64>
or available locally via: info '(coreutils) base64 invocation'
)"
	gxmessage -name "Sbr_Dump_SRC_Base64 documentation 'timeout 20 seconds'"  -fg blue -bg lightyellow -timeout 20  -center  "${lxDumpMsg}"
    #!
    lcBase64fn="/tmp/box_help" 
    cat "$0" > "/tmp/box_help"
    #! Display Encoded
    lcBase64fnEncoded="/tmp/Base64-Encoded.txt"
    base64 ${lcBase64fn} > ${lcBase64fnEncoded}
    gxmessage -title "SourceCode Encoded in Base64"  -name "-Encoded-Base64-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcBase64fnEncoded}
    #!
    echo "" && echo "=== Base64  cat //tmp/Base-64-Decoded.txt ============"
    #!
    #! Display Decoded
    lcBase64fnDecoded="/tmp/Base-64-Decoded.txt"
    base64 -d ${lcBase64fnEncoded} > ${lcBase64fnDecoded}
    gxmessage -title "SourceCode Decoded from Base64"  -name "-Decoded-Base64-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcBase64fnDecoded}
    #!
} # end
export -f Sbr_Dump_SRC_Base64
#!
#!
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_ClearFlagsSystem)   #: Active for System
#(: called by:
#(: param:
#(: purpose: clear all system flags
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : some flags are still hard-code ; ie, LockFile , BackUpStatus
#(:
#! ############################################################
function Sbr_ClearFlagsSystem() {   #: ACTIVE for System
	n=0
		rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	###  but not E3R  CBX
		rm -f "/tmp/snapmergepuppy-error"  ### this is SMP flag ,  Not Used
		rm -f "/tmp/box_help"       ### remove the lingering temp file.
		rm -f "/tmp/box_source"       ### remove the lingering temp file.
		rm -f "${MGR_BackUpStatus}"
		gcMGRConfigArbIdd=""		### cleared for 'next reboot' Menu Selection
	/bin/echo " " > /dev/console
} #
export -f Sbr_ClearFlagsSystem
#!
#!
#(: =====================================================================
#(: fx(Sbr_ClearFlagsQuit)
#(: called by:
#(: param:
#(: purpose: Clear Quit Flags at "QUIT" program
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : some flags are still hard-code ; ie, LockFile , BackUpStatus
#(:
#! ############################################################
function Sbr_ClearFlagsQuit() {   #: ACTIVE for QUIT
    n=0
#!
if [ ! $1  ] ; then   # display active
       Sbr_Splash_It  "Clear Flags Quit" "orange" "purple" "1"
fi # end: [ $1 = "1" ]
#!
	rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	   ###  but not E3R  CBX
	rm -f "${MGR_TouchCBXstatus}" # ## CBX applied flag must linger for GUI		# Carry-Over
	rm -f "${MGR_BackUpStatus}" # ## CBX applied  flag must linger for GUI		# Sbr_ClearFlagsQuit
    rm -f "${MGR_ReStart_flg}"  # ## MGR initial Re-ReStart to init GEANY		# Sbr_ClearFlagsQuit
    rm -f "/tmp/MGR_Page_Control.flg"
	/bin/echo " " > /dev/console
#!
} #
export -f Sbr_ClearFlagsQuit
#!
#!
#!
#(: #####################################################################
#(: fx(Sbr_Box_Message)	  # internal hack on gtkdialog box_help, by gae
#(: called by :
#(:    GuiHLP+  to  fx(Sys_Box_HLP)  to  Sbr_Box_Message
#(:    GuiFAQ+  to  fx(Sys_Box_FAQ)  to  Sbr_Box_Message
#(:
#(: receives param : Header$1 and loads '/tmp/box_help' for Top-Edge Window Title. 
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" 
#(:   provides wider screen width.
#(:   based on gtkdialog box_help code processes.
#(:
#(: usage :
#(:   HEADING is a short "title bar" description.
#(:   XML code is custom written to format "/tmp/box_help".
#(: returns:
#(: method:
#(:     gtkdialog --center -p XML-Format-file (which loads /tmp/box_help )
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" 
#(:   based on gtkdialog box_help code processes.
#(:   provides wider screen width.
#(:
#(: note:
#(: purpose :  Simple Message sbr based on gtkdialog box_help
#(:   "case and hack"  rewrite based on "box_help" 
#(:   which allows author to change the "lead-in" XML code
#(:   and thus change the "format" of this custom "message_box".
#(:   Sbr_Box_Message does provide a "OK" user button.
#(:   Sbr_Box_Message does provide a "markup" on text.
#(:   Sbr_Box_Message does allow dimension changes.
#(:   Sbr_Box_Message does not require a "URL" param.
#(: note:
#(:   XML assumes /tmp/box_help and "gtkdialog -p" internal code.
#(:   XML sets up the markup and color options for the imported text.
#(:   XML sets up the "OK" control button, and will show/close/"OK"
#(:
#! ############################################################
function Sbr_Box_Message() {  #: ACTIVE   for HELP and FAQ
#
n=0
#(:   "case and hack"  rewrite based on "box_help"  by  gae
#(:   which allows author to change the "lead-in" XML code

export TEXTDOMAIN=libstardust
export OUTPUT_CHARSET=UTF-8
#
if [ "$1" ] ; then
	Box_Msg_Heading="${1}"
else
	Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
fi
#! Is Used by Help and FAQ  : 
export Box_MessageXML='
<window title="MGR_'${Box_Msg_Heading}'"
default-height="550"
default-width="760"
visible="true" >
<vbox space-expand="true" space-fill="true">
  <vbox space-expand="true" space-fill="true">
    <vbox scrollable="true" shadow-type="3" space-expand="true" space-fill="true">
      <vbox space-expand="false" space-fill="false">
        <text xpad="10" ypad="15" use-markup="true"><input file>'/tmp/box_help'</input></text>
      </vbox>
    </vbox>
  </vbox>
  <hbox space-expand="false" space-fill="false">
    <button>
      '"`/usr/lib/gtkdialog/xml_button-icon ok`"'
      <label>'$(gettext 'Ok')'</label>
    </button>
  </hbox>
</vbox>
</window>'
#
gtkdialog --center -p Box_MessageXML	# assumes '/tmp/box_help'    #! -D---
#
} #
export -f Sbr_Box_Message
# ACTIVE   for HELP and FAQ
#!
#!
#(: ============================================================
#(: fx(Sbr_ARB_Init)	#: Active #  read config and write menulst 
#(: called by:   main run ( )
#(:    main run ( )  calls  fx(Sbr_ARB_Init)
#(: purpose:  read pre-set configfile then assign to "gcC3MConfigArbId"
#(: receives param:
#(: returns:
#(: note: Setup is gui Fall-Thru ft(Sbr_ARB_00}  /   EXIT:ARB_00
#(:
#! ############################################################ READ CONFIG ###
function Sbr_ARB_Init() {   #: ACTIVE called at main () :  init for "ARB" config  /root/my-applications/bin
#(: purpose:  read pre-set configfile then assign to "gcC3MConfigArbId"
    n=0
    gcMgrArbCfgFn="/root/my-applications/bin/MGR_Config_ARB.cfg"   #: ? ASSIGNED fx(Sys_PupState)
if [ -f ${gcMgrArbCfgFn} ] ; then   #: read config 
    n=0
    gcC3MConfigArbId=`cat ${gcMgrArbCfgFn}`   #:  extract Id
    chmod +x ${gcMgrArbCfgFn}
    echo "gcC3MConfigArbId:${gcC3MConfigArbId}:================="
else
	n=0
    touch ${gcMgrArbCfgFn}
	gcC3MConfigArbId=""
    echo "${gcC3MConfigArbId}" > ${gcMgrArbCfgFn}
	echo "ID:gcC3MConfigArbId:${gcC3MConfigArbId}:"
	echo "FN:${gcMgrArbCfgFn}:Not Found:"
    Sbr_Splash_It "${gcC3MConfigArbId} Config Not Found  ${gcMgrArbCfgFn} empty file created" "yellow" "red" "3"   #! -D---
fi
} #
export -f Sbr_ARB_Init
#!
#!
#!
#!
#(:===========================================================
#! begin: Up Pmount       
#(:===========================================================
#(: fx(Sys_MGR_pMount_One)
#(: called by:   Sys_MGR_pMount_All calls "Sys_MGR_pMount_One"
#(: purpose:  pMOUNT  only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:
#! ############################################################
function Sys_MGR_pMount_One() {      # ACTIVE UpPmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    lcMsgStr="${1}:trg drive ID"
    gcActiveGui="1"
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Small splash 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.      Quick Sys_MGR_pMount_One
.             '${1}'                              "&
    RETVAL=$?
    GTKPIDPMNTsbr=$! 
    #! kill ${GTKPIDPMNTsbr} is split
fi
#! IF -d /root THEN already mounted
    mkdir -pv /mnt/${1} drv
    mount         /dev/${1} /mnt/${1}
    mount -t ext3 /dev/${1} /mnt/${1}
    mount -t vfat /dev/${1} /mnt/${1}
if [ "$gcActiveGui" = "1" ] ; then 
    sleep .5
    kill ${GTKPIDPMNTsbr}       #! kill ${GTKPIDPMNTsbr} is split
fi
} #
export -f Sys_MGR_pMount_One
#!
#!
#(: ====================================================================
#(: fx(Sys_MGR_pMount_All)
#(: called from gui
#(: called by: E3R_Main_Int_Long_List    and gui-P-MntInt
#(: method: code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sys_MGR_pMount_One)
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(:Dump calls Sys_MGR_pMount_One with internal prep.
#(:
#! ############################################################
function Sys_MGR_pMount_All() {    # ACTIVE UpPmount Special
    n=0
    gcActiveGui="1"
    lcActiveMntId="P"   # Id    # Not Used
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---  Big Splash BackGround 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.      MGR_P_Mount_All INTERNAL
.
.
.
.
.
.                                                          "&
    RETVAL=$?
    GTKPIDPMNT1=$!
    sleep .3
fi
#!
#~ #set +x +e   # Sys_MGR_pMount_All
#! if -d /root then already mounted
#;;; multiple calls to subroutine , which runs a single "mount" routine
#;;; begin looping internal code ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; DO NOT USE ON SDA1, which is the primary drive. 
Sys_MGR_pMount_One "sda2"
Sys_MGR_pMount_One "sdb1"
Sys_MGR_pMount_One "sdc1"
Sys_MGR_pMount_One "sdd1"
Sys_MGR_pMount_One "sde1"
Sys_MGR_pMount_One "sdf1"
Sys_MGR_pMount_One "sdg1"
Sys_MGR_pMount_One "sdh1"
Sys_MGR_pMount_One "sdi1"
Sys_MGR_pMount_One "sdj1"
Sys_MGR_pMount_One "sdk1"
Sys_MGR_pMount_One "sdl1"
Sys_MGR_pMount_One "sdm1"
Sys_MGR_pMount_One "sdn1"
Sys_MGR_pMount_One "sdo1"
Sys_MGR_pMount_One "sdp1"
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if [ "$gcActiveGui" = "1" ] ; then 
    Sbr_Splash_It  "DONE : _pMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDPMNT1} # background splash yel/red 
fi #
    Sbr_Cbx_ReStart 1   # no wait
} # 
export -f Sys_MGR_pMount_All
#!
#! ===========================================================
#! end: Up Pmount     
#! ===========================================================
#!
#!
#! ===========================================================
#! begin: Dn Umount    
#! ===========================================================
#!
#(:===========================================================
#(: fx(Sys_MGR_uMount_One)	#: Active
#(: called by:   ft(EXIT:guiUMntInt)  (each one)
#(: calls:
#(: purpose:  uMOUNT only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:    funxtion "Sys_MGR_uMount_All"  calls "Sys_MGR_uMount_One"
#! ############################################################
function Sys_MGR_uMount_One() {   # ACTIVE DnUmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    gcActiveGui="1"
    #~ #lcActiveMntId="U"   # Id    # Not Used
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D--- Small Splash
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.        Sys_MGR_uMount_One
.             '${1}'                              "&
    RETVAL=$?
    GTKPIDUMNTsbr=$!
fi
    # # # todo: ? choose a different test subdir.  Not /root, which is the Current Active drive /root
    # # # check for conflict.   None on 7 drives and 17 OS.  240205-0710
        lcDirName="/root"
        if [ -d ${lcDirName} ] ; then # IF target directory is real 
            umount -lv      /mnt/${1}
        else    # ELSE /root is the /root/home and cannot be unMounted !
            n="0"
        fi
if [ "$gcActiveGui" = "1" ] ; then 
       sleep 1
       kill ${GTKPIDUMNTsbr}
fi
} #
export -f Sys_MGR_uMount_One
#!
#!
#(: ============================================================
#(: fx(Sys_MGR_uMount_All)
#(: calls: Sys_MGR_pMount_One
#(: called from: Gui
#(: called by: E3R_Main_Int_Long_List    and gui-P-MntInt
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(: calls Sys_MGR_uMount_One with internal prep.
#(:
#! ############################################################
function Sys_MGR_uMount_All() {   # ACTIVE DnUmount Special
    n=0
    gcMntAllLogP="/tmp/MGR_MntAllU.log "
    #~ #lcMntAllTrg=${gcMntAllLogU} # Not Used
    gcActiveGui="1"
    #~ #lcActiveMntId="U"      # Not Used
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Big Splash BackGround
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "
.        Sys_MGR_uMount_All
.        :${lcMntAllLogFn}:
.
.
.
.
.                                                          "&
    RETVAL=$?
    GTKPIDUMNT1=$!
fi
#;;; never try to unmount /dev/SDA
#;;; begin looping subroutine umount process ;;;;;;;;;;;;;;;;;;;
#;;; DO NOT USE ON SDA1, which is the primary drive. 
Sys_MGR_uMount_One "sda2"
Sys_MGR_uMount_One "sdb1"
Sys_MGR_uMount_One "sdc1"
Sys_MGR_uMount_One "sdd1"
Sys_MGR_uMount_One "sde1"
Sys_MGR_uMount_One "sdf1"
Sys_MGR_uMount_One "sdg1"
Sys_MGR_uMount_One "sdh1"
Sys_MGR_uMount_One "sdi1"
Sys_MGR_uMount_One "sdj1"
Sys_MGR_uMount_One "sdk1"
Sys_MGR_uMount_One "sdl1"
Sys_MGR_uMount_One "sdm1"
Sys_MGR_uMount_One "sdn1"
Sys_MGR_uMount_One "sdo1"
Sys_MGR_uMount_One "sdp1"
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
if [ "$gcActiveGui" = "1" ] ; then  
    Sbr_Splash_It  "DONE : Sys_MGR_uMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDUMNT1} # background
fi
    Sbr_Cbx_ReStart 1   # no wait
} #
export -f Sys_MGR_uMount_All
#!
#! ===========================================================
#! end: Dn Umount        
#! ===========================================================
#!
#!
#!
#!
#!
#!
#! ### DUMPS ########################################################################
#! ### DUMPS ########################################################################
#! ### DUMPS ########################################################################
#!
#!
#(: ====================================================================
#(: fx(Sbr_Dump_PUP)
#(: called by: Main Gui
#(: param:
#(: purpose:  Display PUPSTATE via direct link in Main_GUI , returns to same.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT interpret markup text codes.
#(: 	Method: cat ${lcMsgSrc} > ${lcMsgTrg} & xmessage
#(:
#! ############################################################
function Sbr_Dump_PUP() {    #: ACTIVE
	n=0
lcMsgSrcDP="/etc/rc.d/PUPSTATE"
lcMsgTrgDP="/tmp/box_help"	# /tmp/MGR_PUPSTATE
#
echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
echo "# ${lcMsgSrcDP}"  >> ${lcMsgTrgDP}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrgDP}
echo "# This is Linux "  >> ${lcMsgTrgDP}
echo "#    This is Free Open Source  " >> ${lcMsgTrgDP}
echo "#       So, Read the Code" >> ${lcMsgTrgDP}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrgDP}
echo "# `date +%y%m%d-%H%M-%S`"  >> ${lcMsgTrgDP}
#
cat ${lcMsgSrcDP} >> ${lcMsgTrgDP}
#
lcMGR_dts="=== MGR  NowDTS  `date +%y%m%d-%H%M-%S`"
echo "${lcMGR_dts}" >> ${lcMsgTrgDP}	#: add string to PUPSTATE Text Output
echo "=== {PUP+} MGR_Pup_Box ============================" >> ${lcMsgTrgDP}
sleep 1
gxmessage -name "PUPSTATE via cat + gxmesage" -bg lightyellow  -center -file "${lcMsgTrgDP}" -wrap
} #
export -f Sbr_Dump_PUP
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_HLP)  Dump_Help
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Help general
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(: 	system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message "=== 'Sbr_Box_Message' for '/tmp/box_help'"
#(:
#! ############################################################
function Sbr_Dump_HLP() {   #: ACTIVE  echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
<b><span foreground='"'red'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
<b><span foreground='"'green'"'>"Not intended for general distribution"</span></b>
<b><span foreground='"'blue'"'>"Not intended to be a Turn-Key project."</span></b>
"--- "
<span foreground='"'red'"'>"About : "</span>
<b><span foreground='"'red'"'>"${gcSysNameBase} is a General Menu framework ! "</span></b>
    <span foreground='"'green'"'>"Purpose is to provide a test-bed for '<b>'experiments'</b>'."</span>
    <span foreground='"'green'"'>"and Allow-Flipping-between-'<b>'20-Puppy_Distros_!'</b>'"</span>
<span foreground='"'red'"'>"About : "</span>
<b><span foreground='"'red'"'>"Special Features of ${gcSysNameBase}: "</span> <span foreground='"'green'"'></span></b>
    <span foreground='"'blue'"'>"has Multiple NoteBook type pages. ! "</span>
    <span foreground='purple'>       "#! to form an expandable compact main screen ."</span>
    <span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
    <span foreground='purple'>       "#! to reduce dependence on system resources ."</span>
    <span foreground='"'blue'"'>"has Double-Click buttons ! "</span>
    <span foreground='purple'>       "#! to reduce accidental triggers."</span>
"--- "
<span foreground='red'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='red'>"#! Each OS is tested via its own original distro GTK ."</span>
"--- "
"--- "
<b><span foreground='"'blue'"'>"buttons with Double-Click will trigger "</span></b>
<b><span foreground='"'blue'"'>"a large tear-drop shaped ICON."</span></b>
<b>:<span foreground='"'red'"'>"RED Border"</span>": tear-"<span foreground='"'yellow'"'>"YELLOW "</span>"-drop:"</b>
<b><span foreground='"'green'"'>"pop-up in middle of screen"</span></b>
"--- "
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"--- "
<b><span foreground='"'green'"'>"___Tested across 20 Puppy Distros______________________"</span></b>
<b><span foreground='"'red'"'>"BASH will always work "</span></b>
<b><span foreground='"'red'"'>"but, GTK is sensitive to the theme settings/formatting"</span></b>

"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'blue'"'>"Authors note about MGR.sh coding :"</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular  code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"designed to prevent interaction "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"... between bash and gtkdialog "</span>
"--- "
<span foreground='"'green'"'>"${gcSysNameBase}.sh restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcSysNameBase}.sh requires 1 second to write all 37 images"</span>
<span foreground='"'green'"'>" . . . . . . . . . . . writes all images one time, at StartUp."</span>
<span foreground='"'green'"'>" . . . . . . . . . . . into 13 KBytes in /tmp "</span>
"--- "
<span foreground='"'green'"'>"____________________________________________"</span>
<b><span foreground='"'purple'"'>" Running Tests on 20 Puppy OS, including: "</span></b>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
"---"
<span foreground='"'blue'"'>  "iso-KineticPup32-22.10+2________________230604"</span>
<span foreground='"'blue'"'>  "iso-BionicPup32-8.0+30_BionicBeaver_____220407"</span>
<b><span foreground='"'red'"'>"iso_BionicPup32-19.03-K5.9_231209.iso___K:5.9_231209"</span></b>
<b><span foreground='"'red'"'>"iso_ManticPup32-23.10+1.iso______________K:6.1_231209"</span></b>
<span foreground='"'blue'"'>  "iso-JammyPup32-22.04+8_JammyJellyfish__22123"</span>
<span foreground='"'blue'"'>  "iso-UPupFF+D-20.12+4_Focal-Fossa_______201210"</span>
<b><span foreground='"'red'"'>"iso-UpupTahr-6.0.6-k4.1.30-uefi___________K:4.1_190211"</span></b>
<span foreground='"'blue'"'>   "iso-Slacko-7.0_DpupS7_14.2_____________220205"</span>
<span foreground='"'blue'"'>   "iso-Xenial-64_7.5_XL____________________220401"</span>
<span foreground='"'blue'"'>   "iso-S15Pup-64_22.12+1-T_________________220922"</span>
<span foreground='"'blue'"'>   "iso-Quirky_April-7.0.1F-uefi____________200511"</span>
<span foreground='"'blue'"'>   "iso_devuanpup-9.7.0-chimaera_4.0_i386___211206"</span>
<span foreground='"'blue'"'>   "iso_BookwormPup32-23.11-B4_K:6__________231210"</span>
<span foreground='"'blue'"'>   "iso_LxPupSc-slacko-20.01+0-T-k64________200129"</span>
<span foreground='"'blue'"'>   "iso_slacko64_14.2_32-674-bit_comptible__220227"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
This 'MGR' project series is posted 
   on the Murga website
   in the 'utilities' .
This project is posted on website:
   www.GeoCities.WS/glene77is
under the "LINUX" button.
"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'red'"'>"Note on running executable BASH script :"</span>
Always check the file "\'set action\'"
... ' $ @ '  'Use-Command'
Always check the file "\'type\'"
... 'Exec'
Always check the file "\'Properties\'"
... 'Exec'
Always check the file "\'Permissions\'"
...'Executable'
Always examine other running scripts
to see how Your System is setting environmentals.
"--- "
<span foreground='green'>'______________________________'</span>
<span foreground='red'>'ROX Debug Method :'</span>
Use the ROX 'Run in Terminal' to Execute a script.
<span foreground='red'>'Geany Debug Method :'</span>
Use the Geany Execute funxtion
   to run the script 'BASH-Terminal'
All 'echo' commands will display.
"--- "
<span foreground='green'>'______________________________'</span>
### output 'HELP' temp file MUST BE '/tmp/box_help'
### due to hard-code in '/gtkdialog/box_help'
<span foreground='green'>'______________________________'</span>
... Dumps available:
... 'Help', 'Faq', 'Pup', 'Src', 'Gui', 'Img', 'Upl', 'Dev'
... All Dumps will run, and 'ReStart' this program.
... User should Run '${gcSysNameBase}' script
...    in 'Geany' or 'ROX' 'terminal'
...    to view/trace action of internal operations !
"--- "
<span foreground='green'>"__________________________________________"</span>
<span foreground='red'>" gtkdialog version as delivered with this Puppy OS  "</span>
<span foreground='blue'>"  MGR is written with GTK as originally installed"</span>
<span foreground='red'>"  gtkdialog 'Button' Format-Sequence-is-critical "</span>
<span foreground='red'>"  gtkdialog 'Button' Format-Sequence-is-critical "</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"-------------------------------------"</span>
<span foreground='green'>"-------------------------------------"</span>
<span foreground='blue'>"-------------------------------------"</span>
"--- "
<b><span foreground='"'red'"'>"     ${0} "</span></b>
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
......................................................"\
> /tmp/box_help
Sbr_Box_Message "=== HELP === via 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end
export -f Sbr_Dump_HLP
#! ############################################################
#!
#!
#!
#!
#! 
#!
#(: =====================================================================
#(: fx(Sbr_Dump_FAQ)
#(: called by:
#(: param:
#(: purpose:  Display FAQ via  direct link in Main_GUI , returns to same.
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note : requires /tmp/box_help
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
#(:		system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#! ############################################################
function Sbr_Dump_FAQ() {   #: ACTIVE
	n=0
	echo "\
<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<span background='yellow'><span foreground='blue'> '      $gcSysNameBase FAQ    '</span></span>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>
<span foreground='green'>                     # Compiled: ${gcSysDevDob} # </span> 

<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<b><span background='yellow'><span foreground='blue'> '#! Running Tests '</span></span></b>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>\
<span foreground='green'>

<b><span background='lightyellow'><span foreground='red'>     #! Running Tests on 20 live-active Puppy Linux OS </span></span></b>
<b><span background='lightyellow'><span foreground='brown'>     #! including: </span></span></b>
    #! iso-KineticPup32-22.10+2__________________230604
<b><span foreground='blue'> '    #!*** iso_BionicPup32-19.03-K5.9____K:5____231209'</span></b>
    #! iso-BionicPup32-8.0+30_____________K:4____220407
    #! iso-UPupFF+D-20.12+4_Focal-Fossa__________201210
<b><span foreground='blue'> '    #!*** iso_ManticPup32-23.10+1_______K:6____231209'</span></b>
    #! iso_BookwormPup32-23.11-B4_K6.1.55_K:6____231210
    #! iso-JammyPup32-22.04+8_____________K:5.1__221203
    #! iso-S15Pup-64_22.12+1-T____________K:5.1__220922
    #! iso-Xenial-64_7.5_XL_______________K:4.9__220401
    #! iso_slacko64_14.2_32-674-bit_comptible____220227
    #! iso-Slacko-7.0_DpupS7_14.2________________220205
    #! iso_devuanpup-9.7.0-chimaera_4.0_i386_____211206 beta
    #! iso-Quirky_April-7.0.1F-uefi______________200511 beta
    #! iso_LxPupSc-slacko-20.01+0-T-k64__________200129
    #!* iso-UpupTahr-6.0.6-k4.1.30-uefi____K:4.1__190211
<b><span foreground='blue'> '    #!*** iso-UpupTahr-6.0.6-k4.1.30-uefi__K:4.1__190211'</span></b>
    #(: ------------------------------------------------
</span>


<span background='brown'><span foreground='yellow'> '===================='</span></span>
<span background='yellow'><span foreground='blue'> '#! 20 Distros  '</span></span>
<span background='yellow'><span foreground='blue'> '#! Some have  '</span></span>
<span background='yellow'><span foreground='blue'> '#! require the default Themes '</span></span>
<span background='yellow'><span foreground='blue'> '#! for GTK  '</span></span>
<span background='brown'><span foreground='yellow'> '====================' </span></span>
<span foreground='blue'>
</span>

<span foreground='"'green'"'>"______________________________"</span>
<b><span foreground='"'red'"'>"#: note:  Middle-Page-module"</span></b>
<span foreground='"'red'"'>"#: fxSbr_gui_MB_xml  "</span>
<span foreground='"'blue'"'>"#: called by : Main_GUI, EXIT:guiMB "</span>
<span foreground='"'red'"'>"#: purpose :  Middle-Page  Multi-Buttons  array "</span>
<span foreground='"'blue'"'>"#: - - -    of functional calls to sub-routines"</span>
<span foreground='"'blue'"'>"#: returns : "</span>
<span foreground='"'red'"'>"#:  "<b>"Selected Button"</b>" generates "'"token FnTarget"'" "</span>
<span foreground='"'blue'"'>"#:  - - - is sent as a token string echo into config-file"</span>
<span foreground='"'red'"'>"#:  "'"action"'" echo  token FnTarget  "'/"action"'""</span>
<span foreground='"'blue'"'>"#:  - - - is sent as a token string echo  "</span>
<span foreground='"'blue'"'>"#:  - - - into "'"0-MGR_MB_RetVal.cfg"'" "</span>
<span foreground='"'blue'"'>"#:  "<b>"File.cfg "</b>"will be read to "'"extract"'" token FnTarget"'". "</span>
<span foreground='"'blue'"'>"#:  "'""<b>"token FnTarget"</b>""'" will be "'"executed"'". "</span>
<span foreground='"'green'"'>"______________________________"</span>
<b><span foreground='"'darkred'"'>"#:       READ the CODE in the Middle-Vertical "'"Page 1-2-3"'" sections ."</span></b>
<span foreground='"'brown'"'>"#:		Sbr_gui_MB_xml  eval  will not initiate "'"action"'" "</span>
<span foreground='"'brown'"'>"#:		Sbr_gui_MB_xml writes "'"action"'" results into a file.cfg"</span>
<span foreground='"'brown'"'>"#:       BASH code  will import the "'"file.cfg"'" "</span>
<span foreground='"'brown'"'>"#:       BASH code  will call the "'"action"'" subroutine."</span>
<span foreground='"'brown'"'>"#:       BASH code  will call the external system executables"</span>
<span foreground='"'brown'"'>"#:       ... by passing a token thru a /tmp/Page_Control.flg "</span>
<span foreground='"'brown'"'>"#:       READ the CODE in the vertical "'"Center-Page"'" section ."</span>
<span foreground='"'brown'"'>"#:       READ the CODE  to see the specific method."</span>
<span foreground='"'green'"'>"------------------------------------------------------------------"</span>

<span background='brown'><span foreground='yellow'> '=========='</span></span>\
<span background='yellow'><span foreground='blue'> ' "SOFT" LockFile:'</span></span>\
<span background='brown'><span foreground='yellow'> '==========' </span></span>
<span foreground='darkblue'>\
    #(: ------------------------------------------------
    #(:  Note:   
    #(:   MGR.sh is written with a "SOFT" LockFile.
    #(:      so error message is displayed, 
    #(:      and program continues to run. 
    #(:  Note: 
    #(:  'strict' lockfile method NOT implemented.
    #(:  	example: for 'LockFile' using 'exit 1'
    #(:  'strict' lockfile WILL 'exit' subroutine  
    #(:      at 'current' stack level. 
    #(:  'strict' lockfile WILL 'exit' program  
    #(:       only at 'base' stack. 
    #(:  'strict' lockfile MAY NOT exit/quit the script program. 
    #(:
    #(:  IF 'strict' lockfile block is written into a funxtion()
    #(:     ( which is a "sub-routine" )
    #(:		[which by definition is a sublevel in the stack],
    #(:  THEN 'exit' will only "pop" one level
    #(:     at the funxtion() stack level,
    #(:  	and will not 'quit' or 'halt' the PRG as desired.
    #(:
<b><span foreground='"'brown'"'>    "#:	MGR.sh has a 'SOFT Lock' method "</span> </b>
    #(:		User is responsible for correcting 
    #(:		repeated runs of MGR.sh . 
    #(:  'soft' lock produces 'non-fatal' errors.  
    #(:
    #(:
    #(:  A monster BASH script program like this 
    #(:  ('MGR' core program has 8357 lines) 
    #(:  ('MGR' system has > 12,000 lines )
    #(:   would be better implemented via 
    #(:   modern high-level language like Python.
    #(:   and would have been a flash 
    #(:   using FoxPro/VisualFox with imbedded T-SQL.
    #(:
    #(: ------------------------------------------------
</span>

..."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} #
export -f Sbr_Dump_FAQ
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_SRC)   #: A
#(: called by:  Main_GUI
#(: param:
#(: purpose:  Display Source via direct link in Main_GUI , returns to same.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     xmessage requires /tmp/help_box
#(:
#(: First Section is a Dump to Screen via gxmessage pulling /tmp/box_help
#(: Second Section is a Base-64 Cat to /my-applications/Mgr_Cat_64_.txt
#! #######################################################################
function Sbr_Dump_SRC() {   #: ACTIVE requires /tmp/box_help
	n=0
#(: lcFileXmessage="/usr/bin/xmessage" # old target
lcFileGXmessage="/usr/bin/gxmessage"    # current target 
    #!
lcMsgStr="===  Sbr_Dump_SRC gxmessage === "  # &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #!
#! begin Source Header
lcMsgSrc="${0}"	# "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"   # box_help is required by gtkdialog 
echo "# ${gcSysNameBase} #  textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
echo "# " >> ${lcMsgTrg}
echo "# { ${gcSysDistroName} } " >> ${lcMsgTrg}
echo "# " >> ${lcMsgTrg}
echo "# SOURCE CODE " >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_SRC " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# Source:  ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# Target:  ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# DOB:     ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Compiled: `date +%y%m%d-%H%M-%S-%a`"  >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "#       " >> ${lcMsgTrg}
#! end Source Header
#!
#! begin Source Body
cat ${0} >> ${lcMsgTrg}     ### Sbr_Dump_SRC   /tmp/box_help ###
    #!lcMsgTrgTxt="/MGR-Source.txt"
    #!cat ${0} > ${lcMsgTrgTxt}     ### Sbr_Dump_SRC   /tmp/box_help ###
    #! end Source Body
sleep 1		# wait for system 
#!
gxmessage -title "SRC:::${gcSysDistroName}:::${gcSysNameBase}:::"  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
#!
} #
export -f Sbr_Dump_SRC
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_GUI)
#(: called by:
#(: param:
#(: purpose: splash GTK GUI XML code 
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_GUI() {   #: ACTIVE # ${MGR_Master_GUI}
	n=0
lcFileGXmessage="/usr/bin/gxmessage"
   #
lcMsgStr="===  Sbr_Dump_GUI gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="/tmp/EmGa-Master-GUI.txt"
lcMsgTrg="/tmp/box_help"
    #!
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
    #!
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_GUI " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# MGR Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# DistroKernel: ${gcMGRKernVer}"  >> ${lcMsgTrg}
echo "# MGR ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}
cat ${lcMsgSrc} >> ${lcMsgTrg}     ### /tmp/box_help ###
sleep 1		# wait for system 
gxmessage -title "GUI"  -name "-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} #
export -f Sbr_Dump_GUI
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_Dump_IMG)
#(: called by:
#(: param:
#(: purpose: display all IMG code
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_IMG() {   #: ACTIVE Dump_Image
	n=0
lcFileXmessage="/usr/bin/xmessage"
lcFileGXmessage="/usr/bin/gxmessage"
    #
lcMsgStr="===  Sbr_Dump_IMG gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="EmGa-Master-IMG.txt"	
lcMsgTrg="/tmp/box_help"  
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "${gcSysDistroName} = textfile > cat + gxmessage" >> ${lcMsgTrg}    # preset First Line
echo "# running fx(Sbr_Dump_IMG) showing IMAGE code" >> ${lcMsgTrg}
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "#============================" >> ${lcMsgTrg}
echo "# EmGr-Image-all ===${lcMsgSrc}===" >> ${lcMsgTrg}	
echo "# total 37 images: 17 KBytes " >> ${lcMsgTrg}
echo "# total load time: 0.7 second" >> ${lcMsgTrg}
echo "#============================" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# MGR Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MGR Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`"      >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}
cat /tmp/EmGa-Master-IMG.txt >> ${lcMsgTrg} 	### /tmp/box_help ###
gxmessage -title "IMG" -name "-IMG-" -font bold -bg lightyellow -fg darkblue -center  -file ${lcMsgTrg}
} #
export -f Sbr_Dump_IMG
#!
#!
#(: =====================================================
#(: fx(Sbr_Dump_UPL)
#(: called by:
#(: param:
#(: purpose: splash legal statement by PeeBee
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! #####################################################
function Sbr_Dump_UPL() {   #: ACTIVE
	n=0
# lcStrUpPop is picked up by /box_ok 
lcStrUpPop="
DistroName: {   ${DISTRO_NAME}   }
Compiled: ${gcSysDevDob}
===========================================
Legal notice subroutine developed by peebee
- https://sourceforge.net/u/peabee/profile/
This program is free software; you can redistribute it
and/or modify it
under the terms of the GNU General Public License
as published by the Free Software Foundation.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
"
    #! -D---
/usr/lib/gtkdialog/box_ok "=== Sys === Legal === Message box_ok" error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} #
export -f Sbr_Dump_UPL
#!
#!
#(: =====================================================
#(: fx(Sbr_Dump_Sys)
#(: called by:
#(: param:
#(: purpose: splash Dev Notes and test var
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! #####################################################
function Sbr_Dump_Sys() {   #: ACTIVE
	n=0
#! lcStrUpPop is picked up by /box_ok 
lcStrUpPop="fx(Sbr_Dump_Sys)
=======================================
DistroName: {   ${DISTRO_NAME}   }
DistroVersion: ${DISTRO_VERSION}
DistroKernel: ${gcMGRKernVer}
DateOfBirth: ${gcSysDevDob}
DateCompiled: "`date +%y%m%d-%H%M-%S-%a`"
=======================================
Save Bak File Name Mount=
"`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
Save Bak File Name Base Src=
"`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
=======================================
uname: 
`uname -a` 
kernal name: `uname -s` 
kernel release: `uname -r` 
kernel verson  `uname -v` 
system: machine: `uname -m` 
processor: `uname -p` 
platform: `uname -i` 
operating sys: `uname -o` 
gcSysDevDob = ${gcSysDevDob}
gcMgrDevId = ${gcMgrDevId}
gcSysDistroPuppySFS=${gcSysDistroPuppySFS}
gcPupSfsFile=${gcPupSfsFile}
gcMGRDistroVer=${gcMGRDistroVer}
gcMGRKernVer=${gcMGRKernVer}
  "
#! -D---
/usr/lib/gtkdialog/box_ok "=== Sys Notes and Var === Message box_ok" error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # 
export -f Sbr_Dump_Sys
#!
#! ### DUMPS ########################################################################
#! ### DUMPS ########################################################################
#! ### DUMPS ########################################################################
#!
        #!
        #! ###################################################
        function MGR_TouchLockFile() {   #: NOT USED
            n=0
        } #
        #!
        #!
        #! ###################################################
        function MGR_TouchCBXstatus() {   #: NOT USED
            n=0
        } #
        #!
        #!
        #! ###################################################
        function MGR_TouchE3Rstatus() {   #: NOT USED
            n=0
        } #
        #!
#!
#!
#(: ======================================================
#(: fx(Sbr_Sync)
#(: called by: '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' + splash
#(: param:
#(: purpose:  link into 'busybox' binary '/bin/busybox'
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################
function Sbr_Sync() {   #: ACTIVE
#!
n=0
#!  clear lingering colors
/bin/echo -en "\\033[0;39m"		>  /dev/console
/bin/echo -en "\\033[60G"    >/dev/console
/bin/echo -en "\\033[1;33m"    >/dev/console
/bin/echo -e  "\\033[0;39m"   >/dev/console
#! 
if [ ! $1  ] ; then   # display
Sbr_Splash_It "< SYNC >  flush buffers" "orange" "purple" "1"    #! -D---
fi # end: [ $1 = "1" ]
#!
	sync   	# # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'
#!
} #
export -f Sbr_Sync
#!
#!





#(: ======================================================
#(: fx(Sbr_S2F1)
#(: called by:    EXIT:guiSimReStart, ReBoot, ReQuit
#(: param:
#(: purpose:
#(:
#(: calls: 	nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw
#(: method: code calling handled internal,
#(:		could loop via param
#(:     could call to external S2F-1 multiple times.
#(: sends:
#(: rationale:
#(: note :
#(:     # ## purpose: one-shot "SMP"
#(:     # ## nice -19 puts SMP at top of priority stack
#(:
#! ######################################################
function Sbr_S2F1() {   #: ACTIVE Sbr_S2F1
    # called by EXIT:guiSimReStart, ReBoot, ReQuit
	n=0
llRun01=1
lcRunNum01="19"
lcRunNum="${lcRunNum01}"
### write "C" syntax here
Sbr_Splash_It " ...Save-2-Flash...Standard...
.             nice -n ${lcRunNum} snapmergepuppy" "yellow" "brown" "3"    #! -D---
#!
	nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
#!
#
} #
export -f Sbr_S2F1
#!




#!
#!
#(: ====================================================================
#(: fx(Sys_PupState)
#(: called by Main
#(: param
#(: purpose:
#(:    consolidation of PUPSTATE
#(:     control generation of local var
#(:     control configfile
#(: rationale:
#(: 	Puppy writes the "state" variables into /etc/rc.d/PUPSTATE .
#(: sends:
#(: note:
#(: 	dox for export
#(:	export      varname
#(: 	export -f	file or funxtion
#(: 	export -d 	directory
#(:
#! ############################################################
function Sys_PupState() {   #: ACTIVE
	n=0
    lcVerDtsTmp="${gcMGRDob}"
	#
		if [ $PUPMODE -eq 2 ] ; then
			#
			lcMsgStr="
		PUPMODE is 2
		MGR requires 'Frugal Install'
		PUPMODE must be '13'           "
			#
			xmessage -timeout 3 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
			exit
			#
		else
			lcMsgStr="PUPMODE=${PUPMODE}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
		fi
	#
    export gcMGRDob="${lcVerDtsTmp}"
	#
	export gcSysDistroLoc="${PDEV1}"	### from PUPSTATE, from rc.sysinit.
	export gcZeroRun="$0"
    # note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then
	echo "BK ==============================================="
	lcSaveBkFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	lcSaveBkFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "BK ==============================================="
    # note  fi
    export gcSysDistroVer="${PUPSFS}"
    export gcSysKernVer=${gcSysKernVer}
	export gcSysVer="${PUPSFS}"	#: ${gcSysDistroVer}
	export gcPupSfsFile="`echo "$PUPSFS" | cut -f 3 -d ','`"
    export gcMGRDistroVer="${PUPSFS}"
    export gcMGRKernVer="`uname -r`"
    export lcPupMode=${PUPMODE}
    export lcPupHome=${PUP_HOME}
    export lcPupSave=${PUPSAVE}
    export lcPupMode=${PUPMODE}
    export gcPupSubDir=${PSUBDIR}
    export gcPupSubDirDts="${gcPupSubDir}.BKP-`date +%y%m%d-%H%M-%S`"
    lcPupSaveNameRaw="PUPSAVE : ${lcPupSave}"
    lcPupSaveName="`echo $lcPupSave | cut -f 3 -d "/"`"
    lcPupSaveNameDts="NameDts = ${lcPupSaveName}.BKP-`date +%y%m%d-%H%M-%S`"
    lcPupSaveNameTrg="${lcPupSaveNameDts}.tar.gz"
    lcPupSaveNameSrc="${lcPupSaveName##*/}"
    lcPupSaveData="`echo $lcPupSave | cut -f 2 -d "/"`"
    lcPupSaveData="/initrd${lcPupHome}/${lcPupSaveData}/${lcPupSaveName}"
    lcPupDistroVer="${PUPSFS}"
    #! dev: "calc" if [ zero ]  for "${lcPupRamObjMsg}"
    if [ "${lcPupRamObjMsg}" ] ; then  # NOT ZERO   # do nothing
         n="0"
        #! MGR has been run/initialized the "first" time. So, Will Show "RamObjMsg" Col #1, bottom. 
        sleep .1    
    else    # so must generate . 
        #! ------------------------------------
        aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
        read -r b ccc <<< "$aa"	# --- saveDATA size calc
        #!
        lcPupRamObj="${b}"
        lcPupRamObjMsg=" DATA size > ${lcPupRamObj} MB "
        #!
        ### changed from leading grave [`] to enclosing double-apostrophe ["]
        ### FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '"
        ### export gcFreeRamNow="${FREERAM}"
        ### export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
    fi
    #!
	export gcPupSave="${PUPSAVE}"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
	export MGR_LockFile="/tmp/MGR_LockFile"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
    #!
	export gcPupSave="${PUPSAVE}"
	export MGR_ReStart_flg="/tmp/MGR_ReStart.flg"
    export lcPupHome lcPupSave  lcPupMode
    export lcPupSaveNameRaw lcPupSaveName lcPupSaveNameDts
    export lcPupSaveNameTrg lcPupSaveNameSrc gcPupSubDir
    #!
} #
export -f Sys_PupState
#!
#!
#!
#(: ===========================================================
#! Check-Box "CBX"  
#(: ===========================================================
#(: fx(Sbr_CBXAR3)       # NOT ACTIVE  Check-Box "CBX"  # External calls
#(: called by: if [ "${EXIT}" == "CBXARS" ] || [ "${EXIT}" == "CBXARB" ] || [ "${EXIT}" == "CBXARQ" ] ; then
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin: ( EXIT:'CBX APPLY+')
#(: begin: check for "APPLY Checks" command   Check-Box "CBX"  # External calls
#(: fx(FT_EXIT='APPLY_Checks_All_')
#(: fx(FT_EXIT='CBXARR')
#(: fx(FT_EXIT='CBXARS')
#(: fx(FT_EXIT='CBXARB')
#(: fx(FT_EXIT='CBXAPO')
#!
#! Fall-Thru Method 
#!
#! ############################################################
#!  via ( EXIT:CBX_APPLY+ )
#! if [ "$EXIT" = "CBXARS" ] ; then ; n=0 ; fi   # CBX ARS, ARB, ARQ ComboBox
#! function #! function [EXIT:CBXAR3() #! function [EXIT:CBXARB() #! function [EXIT:CBXARQ()
#! function Sbr_CBXAR3() {     # NOT ACTIVE  Line 6297
#!     n=0
#! if [ ${EXIT} == "CBXARS" ] || [ ${EXIT} == "CBXARB" ] || [ ${EXIT} == "CBXARQ" ] ; then
#!  		n=0     
    #(: Apply button NOT CONVERTED to funxtion format 
    #(: check for prior "APPLY Checks" commands
 	#(: function ft(FT_EXIT=') [ ${llCBXMASTER} = "1" ]
    #! NO FUNCTION HERE !
#! fi	# end: check for "APPLY Checks" command
#! } #! end: ( EXIT:'CBX_APPLY+')
#! export Sbr_CBXAR3
#! =====================================================================
#!
#!
#!
#! ===========================================================
#! begin :  Bak---   BakAll   BakOne
#! begin :  Bak---   BakAll   BakOne
#! begin :  Bak---   BakAll   BakOne
#! ===========================================================
#!
#(: ===========================================================
#(: ft(Sbr_BakOneArcDts)
#(: called by: Page "Main"
#(: param:
#(: purpose: Backup/Archive with DTS, only on /Dev /Edit sdir
#(:     only for "MGR" "Manager" Shell Script
#(: calls:
#(: method: 
#(: sends:
#(: rationale:
#(: note : BakAll for ONLY the curret 'MGR.sh' 
#(:    into the /Edit developmental subdir 
#! ##########################################################
function Sbr_BakOneArcDts() {       # Active  # cleanup the  fnSrc  and  fnTrg 
    #! [EXIT:guiMgrOneArcDts] [BakOne]
    Sbr_Splash_It "#(: note : BakAll for ONLY the curret 'MGR.sh' 
        #(: into the /Edit developmental subdir " "green" "yellow" "3"
    #!
    lcMgrFnPre="rc.z_"
	lcMgrFnVer="${gcMgrVer}"   # -7
	lcSysNameBase="MGR"         # ${gcSysNameBase}
    lcSysNameExt=".sh"
	lcMgrArcFnSrc="${lcMgrFnPre}${lcSysNameBase}${lcMgrFnVer}"
    #!   
    lcMgrRealFnSrc="`echo -n "$0" | cut -f 2 -d '/'`" 
    #~ grRealFnsrc="`echo -n "$0" | cut -f -1 -d '/'`"   #  "./MGR-7.sh"
    #! used only in Sbr_BakOneArcDts
    #! *********************************************************
    #!
    lcMgrArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"	# upupkk, upupbb, upupjj, upupmm+bw
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    #!
 #~ set -x
    #! ===============================================
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/${lcMgrArcFnSrc}.sh"
    lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}.sh"
    #! ===============================================
#~ set +x
#~ read
#~ exit
    #~ if [ -f ${lcFnSrc} ]  ;  then   # IF /Dev /Edit on authors' system   THEN  "OK". 
       #~ n=0
        #~ Sbr_Splash_It "---  ${lcFnSrc} --- " "black" "green" "3" #! -D---
    #~ fi
	#!
    if [ -f ${lcFnSrc} ]  ;  then   # IF /Dev /Edit on authors' system   THEN  "OK". 
        n=0
        Sbr_Splash_It "---  ${lcMgrFnPre}${lcSysNameBase}${lcMgrFnVer} --- Found & Copy--- " "black" "green" "2" #! -D---
        cp -f ${lcFnSrc} ${lcFnTrg}
     else           # else Not Dev Edit 
        n=0
        Sbr_Splash_It "---  ${lcFnSrc} --- Not Found --- " "yellow" "red" "7"    #! -D---
        Sbr_Splash_It "---  Not Dev EDIT version.  Must call BakAll  --- " "yellow" "red" "7"       #! -D---
   fi 
    #!
 } # 
export -f Sbr_BakOneArcDts
#!
#!
#(: =====================================================
#(: fx(Sbr_BakAllArcDts_One)
#(: called by: Sbr_BakAllArcDts
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:  Sbr_BakAllArcDts
#(: method: cp -v -u  
#(: sends:
#(: rationale:  replaces external rc.z_E3R.sh 
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#(: ft Sbr_AllArcDts     # called by: Sbr_BakAllArcDts   # [ BakAll ]
#! #####################################################
function Sbr_BakAllArcDts_One() {    #  ACTIVE #  # called by: Sbr_BakAllArcDts    for < BakAll-RS > < BakAll-RB >
    n=0 # [ BakAll ]
    #! param: SubDir ,  FileName 
	lcSysNameSD="${1}"
    lcSysFnPre="rc.z_"
	lcSysNameFN="${2}" 
    lcSysFnExt=".sh"
	#! lcSysArcFnSrc="${lcSysFnPre}${lcSysNameFN}"
	lcSysRealFnSrc="${lcSysFnPre}${lcSysNameFN}"
    #!  gcSysDevSubId  is  upupkk, upupbb, upupjj, upupmm+bw, else "..."
    lcSysArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"	
	lcSysArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    #! !!!
    #~ lcSysRealFnSrc=${lcSysArcFnSrc}    # !!! will be "rc.z_"  and "MGR" and  ".sh"
     #!           /mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-7.sh
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcSysNameSD}/${lcSysRealFnSrc}${lcSysFnExt}"
    #!
    #! target root/my-applications   RA     is  RootApplicatons
    lcFnTrgRA="/root/my-applications/${lcSysRealFnSrc}${lcSysFnExt}"
    #! target /mnt/home/MGR-All-Arc-Dts_   MH    is   MainHome 
    lcFnTrgMH="/mnt/home/MGR-All-Arc-Dts_/${lcSysRealFnSrc}_${lcSysArcSubName}${lcSysArcDtsNow}${lcSysFnExt}"
    #!
    echo "======================================="
    echo "=SRC=:${lcFnSrc}:"
    echo "=RA=:${lcFnTrgRA}:" 
    echo "=MH=:${lcFnTrgMH}:" 
    echo "======================================="
    #!
#~ read
    #! ===== Sbr_BakAllArcDts_One ==========================
    #!
    #~ Sbr_Splash_It "--- ${lcFnTrgRA} ---" "red" "black" ""       #! -D---   temp
    #! to do :  Check-if  and touch "RA" 
    #! "cp -v  "  is  faster  then  "cp -v -u   "   
	cp -v   ${lcFnSrc} ${lcFnTrgRA}
    #!
    #~ Sbr_Splash_It "--- ${lcFnTrgMH} ---" "orange" "black" ""       #! -D---   temp
    #! to do:   Check-if  and touch "MH" 
 #~ set -x
    #! "cp -v  "  is  faster  then  "cp -v -u   "   
	cp -v ${lcFnSrc} ${lcFnTrgMH}
    #!
#~ set +x
#~ read
#~ exit
    #~ echo "======================================="
    #!
} # 
export -f Sbr_BakAllArcDts_One # called by: Sbr_BakAllArcDts
#!
#!
#(: =====================================================
#(: fx(Sbr_BakAllArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:
#(: method: cp -f 
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#! =====================================
#(: ft Sbr_BakAllArcDts   to "/mnt/home/MGR-All-Arc-Dts_"
#(: ft Sbr_E3RAllArcDts   to "/root/my-applications"
#! =====================================
#!
#! #####################################################
function Sbr_BakAllArcDts() {    #  ACTIVE # should be called by < BakAll-RS > < BakAll-RB >
	n=0
    lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    lcTargetSDbase="/mnt/home"
    #~ Sbr_Splash_It "--- Sbr_Mgr_ALL_Arc_dts ---${lcTargetSD}" "yellow" "purple" "3"       #! -D---
    lcMgrArcDtsNow="`date +%y%m%d-%H%M-%S`"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    #! -D---  ### BackGround ###
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true -close never -text "\
.       Sbr...Bak_All_Dts  
. for ALL major 'EDIT' scripts  + DTS  
.
.
.
.
.
.Multi:  MGR, + CTX, + , et al, geany.config 
_______________________________________________________" &
	pidx=$!
	GTKPIDmgrarcdtsA=$!
    sleep 1
    #!     "BakAll-Arc-Dts_"     # used by Sbr_BakAllArcDts  and Sbr_BakAllArcDts
    #! not used consistently # todo: fix 
    #! 'touch' has required a literal 
    lcMgrAllArcDtsSN="MGR-All-Arc-Dts_"  # used by Sbr_BakOneArcDts  and Sbr_BakAllArcDts
    #!
    #! === Sbr_BakAllArcDts ===
    #! === IF NOT CHECK   /mnt/home/ flg ;  THEN  make basesubdir flg ===
    if [ ! -f /mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg.tst ]  ;  then # make one
        n=0
        Sbr_Splash_It "--- TOUCH ---${lcTargetSDbase}--- " "yellow" "red" "3"       #! -D---
        ### checkif and mkdir /mnt/home/MGR-flg/  via "touch" command
        ### 'touch' has required a literal 
        touch /mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg.tst # will create or update this Required SubDir
        lcFnFlg="/mnt/home/${lcMgrAllArcDtsSN}/MGR-ALL-Arc-Dts-flg.tst"
        echo 'MgrAllArcDts...flag...file' > ${lcFnFlg} # load filename into flag file.
    else
        n=0
        #~ Sbr_Splash_It "--- INIT --- Sbr_Mgr_ALL_Arc_dts --- " "yellow" "purple" "3"       #! -D---
   fi 
    #!
    lcFnTrg="/mnt/home/${lcMgrAllArcDtsSN}/rc.z_${lcMgrArcFnSrcFn}-${lcMgrArcSubName}-${lcMgrArcDtsNow}.sh"
    #!
    #! ===== Sbr_BakAllArcDts ==========================
    #! param:         SubDir , FileName ,   TargetSubdir 
    lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    #! Sbr_BakAllArcDts_One "MGR"    "MGR"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGR"    "MGR-6"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGR"    "MGR-7"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MCI"     "MCI"         "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "MGS"    "MGS"       "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "E3R"     "E3R"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTX"     "CTX"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTU"     "CTU"        "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTA"     "CTA"         "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-SL"    "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-SLX"  "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "CTB"     "CTB-5.2"      "/mnt/home/MGR-All-Arc-Dts_"
    Sbr_BakAllArcDts_One "PHB"     "PHB-deb"      "/mnt/home/MGR-All-Arc-Dts_"

    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`"
	lcMgrArcFnSrc="Geany.conf"
	lcFnSrc="/root/.config/geany/geany.conf"
	lcFnTrg="/mnt/home/${lcMgrAllArcDtsSN}/geany.conf-${lcMgrArcDtsNow}.sh"
	#!
	Sbr_Splash_It " ${lcFnTrg} " "yellow" "blue" ""     #! -D---
	#! from MGR(with suffixed surname)
	cp -f ${lcFnSrc} ${lcFnTrg}
	#! out to arc_MGR_dts_sh_
	#!
    #! gcSysSaveFn ################################# working Lxgo.jpg
	#!  #! must suffix the sys ID:  ff, b5b,jj, mm
	#!  lcMgrArcFnSrc="Lxgo_.jpg" => Lxgo_${gcSysSaveFn}".jpg 
    #!
	#!  lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcMgrArcFnSrc}"
    #!  lcFnTrg="/root/my-applications/${lcMgrArcFnsrc}"
    #!  Sbr_Splash_It ":${lcFnSrc}:" "orange" "purple" ""     #! -D---
    #!  #! Check Fn 
	#!  cp -v   ${lcFnSrc} ${lcFnTrg}
    #!  
	lcFnSrcBase="Lxgen_"
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcFnSrcBase}.jpg"
                        #~ lcFnSrc="/mnt/home/pup_UpupMM-SDA/${lcMgrArcFnSrc}${gcSysSaveFn}.jpg"        #! working distro 'home' 
    lcFnTrg="/root/my-applications/${lcFnSrcBase}.jpg"
                        #~ Sbr_Splash_It ":${lcFnSrc}:" "orange" "purple" ""     #! -D---
                        #! Check Fn 
	cp -f   ${lcFnSrc} ${lcFnTrg}
    #!
	lcFnSrcBase="Dxstro_"
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcFnSrcBase}.jpg"
                        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/d_Lxgo_/${lcMgrArcFnSrc}"
                        #~ lcFnSrc="/mnt/home/pup_UpupMM-SDA/${lcMgrArcFnSrc}"        #! working distro 'home' 
    lcFnTrg="/root/my-applications/${lcFnSrcBase}.jpg"
                        #~ lcFnTrg="/root/my-applications/${lcMgrArcFnsrc}"
                        #~ Sbr_Splash_It ":${lcFnSrc}:" "orange" "purple" ""     #! -D---
                        #! Check Fn 
	cp -f   ${lcFnSrc} ${lcFnTrg}
    #!
    #! =====================================================
    #! on return, then Sbr_Cbx_ReStart 1
    sleep .3
	kill ${GTKPIDmgrarcdtsA}    # main
    #!
    #! fi # end: guiMgrAllArcDts
} # end  
export -f Sbr_BakAllArcDts
#!
#!
#(: ===========================================================
#! end :  Bak---   BakAll   BakOne
#! end :  Bak---   BakAll   BakOne
#! end :  Bak---   BakAll   BakOne
#(: ===========================================================
#!
#!
#!
#(: =====================================================
#(: fx Sbr_Splash_Quit()
#(: called by: Main GUI "QUIT Program"
#(: param:
#(: purpose: "QUIT" program has banner.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! #####################################################
    function Sbr_Splash_Quit() { 
        #!
        echo
        echo
        echo "*======== MGR_Main-Quit ========*"  
        lcMsgStr0=$1
        #!
        echo
        echo
        lcMsgStr="SDT*===>>> ${lcMsgStr0} <<<===*SDT"    # text fg mrg
        Sbr_Str2DevTrm "$lcMsgStr" "7" "7" 
        Sbr_Str2DevTrm "$lcMsgStr" "6" "6" 
        Sbr_Str2DevTrm "$lcMsgStr" "5" "5" 
        Sbr_Str2DevTrm "$lcMsgStr" "4" "4" 
        Sbr_Str2DevTrm "$lcMsgStr" "3" "3" 
        Sbr_Str2DevTrm "$lcMsgStr" "2" "2" 
        Sbr_Str2DevTrm "$lcMsgStr" "1" "1" 
        Sbr_Str2DevTrm "$lcMsgStr" "2" "2" 
        Sbr_Str2DevTrm "$lcMsgStr" "3" "3" 
        Sbr_Str2DevTrm "$lcMsgStr" "4" "4" 
        Sbr_Str2DevTrm "$lcMsgStr" "5" "5" 
        Sbr_Str2DevTrm "$lcMsgStr" "6" "6" 
        Sbr_Str2DevTrm "$lcMsgStr" "7" "7" 
        echo 
        if [  -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
            n=0   
            echo    # ShowBanner
            lcMsgStr="===... clearing EmGrImg ...==="
            Sbr_Splash_Banner "$lcMsgStr" "32m" "35m" #& sleep .5
            Sbr_Splash_Banner "$lcMsgStr" "33m" "33m" #& sleep .5
            Sbr_Splash_Banner "$lcMsgStr" "35m" "35m" #& sleep .5
            echo
            rm ${gcEmGaImgFnTrgTxtMaster}
            sleep .1
        fi
         #! colorful rainbow splash for FALL-THRU trap for 'loose' code.  Str, Mgn, Color
         lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
        DISTRO_NAME_Z="Alpha:"$(echo $DISTRO_NAME | tr -dc 'A-z')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        DISTRO_NAME_Z="Numbers:"$(echo $DISTRO_NAME | tr -dc '0-9')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
} # end
export -f Sbr_Splash_Quit
#!
#!
#!
#! ######################################################
#! ######################################################
#! ######################################################
#!
#!  ## all function ( ) moved to top of code
#(: ## all GUI EXIT to "IF/fi" Selection aremoved to bottom of code, "Fall-Thru" method
#(: fx(name) is "function"  real.
#(: ft(name) is "fall-thru" [ if [] fi ]
#(:
#! ######################################################
#! ######################################################
#! ######################################################
#!
#!
#!
#!
#! ######################################################
#! ######################################################
#! ######   start  M.A.I.N.(.).  #####################################
#! ######################################################
#! ######################################################
#!
#!
#(: ======================================================
#(: fx(MGR_Main)    # main()
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#=== MAIN ====================================================

#! Terminal Screen Only.
lcMsgStr=". . . . . . .  `date +%y-%m-%d--%H%M-%S`. . . . . . . ."  
Sbr_Str2DevTrm "${lcMsgStr}" "1" "0" 
lcMsgStr="       :main === RUNNING === main:"
Sbr_Str2DevTrm "${lcMsgStr}" "2" "4" "1"
lcMsgStr="     ###  ${0} main() begins   ### "
Sbr_Str2DevTrm "${lcMsgStr}" "5" "0" "1"

# ----------------------------------------------------------
    #~ Sbr_Splash_Flip3 "  :main === RUNNING === main:   "
    #~ Sbr_Splash_It "#(: note : BakAll for ONLY the curret 'MGR.sh' 
        #~ #(: into the /Edit developmental subdir " "green" "yellow" "5"
#~ read
#~ exit

#! =======================================================================
#! =======================================================================
#! Check If for installed System Mode
#(: function if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then # frugal install
MODE="`grep PUPMODE /etc/rc.d/PUPSTATE | cut -f 2 -d "="`"
if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
    n=0
else 
    lcMsgStr="MODE is not FRUGAL mode '12' or '13' " 
    lcDialogColor="  -fg black -bg red  "
    Sbr_Splash_It " $lcMsgStr " "black" "red" "5"   #! -D---
    exit 1
fi
#: end: fi [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then

#!
touch /0-MGR-LogIn-DTS  # this call should be first  / in main ( ) 
#!
Sys_MgrSetVerDts # this call should be first  / in main ( ) 
#!
Sbr_CDW_Embedded_Dialog_Colors		# setup color constants
#!
Sbr_CDW_EGI_CheckIF		# Check Graphic Images 
#!
#! Sbr_Page_Init    # check / control the Paged GUI ,   was for V.6  page system.   V.7 has Indepdent Floating pages.
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ARB_init  : 
#(: purpose:config controls  menu.lst # during main run ( )
#(: method:
#(:    (1) read existing config for OS "Idd",
#(:    (2) install generic "full enough" "SHORT" MENU.lst
#(:         with default "0,1,2,3,4" matching config "Idd"
#!
Sbr_ARB_Init   # # # must be in main ( ) # read config init for "ARB" config
#!
lcMsgStr="=== PupState === " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
Sys_PupState   ### Gather the "state" variables from OS
#!
#!
#(: ======================================================
#(: begin LOCK-FILE
#(: Rationale: Lock-File "Soft" Version
#(: MGR is a Master Conrol program.
#(: MGR must have a 'LockFile' to control for "Run-Twice".
#(: ======================================================
#(: ft("LockFile") not written as a "funxtion" LockFile subroutine
#(: called by: main () as "in-line code" ,
#(:		so that "exit 0" is immediate, from top of "0" empty stack.
#(: param:
#(: purpose: provides a "Soft-Lock" method.  IF error, THEN continue .
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin lock-file section ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    #(: generate the name of the 'lock-file' in 'export' section.
    lcMsgStr="=== Lock-File === " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	#(: begin Lock-File Section =======================================
	#(: if previous lockfile is found, then throw a flag, cleanup, possibly exit '1'.
	#(: remember, we have written a "Soft-Lock"
	if [ -f ${MGR_LockFile} ]; then      #: this is Main () lockfile
		lcMsgStr=" Error: Soft LockFile Control
  		  !!! MGR_Running_Already !!!
	  	  ... (1) Quit MGR program
		  ... (2) Clear Running MGR window
		  ... (3) Re-Start MGR program
		  ... (4) however, always, MGR program will continue (Soft Lock)
		#(: IF Hard-Lock code, THEN  ${MGR_LockFile} can prevent re-running program.
		#(: IF Soft-Lock  code, THEN  program allows Continue through a non-fatal error. "
		xmessage  -name 'MGR_Soft-Lock-'  -timeout 1  -center   -fg yellow  -bg brown  "${lcMsgStr}"
		#(: Note on "Lock-File" method at end of source code.
		#(:
        #(: ideally,
        #(: user will clear lingering splash, manually,immediately, 
        #(: then restart program.
        #(:
	else
		lcMsgStr=" =  Config File Not Found  :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	fi
	#!
    #(: >>> begin set lock-file
	#(: Always !
    #(: so Otherwise , SET the lock-file, during this program run.
    touch "${MGR_LockFile}"   # Always ! for "Soft Lock" 
    #(: remove this lockfile at end of "QUIT", bottom of code.
    #!
    #(:
    #(: 
    #! #####################################################
    #(: This is the main () level, and 'exit' will drop out of prg.
    #(: but,
    #(: IF 'Lock-File found' 
    #(: THEN check is inside a subroutine,
    #(: THEREFORE 'exit 1' will only exit up to the previous stack level
    #(:    and will not exit program. 
    #(: THEREFORE must pass back a RETVAL flag of '1' to trigger another 'exit'
    #(: Note: This is a BASH system stack '0' concern,
    #(:		Controlled by manually placing 'Check Lock-Flag' at stack base level '0'.
    #(:
#(: end LOCK-FILE section
#! ######################################################
#!
#!
#!
#!=====================================================
#! ### begin Fall-Thru  "initz" 
#!=====================================================
#!
#! MGR_CBXstatus for status of ComboBox column "1"
if [ -f "${MGR_CBXstatus}" ]; then
    rm -f "${MGR_CBXstatus}"
    export lcCBXstatus="   ...Applied..."
else
    export lcCBXstatus="   ,,,,,,ready,,,,,,   "
fi
#
#
#
#! Test IF  "C3M CONFIG ARB" ,  under development
#! working C3M CONFIG ARB
if [ -f ${gcMgrArbCfgFn} ] ; then
    n=0
    gcMgrArbCfgFn="/root/my-applications/bin/C3M_Config_Arb"   # ASSIGNED fx(Sys_PupState)
    gcMGRConfigArbIdd=`cat ${gcMgrArbCfgFn}`   #  extract and export Idd
    echo "gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
    #! Sbr_Splash_It "${gcMgrArbCfgFn}:${gcMGRConfigArbIdd} Found---" "orange" "purple" "1"   #! -D---
else    #  NO Config value
    n=0
    touch ${gcMgrArbCfgFn}
	gcMGRConfigArbIdd="---"
    Sbr_Splash_It "${gcMgrArbCfgFn}:${gcMGRConfigArbIdd} Config File NOT Found---" "orange" "purple" "3"   #! -D---
fi	#
#! working C3M CONFIG ARB
	echo "ID:gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
	echo "FN:${gcMgrArbCfgFn}:"
#! exit
#!
#!=====================================================
#! ### end: Fall-Thru  "initz" 
#!=====================================================
#!
#!
#!
    #! ------------------------------------------------------------------------------
    #! ------------------------------------------------------------------
    #!=====================================================
    #(: fg(MGR_Master_GUI=)   #: A
    #(: called by: main program via fall-thru
    #(: param: only the Fall-Thru <ACTION> sub-name .
    #(: purpose: Master gtkdialog XML Menu structure.
    #(: calls:
    #(:    every thing via gui buttons to [ gui fall-thru "IF/ ft(name) /FI" ]
    #(:
    #(: method:
    #(:   (1) gui <action> "EXIT:ft(name)"
    #(:   (2) 'gui fall-thru to "IF/ ft(name) /FI" (at bottom of source code)
    #(:   (3) call with param to "subroutines"     (at top of source code) .
    #(:
    #(: sends: "EXIT" = choice
    #(: rationale:
    #(: note :
    #(: 	this width=1500 works good on UpupBB. Other Distro may require adjustment or default theme.
    #(:
    #(: note:
    #(: Standard Gui Button Call Method is TWO-STEP:
    #(:  (1) gui-Buttons "call" to a "Fall-Thru funxtion written as ft("IF/FI") (in lower part of source).
    #(:  (2) "IF/FI" funxtions then call regular subroutine funxtion() (at top of code).
    #(: EXAMPLE:  button "MntAll" is <action>'EXIT:MNT+'</action>
    #(: which will exit and fall-thru to "ft( 'EXIT:MNT+' )"
    #(: which will then call "funxtion Sys_MGR_pMount()" (written in top part of source).
    #(: This is the Standard Method written into this Main Gui,
    #(:   which allows parameters to be sent to complex sub-routines .
    #(:   which avoids lack of parameter passing in the gui Button gtkdialog process.
    #(:
#! begin: Test before possible ReStart so MGR is initialized without duplicate loading of images to /tmp .
if [ ! -f ${gcEmGaImgFnTrgTxtMaster} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
    lcMsgStr=">>>=== First Time Run ===<<<"     # && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    #! Sbr_Splash_It ${lcMsgStr} "orange" "purple" "1"    #! -D---
    # Given: not file, Then: touch one. 
    # Generate a ReStart Message for First Time Run .  ??? MGR_ReStart_flg ???
    touch ${gcEmGaImgFnTrgTxtMaster}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
else    # this is NOT a First-Time-Run, therefore Do Not ReStart.
    # simple background message
    lcMsgStr=">>>=== No ReStart Required ===<<<"
    #! Sbr_Splash_It ${lcMsgStr} "orange" "purple" "1"    #! -D---
    #! sleep .3
fi #
#! end: Test before possible ReStart so MGR is initialized without duplication of images to /tmp
###
### MGR 
###
########################################################
#!
#! problem: in some Puppy OS, 
#!    each time the Main Gui XML is run, 
#!    there is a delay ??? until Main Gui <button> are 'active'. 
#!          may be dependent on re-sizing each element of gui.
#! GTK is sensitive to the "theme"  and  "character size" . 
#!      cause: each OS install might have special display pixel count, font size, etc. 
#!      run gui test on each OS:__________Menu # __Distro Sub Name  
#!
#! GTK main XML gui is dependent on system screen-size, theme , font size. 
#!Generally, the"default" theme, and the "default" character size works,
########################################################
#! run gui test on each OS:__________Menu # __Distro Sub Name  
#! export lcGuiWidthRequest="1730"		# 2 "upupKK" Raleigh theme
#! export lcGuiWidthRequest="1730"		# 1 "upupBB" K:4 Rustic theme
#! export lcGuiWidthRequest="1380"		# 1 "upupBB" K:5 Rustic theme
#! export lcGuiWidthRequest="1730"		# 2 "upupJJ" ? theme
#! export lcGuiWidthRequest="1630"		# 3 "upupFF"
#! export lcGuiWidthRequest="1630"		# 4 "slacko14.2"  "S7" 
#! export lcGuiWidthRequest="1650"		# 5 "tahr"  tahr-6.0.6
#! export lcGuiWidthRequest="1700"		# 6 "xenial64"   "Xenial-64-750"  X64-750
#! export lcGuiWidthRequest="1870"		# 7 "upupii+d"   "UpupII" ImpishIndra
#! export lcGuiWidthRequest="1680"		# 8 "slacko1564.0 K:5"
#! export lcGuiWidthRequest="1870"		# 9 "slacko14.2"
#! export lcGuiWidthRequest="1880"		# 10 "xenial"
#! export lcGuiWidthRequest="1830"		# 11 "slacko14.2"	Slacko-LxSc-20.01
#! export lcGuiWidthRequest="1830"		# 12 "april" buggy  XXX
########################################################

#! ## top MAINGUI MGR R ### INIT ####################################
#! ${gcMgrDistroName}
export lcGuiSplT0="${gcMgrDevId}"
export lcGuiSplT1="<span color='"'$lcGuiColorred'"'><b>'"{${gcMgrDevId}"'}</b></span>"	# not used 
export lcGuiSplT2="<span color='"'$lcGuiColorgrn'"'><b>'"${gcSysSave}"'}</b></span>"	# not used 
export lcGuiSplT3="<span color='"'$lcGuiColorgrn'"'><b>'"${gcSysSaveFn}"'}</b></span>"	# not used 
export lcGuiSplT4="<span color='"'$lcGuiColorgrn'"'></b></span>"	# not used 

#! === Pre-Set =====================================================
export      lcGuiWidth="1450"
export      lcGuiHeight="900"
export      lcGuiTheme="default"
export      lcGuiChar="128"
export      lcGuiVert="1"  # control number of vertical bars / spacers / vseperators to match OS settings. 

#!
#! Test Setup, to control GTK XML screen size. 
#! Here, test methods to control different OS setups on screen size and font size and theme .
#! 
#! case ${gcSysDistroName} = based on /DISTRO_SPECS  "DISTRO_NAME" from Puppy Distro OS.
#! case GTK theme = "default" and CharSize = "128" 
#! # lcGuiVert="1" is "Visible"
#! # lcGuiVert="0" is "Not Visible"
#!  case "${gcSysDistroName}" in   
    #!  "BookwormPup32") lcGuiVert="0" ;; 
    #!  "KineticPup32")  lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "BionicPup32")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "JammyPup32")    lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "S15Pup64")      lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "ManticPup32")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="760" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "tahrpup")       lcGuiVert="1" & lcGuiWidth="1600" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "BookwormPup32") lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "xenialpup64")   lcGuiVert="1" & lcGuiWidth="1600" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  "XXXXXXXXXXX")   lcGuiVert="1" & lcGuiWidth="1650" & lcGuiHeight="750" & lcGuiTheme="default" & lcGuiChar="126";;
    #!  *)  lcGuiVert="1" ;;	       # "1" is Visible
#!  esac
#!
#! Note: all above were developed and tested in V.6, very wide main gui. Some Adjustments were needed. 
#! Note: all were tested again in V.7, compact/consolidated main gui, much better.  No Adjustments needed.
#!
#! Standard Splash routine:
#!  Sbr_Splash_It "${gcSysDistroName} :${lcGuiVert}:" "yellow" "purple" "3" 
#! ========================================================
#! Note: for V.6 wide main Gui.
#! <window dimentions depend on specific Puppy Distro, and user selected GTK Theme, and selected CharSize. 
#! These data are with theme="default", charsize="128", as supplied with each Puppy Distro OS "original". 
#! # for "default" theme, w="1650" is ok for some.
#! # for "default" theme, w="1380" is ok for some.
#!
#! # for most themes, w="1380" is appropriate. 
#! # for most Puppy Distro, theme="default" or "Polished Blue" works OK. 
#!
#!  K-K   = w="1650", h="750"  
#!  B5B   = w="1380", h="750"  
#!  J-J   = w="1650", h="750"  
#!  S1564 = w="1650", h="750"  
#!  uMM   = w="1600", h="750" 
#!  T-6   = w="1600", h="750"
#!  DBK   = w="1650", h="750"
#!  X64   = w="1400", h="750"
#!  B4B   = w="1380", h="750"  
#!
#! Note: Version_6.  all above were developed and tested in V.6, very wide main gui. Some Adjustments were needed. 
#! Note: Version_7.  all were tested again in V.7, compact/consolidated main gui, much better.  No Adjustments needed.
#!
#! <window dimensions must be hard-code.
#! width-request="1400" is important issue.
#! Theme and Alpha-Size and Screen-size are controlling variables. 
#! <window dimensions must be hard-code >.
#! below, the export var cannot be inserted in the <window line, it will not "expand" . 
#! export lcGuiWindowTitleMain='"${lcGuiWindowTitle}" 
    #! window-position="1" 
    #! width-request="1380"
    #! height-request="750" 
	#! space-expand="true" 
 	#! border-width="3"
	#! resizable="true" '
#!


### MGR
export lcBSS_TrgSubDir="TrgSubDir"			# File Select # Not Used 
export gcPBKP_BACKUP_PATH="BACKUP_PATH"		# File Select # Not Used 
#!
#! Primary "Window" title  # NOT ACTIVE
export lcGuiWindowTitle="_X_MGR_${gcSysDistroLoc}::${lcGuiSplT0}::${lcGuiSplT3}::${gcSysSave}::${gcSysIdFull}::${gcSysKernName}::${gcSysDevHw}::${gcSysDevDob}::${gcMgrVerExt}"
#! Secondary "Frame" title embeds OK.
export lcGuiFrameTitle="  ${gcMgrDevName}  "    # ACTIVE
# :${gcSysDistroLoc}_${gcMgrDistroName}_${gcSysIdFull}_v:${gcMgrVerExt}_${gcSysSaveFn}_Dob:${gcSysDevDob}-:"
#!

#! ## MAIN GUI MGR ### Dialog BEGIN ###############################
#! ## MAIN GUI MGR ### Dialog BEGIN ###############################
#! ## MAIN GUI MGR ### Dialog BEGIN ###############################

export  MGR_Master_GUI_Dialog='
<window  title="MGR_Master_GUI_Dialog"
    window-position="1" 
    width-request="900"
    height-request="750" 
	space-expand="true" 
 	border-width="3"
	resizable="true" 
>  

<vbox>
    <text visible="false" editable="false" use-markup="true" xalign=".5">
        <label>"'============================='"</label> </text>
    <button visible="1"   tooltip-text="top of System page__width-162-space>" <height-request="15">
		<label>"'!____!!!!!!!!_____!_________!_________!________!__'"</label>
			<action>lcEXIT:spacer</action> </button>

          <button  height-request="35"  size="large"  weight="bold" tooltip-text=" Manager ReStart
                       This is LINUX, 
                       this is a Free OPEN SOURCE SYSTEM, 
                       so READ the code and Learn !
                       #: Main Screen plus 
                                THREE NoteBook Pages , 
                                 ... independent and floating
                                Three Vertical pages 
                                One Logo page plus Distro page."
            has-focus="false"  xalign=".5" >
            <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>50</width><height>50</height>
                <label> "'${lcGuiFrameTitle}'"  </label> 
            <action>'EXIT:guiTopReStart'</action> </button>

	<vseparator height-request="3" > </vseparator>
 
   <hbox visible="1" homogenous="true">
            <hseparator width-request="40"></hseparator>
            <button   visible="1" has-focus="false" height-request="23"  xalign=".5"  
                tooltip-text="'-page1-top_P1_gc1_ctl_EXIT:guiP1_X_ctl_${gcP1_ctl}'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-MAIN-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenMain_window</action> <action function="'closewindow'">msg_DC_LxgenMain_window</action>
                           <action>'xEXIT:guiLxgenMain'</action>                    </button>
            <button   visible="1" has-focus="false" height-request="20"  xalign=".5"
                tooltip-text="'-page2-top_P2_gc2_ctl_EXIT:guiP2_X_ctl_${gcP2_ctl}'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-DOX-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenDox_window</action> <action function="'closewindow'">msg_DC_LxgenDox_window</action>
                           <action>'xEXIT:guiLxgenDox'</action>                     </button>
            <button   visible="1" has-focus="false" height-request="23"  xalign=".5" 
                tooltip-text="'-page3-top_P3_gc3_ctl_EXIT:guiP3_X_ctl_${gcP3_ctl}'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                <label>"'-{-UTIL-}-'"</label>
                    <action function="'launch'">msg_DC_LxgenUtil_window</action> <action function="'closewindow'">msg_DC_LxgenUtil_window</action>
                           <action>'xEXIT:guiLxgenUtil'</action>                     </button>
            <button   visible="0" has-focus="false" height-request="23"  xalign=".5" 
                tooltip-text="'-page0-top_P0_gc0_ctl_EXIT:guiP0_X_ctl_${gcP0_ctl}'" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>35</width><height>25</height>
                    <label>"'-{p0}-'"</label><action>'EXIT:guiP0_X_ctl'</action> </button>
             <hseparator width-request="220"></hseparator>
    </hbox>

    <vbox>
        <vseparator height-request="1"> </vseparator>
    </vbox>

<hbox>

<vbox>

        <vbox visible="false"> 
                <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page-1-page-MAIN---${gcP1_ctl}'" >
                    <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                    <label> "'---MAIN---'" </label> <action>'EXIT:guiC1_X_ctl'</action> </button>
       </vbox>

        <vbox visible="0"> 
                <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page2-page-DOX---${gcC2_ctl}'" >
                    <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                    <label> "'---DOX---'" </label><action>'lxEXIT:guiP2_X_ctl'</action> </button>
        </vbox>

        <vbox visible="0"> 
                    <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page3-page-UTIL---${gcP3_ctl}'" >
                        <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                        <label> "'---UTIL---'" </label><action>'lxEXIT:guiP3_X_ctl'</action> </button>
        </vbox>

</vbox>

<text visible="false" editable="false" use-markup="true" xalign=".5">
    <label>"'==============================================='" </label> </text>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>

<vbox>
<vbox>
<vseparator height-request="10" > </vseparator>
    <hbox>
        <button   visible="1" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'click_tooltip_top_pageVert'" >
            <input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>25</width><height>25</height>
            <action function="'launch'">msg_DC_VERT_window</action><action function="'closewindow'">msg_DC_VERT_window</action>
            <label> "'--V--'" </label><action>'lxEXIT:guiP4_X_ctl'</action> </button>
    </hbox>
</vbox>

<vseparator height-request="10" > </vseparator>

<vbox>
        <button visible="1"   tooltip-text="width-15-space>'========================================'" <height-request="1">
            <label>"'!_____!'"</label>    
            <action>'lxPAGE4:spacer'</action> </button>

<vseparator height-request="10" > </vseparator>

<button   visible="1" has-focus="true"  width-request="15" xalign="1"  tooltip-text="Vertical-SideBar-DO-NOT-ALTER-FORMAT_
EXIT:guiMB_Activates-Page-MB_:NOW:" >
<input file>
"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>25</width><height>25</height>
<label> 
"P
a
g
e
-
ABC"</label>
       <action function="'launch'">msg_DC_Quick_window</action> <action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiMB'</action> 
        </button>

<button   visible="1" has-focus="true"  width-request="15" xalign="1"  tooltip-text="Vertical-SideBar-DO-NOT-ALTER-FORMAT_
EXIT:guiMB_Activates-Page-Two_:NOW:" >
<input file>
"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>25</width><height>25</height>
<label> 
"P
a
g
e
-
DEF"</label>
       <action function="'launch'">msg_DC_Quick_window</action> <action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiMB'</action> 
        </button>

<button   visible="1" has-focus="true"  width-request="15" xalign="1"  tooltip-text="Vertical-SideBar-DO-NOT-ALTER-FORMAT_
EXIT:guiMB_Activates-Page-Two_:NOW:" >
<input file>
"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>25</width><height>25</height>
<label> 
"P
a
g
e
-
GHI"</label>
       <action function="'launch'">msg_DC_Quick_window</action> <action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'EXIT:guiMB'</action> 
        </button>
</vbox>
</vbox>

<text visible="false" editable="false" use-markup="true" xalign=".5">
    <label> "=============================================== " </label> </text>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
<button visible="0" tooltip-text="'Margin-C0vert'" > <label> "''" </label><action>lxAction:botC0</action> </button>
<button  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>

<vbox>
    <vbox>

                        <button   visible="0" has-focus="false" height-request="30"  xalign=".5"  tooltip-text="'top---page4-page-System---${gcP4_ctl}'" >
                            <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>15</height>
                            <label> "'---System---'" </label><action>'lxEXIT:guiP4_X_ctl'</action> </button>

        <button visible="1"   tooltip-text="width-80-space>'================================================'" <height-request="1">
			<label>"'!________!________!________!________!________!_________!_________!_________!xx'"</label>
            <action>lcEXIT:spacer</action> </button>

                        <button visible="0"has-focus="false" width-request="111" height-request="10"  xalign=".5"  tooltip-text=",,," >
                                <label> "'---*---'" </label><action>lxAction:C4-s</action></button>
                
            <text visible="1"   editable="false" use-markup="true" xalign=".5"> <label> 
            "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"MANAGER_7.1"'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
              </label> </text>

        <hbox homogenous="0">
              <hseparator width-request="90"></hseparator>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorred'"'  font-family='"'Comic'"' weight='"'bold'"' >  <b>'${DISTRO_NAME}_${gcSysDistroVersion}'</b> </span>" </label> </text>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorgrn'"'> <b>'K:${gcMGRKernVer}'</b> </span>" </label> </text>
            <text  visible="1" editable="false" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorblu'"'> <b>'${lcPupRamObjMsg}'</b> </span>" </label></text>
               <hseparator width-request="90"></hseparator>
        </hbox>
      
        <hbox homogeneous="true">
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redyel.svg" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redgrn.svg" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
           <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="P4-/tmp/EmGr-img-apple-redblu.svg" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>lxAction:P4bar</action></button>
        </hbox>
    </vbox>

	<vseparator  visible="1" height-request="0"> </vseparator>
    <vbox homogeneous="'0'">

            <button  visible="1"  has-focus="false" width-request="55"  height-request="1"  xalign=".5"  tooltip-text="Top-Sp" >
                <label> "'---*---'" </label> <action>lxAction:Top-C4pre</action></button>

                <hbox homogeneous="0">
                <hseparator width-request="110"></hseparator>
                
                  <button visible="1"    tooltip-text="'xEXIT:guiMandelbrot'   "   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'_Select_'"</label>	
                        <action>'xEXIT:guiMandelbrot'</action>                    </button>

                    <button  tooltip-text="'#1:xEXIT:guiLxgenMain':only-launch, only PageMain"   has-focus="false">
                            <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>55</width><height>45</height>
                            <label>"'Main'"</label>	
                    <action function="'launch'">msg_DC_LxgenMain_window</action> <action function="'closewindow'">msg_DC_LxgenMain_window</action>
                           <action>'xEXIT:guiLxgenMain'</action>                    </button>

                    <button  tooltip-text="'#2:xEXIT:guiLxgenDox':only-launch, only PageDOX"   has-focus="false">
                            <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>55</width><height>45</height>
                            <label>"'Dox'"</label>	
                    <action function="'launch'">msg_DC_LxgenDox_window</action> <action function="'closewindow'">msg_DC_LxgenDox_window</action>
                           <action>'xEXIT:guiLxgenDox'</action>                     </button>
                    <button  tooltip-text="'#3:xEXIT:guiLxgenUtil':only-launch, only PageUtil"   has-focus="false">
                            <input file>"'/root/my-applications/Lxgen_.jpg'"</input><width>55</width><height>45</height>
                            <label>"'Util'"</label>	
                    <action function="'launch'">msg_DC_LxgenUtil_window</action> <action function="'closewindow'">msg_DC_LxgenUtil_window</action>
                           <action>'xEXIT:guiLxgenUtil'</action>                     </button>

                  <button visible="1" tooltip-text="'xEXIT:guiAudio_for_StartUpSound+LogInDts'"   has-focus="false">
                        <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                        <label>"'_Page_' "</label>	
                        <action>'xEXIT:guiAudio'</action>                     </button>

                <hseparator width-request="160"></hseparator>
                </hbox>

           <button  visible="1"  has-focus="false" width-request="55"  height-request="7"  xalign=".5"  tooltip-text="Top-Sp" >
                <label> "'---*---'" </label> <action>lxAction:Top-Spre</action></button>

            <hbox homogeneous="false">
                <hseparator width-request="160"></hseparator>
                <text  visible="'1'" editable="false" use-markup="true" xalign="0.5">
                   <label> "<span color='"'$lcGuiColorblu'"'><b>{'_PreSet__1-of-16_PuppyOS__menu.lst_'}</b></span>"</label> </text>
                <hseparator width-request="160"></hseparator>
            </hbox>

    </vbox>

    <vbox>
        <hbox homogeneous="1">
            <hseparator width-request="220"></hseparator>
            <button has-focus="false"  xalign=".5"  
                tooltip-text="''">
                <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label>"'Build-Generic-Menu.lst'"</label> 
                 <action>'EXIT:ARB_ORG'</action> </button>
            <hseparator width-request="270"></hseparator>
        </hbox>
    </vbox>
		<vseparator  visible="1" height-request="5"> </vseparator>

    <vbox>
        <hbox homogeneous="0">
           <hseparator  width-request="140"></hseparator>
           <button visible="true" has-focus="false" height-request="20"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <text editable="false" use-markup="true" xalign="0.5">
                <label> "<span color='"'$lcGuiColorgrn'"'><b>{'_Write_New_Menu.lst_for_ReBoot_'}</b></span>"</label> </text>
           <button visible="true" has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <hseparator   width-request="160"></hseparator>
        </hbox>
        <hbox>
            <hseparator width-request="10"></hseparator>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_K-K_'" tooltip-text="'[]_KineticKudu-Pup_EXIT:ARB_K-K'  
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_KK'</action>  </button>
            <button label="'{-B5B-}'"   tooltip-text="'[]_BionicBeaver:K5:_EXIT:ARB_B5B'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_B5B'</action>  </button>
            <button label="'_J-J_'"    tooltip-text="'[]_JammyJellyfish_EXIT:ARB_J-J'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_JJ'</action>  </button>
            <button label="'_S1564_'"  tooltip-text="'[]_S15pupSlacko64-K:5_FF_EXIT:ARB_S1564'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_S1564'</action>  </button>
            <button label="'{-uMM-}'"    tooltip-text="'[]_UpupMM_Mantic-Minotaur:_EXIT:ARB_MM'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_UMM'</action>  </button>
            <button label="'{-T-6-}'"     tooltip-text="'[]_Tahr_EXIT:ARB_T-6'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_T6'</action>  </button>
            <button label="'_X64_'"    tooltip-text="'[]_UpupXenial64_FF_EXIT:ARB_X64'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_X64'</action>  </button>
            <button label="'_DBW_'"   tooltip-text="'[]_DpupBW_BookWormDebian:_EXIT:ARB_BW'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_DBW'</action>  </button>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'right-smo'</action> </button>
            <hseparator width-request="40"></hseparator>
        </hbox>
        <hbox homogeneous="false">
            <hseparator width-request="10"></hseparator>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_S-7_'"    tooltip-text="'[]_Slacko7-Alternate_EXIT:ARB_S-7'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_S7'</action>  </button>
            <button label="'_uIMP_'"    tooltip-text="'[]_UpupIMP_EXIT:ARB_UIMP'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_UIMP'</action>  </button>
             <button label="'_S64_'"    tooltip-text="'[]_Slack64-Kern:4_EXIT:ARB_S64'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_S64'</action>  </button>
            <button label="'_F-F_'"    tooltip-text="'[]_FocalFossa_EXIT:ARB_F-F'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_FF'</action>  </button>
            <button label="'_X708_'"   tooltip-text="'[]_Xenial708_EXIT:ARB_X708'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_X708'</action>  </button>
            <button label="'_SLXSC_'"  tooltip-text="'[]_Slacko-LxSc_EXIT:ARB_SLXSC'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_SLXSC'</action>  </button>
            <button label="'_Q-7_'" tooltip-text="'[]_Quirky-7-April_EXIT:ARB_Q7'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_Q7'</action>  </button>
            <button label="'_B4B_'"   tooltip-text="'[]_BionicBeaver:K4:_EXIT:ARB_B4B'   
                Build Menu.lst + ReStart  " has-focus="false" height-request="25"> 
                    <action>'EXIT:ARB_B4B'</action>  </button>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>""</label><action>'right-smo'</action> </button>
                <hseparator width-request="60"></hseparator>
        </hbox>
    </vbox>    

    <hbox homogeneous="true">
        <hseparator width-request="170"></hseparator>
        <button  visible="1" tooltip-text="'!!!---Change-Menu-then-call-this---!!!' 
        EXIT:guiBakAllCRB " >
                <input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><width>23</width><height>23</height>
                <label>'_ReBoot_Selected_Menu_'</label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiBakAllCRB'</action>            </button>
       <hseparator width-request="170"></hseparator>
    </hbox>
    
        <vseparator  visible="'${lcGuiVert}'" height-request="3" > </vseparator>
        <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4</action></button>
        <vseparator  visible="'${lcGuiVert}'" height-request="5" > </vseparator>

        <hbox homogeneous="true">
            <button label="'===-BakAll-Tool-Tip-==='"
            visible="true" 	has-focus="false" >
            <action function="'launch'">msg_DC_BakAll_window</action><action function="'closewindow'">msg_DC_BakAll_window</action>
            </button>
        </hbox>

    <vbox>
		<hbox homogeneous="false">
            <hseparator width-request="15"></hseparator>

<button  visible="1" tooltip-text="'!---EXIT:guiBakAllRS---!'
	BakAll to 'RA'+'MH' then 'ReSTART' program {!}" >
			<input file>"/tmp/EmGr-img-Check-redred.svg"</input><width>23</width><height>23</height>
			<label>'BakAll-RS'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiBakAllRS'</action>
			</button>
            <hseparator width-request="15"></hseparator>

<button  visible="1" tooltip-text="'!!---EXIT:guiBakAllRB---!!'
	BakAll to 'RA'+'MH' then 'ReBOOT' system {!}" >
			<input file>"/tmp/EmGr-img-Check-grnXgrn.svg"</input><width>23</width><height>23</height>
			<label>'BakAll-RB'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiBakAllRB'</action>
			</button>
            <hseparator width-request="15"></hseparator>

<button visible="1"  tooltip-text="'!!!---EXIT:guiBakAllCRB---!!!'
    BakAll_CTA_'ReBoot' system">
			<input file>"/tmp/EmGr-img-Check-bluXred.svg"</input><width>23</width><height>23</height>
			<label>'{_BakAll-C-RB_}'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
				<action>'EXIT:guiBakAllCRB'</action>
            </button>
            <hseparator width-request="15"></hseparator>

<button visible="1"  tooltip-text="'!!!!---EXIT:guiBakAllCRQ---!!!!'
    BakAll_CTA_'PowerOff' system">
			<input file>"/tmp/EmGr-img-Check-blublu.svg"</input><width>23</width><height>23</height>
			<label>'BakAll-C-RQ'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
				<action>'EXIT:guiBakAllCRQ'</action>
            </button>

            <hseparator width-request="15"></hseparator>
		</hbox>
    </vbox>
    
    <hbox homogeneous="true">
        <vbox>
            <vseparator  visible="'${lcGuiVert}'" height-request="7"></vseparator>

            <button  visible="'${lcGuiVert}'" has-focus="false" height-request="1"  xalign=".5"   tooltip-text="before-QUIT" >
                    <label> "''" </label> <action>lxAction:Before-Quit</action></button>

            <hbox homogeneous="true">
                <button tooltip-text="'Double-Click-Program_Quit_'" >
                    <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>33</width>  <height>33</height>
                    <label>'!!!_QUIT-MGR_PROGRAM_!!!'</label> 
                        <action function="'launch'">msg_DC_Quick_window</action>
                        <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiMainQUIT'</action>
                </button>
            </hbox>
            <vseparator height-request="1" > </vseparator>
        </vbox>
    </hbox>
    <vseparator  visible="'${lcGuiVert}'" height-request="1" > </vseparator>

    <vbox> 
 
         <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "..." </label><action>lxAction:C4</action></button>

    </vbox>

        <hbox homogeneous="false">
           <hseparator width-request="30"></hseparator>
     
            <button tooltip-text="Simple_guiSimReStart">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_ReStart__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReStart'</action>	</button>
            <button tooltip-text="Simple_guiSimReBoot">
                <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_ReBoot__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReBoot'</action> </button>
            <button tooltip-text="Simple_guiSimPowerOff">
                <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "25" </height>
                <label>'_PwrOff__'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimPowerOff'</action> </button>
            <hseparator width-request="180"></hseparator>
        </hbox>
        <button  visible="'${lcGuiVert}'" has-focus="false" height-request="7"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "..." </label><action>lxAction:C4</action></button>

    <text  visible="'1'" visible="false" editable="false" use-markup="true" xalign=".5">
        <label> "=============================================== " </label> </text>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" > <label> "''" </label><action>lxAction:botC0</action> </button>
    <button  visible="'0'"  tooltip-text="'Margin-C0vert'" width-request="3"> <action>lxAction:mC0</action> </button>
	</vbox>

    </hbox>
</vbox>
</window>'
#!
#! ## MAIN GUI MGR ### Dialog END ###############################
#! ## MAIN GUI MGR ### Dialog END ###############################
#! ## MAIN GUI MGR ### Dialog END ###############################

#!
lcEmGrGuiFnTrg="/tmp/EmGa-Master-GUI.txt"   # BUILD master GUI IMG.txt, for "DUMP" .
echo "${MGR_Master_GUI_Dialog}" >> ${lcEmGrGuiFnTrg}
echo "### end of Graphical User Interface Code ############ " >> ${lcEmGrGuiFnTrg}   # title for "Dump" to screen
#

#!  example of "DC" "Double-Click" method, by <action on two <windows . 
#!                  <action function="'launch'">msg_DC_Quick_window</action>
#!                  <action function="'closewindow'">msg_DC_Quick_window</action>

          #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            #(: fg(MGR_Main_Gui=eval)
            #(: called by: SYS
            #(: param: MGR Gui  has been exported
            #(: purpose: gtkdialog will evaluate the "MGR_Master_GUI"
            #(: calls:
            #(: method:
            #(:    'eval'  Execute arguments as a shell command, "Fall-Thru" method.
            #(: sends:
            #(: rationale:
            #(: note :
            #(:    ??? same as eval "`gtkdialog --center -p Box_MessageXML`"
            #(:    gtkdialog --center  -p MGR_Master_GUI`" ;;
            #(:
            #
            #! case $EXIT in
                #! "DUMP" ) echo "$MGR_Master_GUI" ;;
                #! *) eval "`gtkdialog --center -p MGR_Master_GUI`" ;;
            #! esac

 eval "`gtkdialog --center -p MGR_Master_GUI_Dialog`" 

#(: end: Main Gui eval

#! ## bot MAINGUI MGR ### INIT ####################################

lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------  Main Gui   --- ${EXIT} ----------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
#!
#! ## bot MAINGUI MGR ### DIALOG ####################################
#!
#!
#!
#!
#(: begin: Fall-Thru code
#! Fall-Thru Method 
#!
#!
#! Begin: Fall-Thru Method "HEADER" ===========================
#!
#! Each Fall-Thru Block has this "header" with label "#! ft(EXIT:"
#!    which makes it easier to "Find" via  Ctl-C , Ctl-F, Ctl-V , In_Document 
#!    to show a List of these headers. 
#! 
#! ft(EXIT: 
#!
#! End: Fall-Thru Method "HEADER"  ===========================
#!
#! begin: regular "function"
#! Each "if" function has a header that begins with label like this:
#!      function EXIT:??????????  
#! to provice "find" link into MainGui XML 
#!
#! begin: regular "function"
#! Each regular "function" has a header that begins with label like this:
#!      function Sys_??????????() {  
#!          n="0"
#!      } end 
#! end: regular "function"
#!
#!
#!
#!
#!
#!
#!
#!
#! ###########################################################
#! begin: # Page MAIN 
#! ###########################################################
#!
#!
#! Fall-Thru Method  ===> Local Fall Thru to Terminating Routines:
#!
#!
#(: ========================================================
#(: ft("EXIT":Check-Box)   # Active   Check-Box "CBX"  # External calls
#(: called by: gui CBX
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
### begin: Check-Box : EXIT:CB --->   EXIT:CBARS+ EXIT:CBARB+ EXIT:CBAPO+
### Design Method : "FALL-THRU"
###
### "ALL" Check-Box will trigger running "ALL", regardless if 'checked' or not .
### "CBXAPPLY+" triggers running all "checked" selections .
###
#!
#! Fall-Thru Method  ===> Local Fall Thru to Terminating Routines:
#!
#(: ========================================================
#(: ft(EXIT:Check-Box)       # Active   Check-Box "CBX"  # External calls
#(: called by: gui CBX
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! begin: ( EXIT:'CBX APPLY+')
#(: begin: check for "APPLY Checks" command   Ch3ck-Box "CBX"  # External calls
#(: fx(FT_EXIT='APPLY_Checks_All_')
#(: fx(FT_EXIT='CBXARR')
#(: fx(FT_EXIT='CBXARS')
#(: fx(FT_EXIT='CBXARB')
#(: fx(FT_EXIT='CBXAPO')
#!
#!
#! Fall-Thru Method  ===> Local Fall Thru to Terminating Routines:
#!
#!
#! function EXIT:CBXARS
#! function EXIT:CBXARB
#! function EXIT:CBXARQ
#! ======================================================
#! if [ "$EXIT" = "CBXARS" ] ; then ; n=0 ; fi   # CBX ARS, ARB, ARQ ComboBox
if [ ${EXIT} == "CBXARS" ] || [ ${EXIT} == "CBXARB" ] || [ ${EXIT} == "CBXARQ" ] ; then
#! function Sbr_CBXAR3() 
#!
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#! Has Not Been Converted to function Sbr_CBXAR3 () format 
#!
#(: Apply button  COMBO BOX 
#(: check for prior "APPLY Checks" commands
#!
 	#(: function  IF  CBXC3C  CBXS2F  CBXCTU
    #! ======================================================
	if  [ ${CBXC3C} = "true" ] || [ ${CBXS2F} = "true" ] || [ ${CBXCTA} = "true" ] ; then
		n=0
		CBXALL=""
		#~ llCBMASTER="1"  # Not Used
		lcMsgStr=">>> if CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		Sbr_KillProc  "CBXALL CBXC3C CBXS2F CBXCTA" # check for KillProc flag up.
		#!
		#! 		#!		#!		#!
		#(: ##=== CheckBox === C3C === Clear 3 Cache
        #! purpose: Clear Large Cache data which lingers 
        #(: function IF CBXC3C
		#!  ========================================
		if [ ${CBXC3C} = "true" ] ; then
			lcMsgStr="=== C3C" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0
			CBXC3C=""
			###	
			echo "=== Begin === C3C ========================"
			### Clear 3 Cache, Fast Direct Calls
            Sbr_Splash_It "=Clear 3 Cache=" "orange" "purple" "2"        #! -D---
			#!
            #! Literal Spell-Out locations
            #! purpose: Clear Large Cache data which lingers 
            #!
			#!==================================================
			### Cache ### FireFox 
			lcFileSrc="/root/.cache/mozilla/firefox/"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/mesa_shader_cache/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound-cache*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==============================================
			### Cache ### LIGHT
			lcFileSrc="/root/.light/light/Light.default"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==============================================
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/cache/cups".
			lcFileSrc="/var/cache/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp/*".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/*".
			lcFileSrc="/var/spool/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
            Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
			sleep .1
			rm -fr  $lcFileSrc
			#!
			echo "=== DONE === C3C ===================="
            #~ kill ${GtkPid_CBX_C3C}  # now 
			sleep 1
		fi
		#!
		#!  Contue Fall Thru
		#!
		#(: ##=== CheckBox === S2F	=== no need to also call SMP inside of CTU
        #(: function  EXIT:CBXS2F
		#!  ##################################################
		if [ ${CBXS2F} = "true" ] ; then
			lcMsgStr="=== S2F" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0    
            Sbr_Splash_It "Save to Flash" "yellow" "brown" "1"       #! -D---
			#
			CBXS2F=""
			lcFnRun="${gcRootApps}rc.z_S2F.sh" # S2F
			if [ -f "$lcFnRun" ] ; then		# S2F
				[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
			else
				n=0
			    #! -D---
				/usr/lib/gtkdialog/box_ok "ERROR" error " Dependencie File Not Found: ${lcFnRun}"
			fi
		fi
		#!
		#!  Continue Fall Thru
		#!
		#(: ##=== CheckBox === CTU-NSMP   # No SMP   ### handle everything in this block ###
		#(: function EXIT:CBXCTU
		#! ##################################################
		if [ ${CBXCTA} = "true" ] ; then
			n=0
		    #! -D---
			/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text ".    Cold Tar Backup  !!!" &
				RETVAL=$?
				GtkPid_CBX_CTB=$!	# capture PID
				sleep 1
            lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit
            if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List, 
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                lcFnRun="${gcRootApps}rc.z_CTA.sh"  
                if [ -f "$lcFnRun" ] ; then		# CTA
                    [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
                else
                    /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
                fi
            fi
        fi
		touch "${MGR_CBXstatus}"
		lcMsgStr="<<< if any Check-Box" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
        kill ${GtkPid_CBX_CTB}		# now
		#!  Contue Fall Thru
		#!
		#================================================
		#(: fx(FT_EXIT='CBX APPLY')
		lcMsgStr=">>> if any CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		#!
		#! ##################################################
        #! function EXIT:CBXARS
        if [ "$EXIT" = "CBXARS" ] ; then   # CBX ReStart
			n=0
			CBXARS=""
			Sbr_ClearFlagsSystem 0   # CBXARS
			Sbr_Cbx_ReStart 1   # no wait # CBXARS
		fi
		#! #############################################
        #! function EXIT:CBXARB
        if [ "$EXIT" = "CBXARB" ] ; then   # CBX ReBoot
			n=0
			CBXARB=""
			Sbr_ClearFlagsSystem 0   # CBXARB
			Sbr_Cbx_ReBoot
		fi
		#! #############################################
        #! function EXIT:CBXARQ
		if [ "$EXIT" = "CBXARQ" ] ; then   # CBX ReQuit
			n=0
			CBXARQ=""
			Sbr_ClearFlagsSystem ""   # CBXARQ
			Sbr_Cbx_ReQuit  1 # EXIT:CBXARQ
		fi
		#~ llCBMASTER="0"  # Not Used 
		lcMsgStr="<<< if any Apply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
    else
    	### end: Activation buttons
        #~ lcMsgStr="=== Bottom of Apply" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
        Sbr_Splash_It "\
        '===      WARNING         ==='
        '===  Bottom of CBX APPLY ==='
        '=== No-Checkbox-Selected ==='" "yellow" "blue" "3" && 	kill ${GTKPIDShowSplash}
        Sbr_Cbx_ReStart 1     # no wait # CBX APPLY+ in case something fails
	fi	#
fi	# end: check for "APPLY Checks" command
#! end: ( EXIT:'CBX APPLY+')




#(: ========================================================
#(: ft(EXIT:EXIT:guiC_X_ctl ) (EXIT:guiC_X_ctl)      # Active  ? Page 1 
#(: called by: gui Page 1 Control , top of page 1
#(: param:
#(: purpose: Page Ctrl to "open" / "close" windows by controlling <vbox visible="${gcP1_ctl}"> 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
        #(: Fall-Thru Page Control  MGR V6
        #(: function EXIT:guiP1_X_ctl   
        #(: function EXIT:guiP2_X_ctl   
        #(: function EXIT:guiP3_X_ctl   
        #(: function EXIT:guiP0_X_ctl  
		#! ##################################################
        #~ if [ "$EXIT" = "guiP1_X_ctl" ] || [ "$EXIT" = "guiP2_X_ctl" ] || [ "$EXIT" = "guiP3_X_ctl" ] || [ "$EXIT" = "guiP4_X_ctl" ] || [ "$EXIT" = "guiP0_X_ctl" ]   ; then  
            #~ #! Sbr_Splash_It "Fall Thru guiP" "yellow" "green" "1"
			#~ n=0
            #~ Sbr_Page_Ctl    # handles above "IF" functions 
        #~ fi
#(: end: function Sbr_Page_Ctl()


#!
#!
#! Below: Has Not Been Converted to function Sbr_CBXAR3 () format 
#!
#(: top: check for "APPLY Checks" command   Ch3ck-Box "CBX"  # External calls
#(: function EXIT:APPLY_Checks_All
#(: function EXIT:CBXARR
#(: function EXIT:CBXARS
#(: function EXIT:CBXARB
#(: function EXIT:CBXAPO
#(: function EXIT: CBX APPLY+
#(: end:
#!
#!
#!
#! Fall-Thru Method  ===> Local Fall Thru to Terminating Routines:
#!
#!
#(: ========================================================
#(: ft(EXIT:guiBakAllAR...)        #	Active 
#(: ft( [ "$EXIT" = "guiBakAllRS" ] ||  [ "$EXIT" = "guiBakAllRB" ] ||  [ "$EXIT" = "guiBakAllCRB" || [ "$EXIT" = "guiBakAllCRQ" ] )
#(: called by: Main GUI Fall-Thru: EXIT:guiBakAllRS  EXIT:guiBakAllRB  EXIT:guiBakAllCRB EXIT:guiBakAllCRQ
#(:
#(: calls: E3R_Main_Int_Long_List, "CTA" , Sys_MGR_pMount_All, E3R_ScanList, Sys_MGR_uMount_All
#(:
#(: param:
#(: purpose: control for "E3R"
#(: calls: MNT internal code. pulled from rc.z_E3R.sh
#(: method:
#(: sends:
#(: rationale:  E3R copy Edit Source to /root/applications/bin ( = saveDATA )
#(:             Pmnt, CTA, Umnt,
#(: note :
#(: /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MNT/rc.z_MNT.sh
#(: /root/Startup/my_mount_drv.sh
#(: /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_pMNT/rc.z_pMNT.sh
#(: /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_uMNT/rc.z_uMNT.sh
#(:
#(: export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/"
#(: export gcRootAppsBin="/root/my-applications/bin/"
#(: export gcRootApps="/root/my-applications/"
#(: ==================================================
#! ##################################################
#! function: from E3R-CTALL : RS, RB, RQ
#! function if [ "$EXIT" = "guiBakAll  ...     # All BakAll??? Internal pass thru here
#! function if [EXIT:guiBakAll()    if [ "$EXIT" =
#! gui Exits with guiBakAllRS or guiBakAllRB or guiBakAllCRB or guiBakAllCRQ
#!
#!
#! =====================================================================
#! begin: if [ "$EXIT" = "guiBakAllRS" || "guiBakAllRB" || "guiBakAllCRB || "guiBakAllCRQ" 
#! =====================================================================
#! all guiBakAll? enter here to perform main functions.  
#!    final functions RS / RB / RQ are captured after fall-thru. 
#! 
#! function EXIT:guiBakAllRS        Sbr_BakAllArcDts        # Quick Short version   
#! function EXIT:guiBakAllRB        Sbr_BakAllArcDts        # Quick Short version   
#! function EXIT:guiBakAllCRB       Sbr_BakAllArcDts         # Quick Short Version  
#! function EXIT:guiBakAllCRQ       Sbr_BakAllArcDts         # Quick Short Version  
#!
#!  if  guiBakAllRS  guiBakAllRB   guiBakAllRQ"
if [ "$EXIT" = "guiBakAllRS" ] || [ "$EXIT" = "guiBakAllRB" ] || [ "$EXIT" = "guiBakAllCRB" ] || [ "$EXIT" = "guiBakAllCRQ" ] ; then
    n=0
	lcMsgStr="guiBakAllRS || guiBakAllRB || guiBakAllCRB ] || guiBakAllCRQ ]"
    #~ Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
    Sbr_SDA_Only 1
	Sbr_KillProc "${EXIT}"
    export gcE3Rcontrol=${EXIT}	# maintain this value,might restore 
    #! 
fi  # 
#!
#!  Continue "Fall-Thru"  for    guiBakAllRS  guiBakAllRB   guiBakAllRQ
#!
#!### E3R ReStart #######################################################
#! gui BakAll RS
#(: function EXIT:guiBakAllRS              # BakAll ReStart
if [ "$EXIT" = "guiBakAllRS" ] ; then   # BakAll ReStart 
    n=0
	lcMsgStr="! BakAll + ReSTART Program !"
    #~ Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
    Sbr_Cbx_ReStart 1 	 
fi # end: [ "$EXIT" = "guiBakAllRS" ]
#!
#! gui BakAll RB
#(: function EXIT:guiBakAllRB              # BakAll ReBoot
if [ "$EXIT" = "guiBakAllRB" ] ; then   # BakAll ReBoot
    n=0
    lcMsgStr="!! BakAll  + ReBOOT : guiBakAllRB !!"
    #~ Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
    Sbr_Cbx_ReBoot "1"
fi # end: [ "$EXIT" = "guiBakAllRB" ]
#!
#!### E3R CTA ReBoot #######################################################
#(: function EXIT:guiBakAllCRB       # BakAll + CTA +ReBoot 
if [ "$EXIT" = "guiBakAllCRB" ] ; then   # BakAll + CTA + ReBoot 
    n=0
    lcMsgStr="!!!_ BakAll_CTA_ReBoot : guiBakAllCRB !!!"
    #~ Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
     #! Expand Verify -f Files : /EDIT vs /root/my-applications
    lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit
	if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List, 
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        lcFnRun="${gcRootApps}rc.z_CTA.sh"  
        if [ -f "$lcFnRun" ] ; then		# CTA
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
   Sbr_Cbx_ReBoot
fi # end: [ EXIT:guiBakAllCRB ]    
#!
#!### E3R ReQuit #######################################################
#(: function EXIT:guiBakAllCRQ       # BakAll + CTA +ReQuit 
if [ "$EXIT" = "guiBakAllCRQ" ] ; then   # BakAll + CTA +ReQuit 
    n=0
    lcMsgStr="!!!_ BakAll_CTA_ReQuit : guiBakAllCRQ !!!"
    #~ Sbr_Splash_It "${lcMsgStr}" "yellow" "purple" "3" #! -D---  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_BakAllArcDts        # Quick Short version   
     #! Expand Verify -f Files : /EDIT vs /root/my-applications
    lcFnRun="${gcMntHomeMyUsrDev}rc.z_CTA.sh"    #!  here, testing  for /Dev/Edit
	if [ -f "$lcFnRun" ] ; then		# CTA    #! CTA has No-Scan-List, 
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        lcFnRun="${gcRootApps}rc.z_CTA.sh"  
        if [ -f "$lcFnRun" ] ; then		# CTA
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
   Sbr_Cbx_ReQuit
fi # end: [ EXIT:guiBakAllCRQ ]     # Called by "Menu_ReBoot"
#!
#!
#!
#! =====================================================================
#! end: BakAll Ending Routines: "BakAll" ReStart / ReBoot / RePowerOff
#! =====================================================================
#!
#!
#!
#! =====================================================================
#! begin: #1 Column  CBX, OneArcDts, AllArcDts , E3R, 
#! =====================================================================
##(: ========================================================
#(: ft(EXIT:guiMgrOneArcDts)
#(: called by: Page "Main" 
#(: param:
##(: purpose: Backup/Archive with DTS, only ONE "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :  Check If "EDIT" script available. 
#(:
#! #########################################################
#! function EXIT:guiMgrOneArcDts
if [ "$EXIT" = "guiMgrOneArcDts" ] ; then   # MGR One Arc Dts 
    n=0
    Sbr_BakOneArcDts
    Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1 	 # display and no wait
fi # end [ "$EXIT" = "guiMgrOneArcDts" ]
#!
##(: ========================================================
#(: ft(guiMgrAllArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#(: function  EXIT:guiMgrAllArcDts  # vis = 0 # NOT ACTIVE 
#! #########################################################
if [ "$EXIT" = "guiMgrAllArcDts" ] ; then   # MGR All Arc Dts # vis = 0 # NOT ACTIVE 
    n=0
    #! Sbr_Splash_It "--- gui_Mgr_ALL_Arc_dts ---# vis = 0 # NOT ACTIVE " "yellow" "red" "3"       #! -D---
    Sbr_Splash_It "--- gui_Mgr_All_Arc_Dts ---" "yellow" "purple" "3"       #! -D---
    Sbr_BakAllArcDts       # Quick Short version 
    Sbr_Cbx_ReStart 1 
fi # end [ "$EXIT" = "guiMgrAllArcDts" ]
#(: ========================================================
#!
#!
#!
#!
#(: ========================================================
#(: ft(EXIT:guiMB)       # MUST BE TOP of LIST !
#(: called by: GUI Fall-Thru 
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : EXIT:guiMB  "MUST" be the FIRST of the if [EXIT: ] routines.
#(:         so that a call can "Fall-Thru" to find the "if  $EXIT" match-up. 
#(:
#(:   guiMB can generate calls to 
#(:         external ".FnRun_" routines "external"
#(:         internal "Sbr_" routines "local"
#(:         internal "if [ "$EXIT" = " Fall-Thru routines
#(:
#! ########################################################
#! function EXIT:guiMB    
if [ "$EXIT" = 'guiMB' ] ; then n=0  ;
    Sbr_Splash_It "--- >>>Sbr_MB<<< ---" "yellow" "purple" "1.5"       #! -D---
    EXIT=">>>guiMB<<<>>>Sbr_MB_All<<<"
    Sbr_gui_MB_All      # pageV pageVert
    #
fi # end: [EXIT:guiMB]

#! =====================================================================
#! end: #1 Page  CBX, E3R, MCI, MB, OneArcDts, AllArcDts 
#! =====================================================================
#!
#!
#! Fall-Thru Method 
#!
#!
#! #########################################################
#! begin: #1 Page TEST
#! #########################################################
#!
#!
#(: =========================================================
#(: ft(EXIT:guiAudio)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: play the "startup" music
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiAudio    # "Audio" button calls this if[] .
if [ "$EXIT" = 'guiAudio' ] ; then  # Run Audio Startup Music 
	n=0
    Sbr_Splash_It  "mpv ===guiAudio StartUp-Sound" "yellow" "purple" "3"
    #!
    #! B5B mpv
       mpv  /usr/share/audio/bark.au &
       mpv  /usr/share/audio/2barks.wav &
    sleep 3
        mpv /usr/share/audio/sys-login.mp3 &
    sleep 5
        mpv /usr/share/audio/bell.wav
    #!
    Sbr_Splash_It  "mplayer ===guiAudio StartUp-Sound" "yellow" "purple" "3"
    #! B4B mplayer
     mplayer /usr/share/audio/bark.au &
    mplayer /usr/share/audio/2barks.wav &
     sleep 3
    mplayer /usr/share/audio/sys-login.mp3 &
    sleep 5
    mplayer /usr/share/audio/bell.wav    #!
    #!
    Sbr_Cbx_ReStart 1
    #!
fi # end: "$EXIT" = 'guiAudio'
#!
#!
#(: =========================================================
#(: ft(EXIT:guiBackGround)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Launch the BackGround Image
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiBackGround    #  Not Active
if [ "$EXIT" = 'guiBackGround' ] ; then  # Run Audio Startup Music 
	n=0
    Sbr_Splash_It  "guiBackGround" "yellow" "purple"  "3"
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiBackGround'
#!
#!
#(: ========================================================
#(: ft(EXIT:guiTest1)    # Not Used
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:    TEST
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiTest1       # Not Used 
if [ "$EXIT" = 'guiTest1' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest1
    ." &
        sleep 3
        pidx=$!
        GTKPIDT1=$!
        sleep .3
        kill ${GTKPIDT1}
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest1'
#!
#(!
#(: ========================================================
#(: ft(EXIT:guiTest2)    # Not Used
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:    TEST
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiTest2       # Not Used 
if [ "$EXIT" = 'guiTest2' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest2
    ." &
        sleep 3
        pidx=$!
        GTKPIDT2=$!
        sleep .3
        kill ${GTKPIDT2}
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest2'
#!
#(!
#(: ========================================================
#(: ft(EXIT:guiTest3)    # Not Used
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:    TEST 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiTest3    # Not Used
if [ "$EXIT" = 'guiTest3' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest3
    ." &
        sleep 3
        pidx=$!
        GTKPIDT3=$!
        sleep .3
        kill ${GTKPIDT3}
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest3'
#!
#!
#! ########################################################
#! end: #1 Column TEST
#! ########################################################
#!
#!
#! Fall-Thru Method 
#!
#!
#! #########################################################
#! begin: #2 Column EXTERNAL # earlier MGR version
#! #########################################################
#!
#(:   PBB+ Dev+ E3R+ E2D+ GTK+ GEANY+ SFS+ PCP+ PPR+ CTB+ CTU+ CTnsmp+
#!
#!
#(: =========================================================
#(: ft(EXIT:guiROX)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:    lcFnRun=". rox"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiROX   # Run ROX Filer App 
if [ "$EXIT" = "guiROX" ] ; then   # NOT USED 
    n=0
    echo "------- ROX ---Show 'My_Dev_' SubDir"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    # called by ROX with no parameter
    Sbr_Cbx_ReStart & ### must ReStart with no parameter.
    Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
    cd /initrd/mnt/dev_save/MY_/usr-share/My_Dev_
    lcFnRun=". rox"
    . rox  
    exit
fi # end: EXIT:guiROX
#!
#!
#(: =========================================================
#(: ft(EXIT:guiGTKsampler)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:  	lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/rc.z_GTK-sampler.sh"
#(: calls: GTK-sampler.sh
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiGTKsampler # # Run GTK Sampler App
if [ "$EXIT" = "guiGTKsampler" ] ; then     # NOT USED
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	echo "--- GTK-sampler ---"
	lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/rc.z_GTK-sampler.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # sfs_load
	Sbr_Cbx_ReStart 1   # no wait # guiGTKsampler
fi # end: EXIT:guiGTKsampler
#!
#!
#(: =========================================================
#(: ft(EXIT:guiSFS)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:  lcFnRun="/usr/sbin/sfs_load"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiSFS   # Run  SFS Loader App
if [ "$EXIT" = "guiSFS" ] ; then    # NOT USED 
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="/usr/sbin/sfs_load"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # Run  SFS Loader App
	Sbr_Cbx_ReStart 1 	 # no wait
fi # end: EXIT:guiSFS
#!
#!
#(: =========================================================
#(: ft(EXIT:guiJWD)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:	lcFnRun="/usr/local/jwmdesk/jwmdesk"
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:guiJWD   # Run JWD App
if [ "$EXIT" = "guiJWD" ] ; then        # NOT USED
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/jwmdesk/jwmdesk"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}   # jwmdesk
    Sbr_Cbx_ReStart 1   # no wait
	#	exit 0
	#
fi # end: EXIT:guiJWD
#!
#!
#(: ========================================================
#(: ft(EXIT:guiPPR)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: 	lcFnRun="/usr/local/bin/pprocess" 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiPPR   # Run Sys App
if [ "$EXIT" = "guiPPR" ] ; then    # NOT USED 
    echo "--- PPR Process --- Run System Application  ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/usr/local/bin/pprocess"   # pprocess
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
	#
fi # end: EXIT:guiPPR
#!
#!
#(: ========================================================
#(: ft(EXIT:gui-P-MntInt) 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sys_MGR_Mnt_pMount_sbr)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:gui-P-MntInt     # Internal Code still "mount" internal
if [ "$EXIT" = "gui-P-MntInt" ]  ; then	   # NOT USED 
    n=0
	Sbr_KillProc "${EXIT}"	# gui-P-MntInt
    Sys_MGR_pMount_All "1"  ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-P-MntInt (main)
#!
#!
#(: =========================================================
#(: ft(EXIT:gui-U-MntInt) 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sys_MGR_Mnt_uMount_All)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
#! function EXIT:gui-U-MntInt #  Internal Code calls "UnMount" Internal
if [ "$EXIT" = "gui-U-MntInt" ]  ; then	   # NOT USED 
    n=0
	Sbr_KillProc "${EXIT}"	# gui-U-MntInt
    Sys_MGR_uMount_All "1" ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-U-MntInt (main)
#!
#!
#! #########################################################
#! end: #2 Column EXTERNAL 
#! #########################################################
#!
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ########################################################
#! begin: # 3 Column
#! ########################################################
#!
#!
#(: ========================================================
#(: ft(EXIT:guiS2F3)
#(: called by: Main GUI button  "_S2F-3_"
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Internal Call for /rc.z_S2F.sh
#(: calls:
#(: method: calls code from /rc.z_S2F.sh,  copied internal
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
#! function EXIT:guiS2F1   # guiButton S2F-1 loop SMP    ACTIVE
if [ "$EXIT" = "guiS2F1" ]  ; then  # guiButton S2F-3 loop SMP    ACTIVE
    n=0
    Sbr_MB_s2f1        # guiButton S2F-1 loop SMP
	Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1  # no wait
fi #
#!
#! ########################################################
#! function EXIT:guiS2F3   # guiButton S2F-3 loop SMP    ACTIVE
if [ "$EXIT" = "guiS2F3" ]  ; then  # guiButton S2F-3 loop SMP    ACTIVE
    n=0
    Sbr_MB_s2f3        # guiButton S2F-3 loop SMP
	Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1  # no wait
fi #
#!
#(: ==================================================
#(: ft(EXIT:guiMCI)	
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: EGI Sample Project
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################
#! function [EXIT:guiMCI]
if [ "$EXIT" = "guiMCI" ] ; then    # Run  M.C.I. project   ACTIVE
    n=0
    Sbr_Splash_It "--- Run MCI Sample Project  ---" "yellow" "purple" "3"       #! -D---
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/root/my-applications/rc.z_MCI.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
	#
fi # end: EXIT:guiMCI
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ########################################################
#! begin:  Column DUMP 
#! ########################################################
#!
#!
#(: ========================================================
#(: ft(EXIT:guiDumpPUP)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup Source Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =========================================================
#! function [EXIT:guiDumpPUP]
if [ "$EXIT" = "guiDumpPUP" ] ; then   #  Dump PupState  ACTIVE
    echo "--- Dump/Display Pup State Code ---"
    n=0
    Sbr_Dump_PUP	# MGR_Pup_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#!
#(: =========================================================
#(: ft(EXIT:guiDumpHLP)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup HELP Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#(:
#! ########################################################
#! function [EXIT:guiDumpHLP]	DumpHELP
if [ "$EXIT" = "guiDumpHLP" ] ; then   #  Dump HELP  ACTIVE
    echo "--- HELP --- Sbr_Dump_HLP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!
#!
#(: ========================================================
#(: ft(EXIT:guiDumpFAQ)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup FAQ Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpFAQ]
if [ "$EXIT" = "guiDumpFAQ" ] ; then   #  Dump FAQ  ACTIVE
    echo "--- FAQ --- Sbr_Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ	# MGR_Faq_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! function [EXIT:guiDumpSRC]
if [ "$EXIT" = "guiDumpSRC" ] ; then   #  Dump SOURCE  ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_SRC ---${gcSysDistroName} ---"
    Sbr_Dump_SRC	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSRC
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpGUI]   # NOT ACTIVE
if [ "$EXIT" = "guiDumpGUI" ] ; then   #  Dump GUI  ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_GUI ---${gcSysDistroName} ---"
    Sbr_Dump_GUI	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpIMG]
if [ "$EXIT" = "guiDumpIMG" ] ; then   #  Dump IMAGE   ACTIVE
    n=0
    echo "--- Source --- Sbr_Dump_IMG ---${gcSysDistroName} ---"
    Sbr_Dump_IMG	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpIMG
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpUPL]
if [ "$EXIT" = "guiDumpUPL" ] ; then   #  Dump UpLegal  ACTIVE
    n=0
    lcMsgStr="--- UPopLegal --- Sbr_Dump_UPL --- ${gcSysDistroName} ---"
	Sbr_Dump_UPL	# MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpUPL
#!
#!
#(: =====================================================
#(: ft(EXIT:guiDumpSys)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Dev Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiDumpSys]
if [ "$EXIT" = "guiDumpSys" ] ; then   #  Dump System  ACTIVE
    n=0
    lcMsgStr="--- Sys Notes --- ${gcSysDistroName} ---"
	Sbr_Dump_Sys
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSys
#!
#!
#!   Fall-Thru Method 
#!
#!
#(: ===Page1==================================================
#(: ft EXIT:guiCTX  # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function  EXIT:guiCTXmain   {} Standard {_COLD_TAR_BACKUP_X_}  external ACTIVE 
if [ "$EXIT" = "guiCTXmain" ] ; then   # CTX   {}{_COLD_TAR_BACKUP__X_}  external    ACTIVE   
    n=0 # working CTX "A" mode
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run. todo: call CTB-SL
#! ************************************************************
#! E3R "basename" : E3R will check for two paths ***
#! Developer EDIT :
#! export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/" 
#! Production : 
#! export gcRootApps="/root/my-applications/"  # Puppy Linux always provides this. 
#! PET install not required, 
#!      just place downloaded scripts into /root/my-applications and append PATH.
#! *************************************************************************************
    #! Expand Verify -f Files : /EDIT vs /root/my-applications
    Sbr_Splash_It "Page 1 Main : EXIT:guiCTXmain" "yellow" "purple" "3"  
    lcFnRunBaseSd="CTX"
    lcFnRunBaseFn="CTX"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- {_CTX_} ---
	exit 0
fi # end: EXIT:guiCTXmain
#!
#!
#!
#! ========================================================
#(: === begin: Page3=== Six CT? calls to external ==========================
#! ========================================================
#!
#!
#(: ===Page3=== Six CT? calls to external ===============================
#(: ft EXIT:guiCTX  # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : Group of CTX buttons on Page Utility Page3
#(:
#! ###1#################################################
#! function  EXIT:guiCTX   {} Standard {_COLD_TAR_BACKUP_}   ACTIVE 
if [ "$EXIT" = "guiCTX" ] ; then   # CTX   {}{_COLD_TAR_BACKUP_}   ACTIVE   
    n=0 # working CTX "X" mode
    #! Sbr_Splash_It "EXIT:guiCTX " "yellow" "purple" "3"  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run. todo: call CTB-SL

#~ #! DEV guiCTX
#~ #! lcFnTrgE="/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTX/rc.z_CTX.sh"
#~ lcFnTrgE="rc.z_CTX.sh"
#~ chmod +x "${lcFnTrgE}"
#~ .  ${lcFnTrgE} 

 #~ set -xe
   #~ #! Expand Verify -f Files : /EDIT vs /root/my-applications
    lcFnRunBaseSd="CTX"
    lcFnRunBaseFn="CTX"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
#~ set +xe
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTX
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTA)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###2#################################################
#! function [EXIT:guiCTA]
if [ "$EXIT" = "guiCTA" ] ; then   # CTA  # NOT ACTIVE
    n=0
    echo "--- guiCTA Cold Tar Backup  ---"
    #! Sbr_Splash_It "Page 3 Util  : EXIT:guiCTA" "yellow" "purple" "3"  
	#!
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.

    lcFnRunBaseSd="CTA"
    lcFnRunBaseFn="CTA"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
        [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        #! /root/my-applications/rc.z_.sh
        lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
        fi
    fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTA
#!
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTB)     # CTB # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###3#################################################
#! function [EXIT:guiCTB-SL]
if [ "$EXIT" = "guiCTB-SL" ] ; then   # CTB-SL  # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SL " "yellow" "purple" "3"  
	Sbr_KillProc ${EXIT}  
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
        if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 
	exit 0
fi # end: EXIT:guiCTB-SL
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTB-SL4)     # ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiCTB-SL4]
if [ "$EXIT" = "guiCTB-SL4" ] ; then   # CTB-SL4   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SL-4 " "yellow" "purple" "3"  
	Sbr_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTB-SL-4.sh"
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB-SL-4"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTB-SL4
#!

#(: ===Page3==================================================
#(: ft(EXIT:guiCTB-SLX)     #  ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#~ export gcSysDevId="CTB-SLX"    # ScanList	called by MGR, "E3+CTB+Quit"  includes UpPmnt + DnUmnt
#~ export gcSysDevVer="4.1"
#(:
#! #####################################################
#! function [EXIT:guiCTB-SLX]
if [ "$EXIT" = "guiCTB-SLX" ] ; then   # CTB-SLX   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTB-SLX  has Up and Dn !" "yellow" "purple" "3"  
	Sbr_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTB-SLX.sh"
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB-SLX"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
	exit 0
fi # end: EXIT:guiCTB-SL
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTUnsmp)     # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiCTUnsmp] { ; n=0 ; }
if [ "$EXIT" = "guiCTUnsmp" ] ; then    # CBX ARS ReStart   # ACTIVE
    n=0
    #! Sbr_Splash_It "page 3 Util : EXIT:guiCTUnsmp " "yellow" "purple" "3"  
	Sbr_KillProc "${EXIT}" 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTU-NSMP.sh"
    lcFnRunBaseSd="CTU"
    lcFnRunBaseFn="CTU-NSMP"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait  OK to use after CTU script
	exit 0
fi # end: EXIT:guiCTUnsmp
#!
#!
#(: ===Page3==================================================
#(: ft(EXIT:guiCTU)     # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
#! function [EXIT:guiCTU() { ; n=0 ; }
if [ "$EXIT" = "guiCTU" ] ; then    # CTU # NOT ACTIVE
    echo "--- guiCTU ------------"
    n=0
	#! Sbr_Button_Only ${EXIT}   # guiCTU   # NOT ACTIVE
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRunBaseSd="CTU"
    lcFnRunBaseFn="CTU"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
    if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}    
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
            #! /root/my-applications/rc.z_.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then		# ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                /usr/lib/gtkdialog/box_ok "ERROR" error "  Dependencie File Not Found: ${lcFnRun}"		#! -D---
            fi
     fi
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use after CTU script
	exit 0
fi # end: EXIT:guiCTU
#!
#!
#! ========================================================
#(: === end: Page3=== Six CT? calls to external ==========================
#! ========================================================
#!
#!
#!   Fall-Thru Method 
#!
#!
#! =================================================
#! begin: #4 Column   ;;;  System and QUIT   ;;;
#! =================================================
#!
#!
#(: ================================================
#(: ft(EXIT:guiTopReStart)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Top Bar, Quick ReStart
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiTopReStart]
if [ "$EXIT" = "guiTopReStart" ] ; then
    n=0
	Sbr_Splash_It "Re-Start MGR from Top Bar" "yellow" "green" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # end: EXIT:guiTopReStart
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimReStart)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiSimReStart]
if [ "$EXIT" = "guiSimReStart" ]  ; then  
    n=0
	Sbr_Splash_It "Simple Re-Start" "yellow" "green" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails.
	exit 0	#! ## "exit 0' should terminate this program.
fi  #  guiSimReStart
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimReBoot)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiSimReBoot]
if [ "$EXIT" = "guiSimReBoot" ]  ; then
    n=0
	Sbr_Splash_It " Warm ReBoot" "." "." 
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	Sbr_Cbx_ReBoot 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails.
	exit 0	#! ## "exit 0' should terminate this program.
fi # guiSimReBoot
#!
#!
#(: =================================================
#(: ft(EXIT:guiSimPowerOff)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
#! function [EXIT:guiSimPowerOff]
if [ "$EXIT" = "guiSimPowerOff" ] ; then
    n=0
	Sbr_Splash_It " Power-Off  via  WrmPowerOff"  "." "."  "1"    #! -D!---
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that WrmPowerOff can run.
    Sbr_Cbx_ReQuit 1   # EXIT:guiSimPowerOff
    EXIT=""	### force "Fall Thru" if "exit 0" fails.
    exit 0		#! ## "exit 0' should terminate this program.
fi # guiSimPowerOff
#(:=========================================
#!
#!
#!
#!
#! end: #4 Page   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! =================================================
#!
#!
#!   Fall-Thru Method 
#!
#!
#! =================================================
#! begin: #4 Page   ;;;  Menu Setup   ;;;
#! === =============================================
#!
#!
#!
#(: =====================================================
#(: ft(EXIT:ARB_00)  ft(EXIT:ARB_KK)   #: Active #: KK, BB, JJ, etc
#(: ft( EXIT:ARB_00 || EXIT:ARB_KK || EXIT:ARB_BB || EXIT:ARB_JJ || EXIT:ARB_S7 || EXIT:ARB_T6 ) || et al
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method: Install only a Two-Character "Id" into config-file
#(:      Re-Start MGR will check config, then build matching menu.lst
#(: sends:
#(: rationale:
#(: note :
#(:
#!   Fall-Thru Method 
#!
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft( EXIT:ARB_ORG || EXIT:ARB_ "ALL"  )
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Build-Short-Menu: 
#(: calls:
#(: method: 
#(:			ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B ]
#(:			Install only a Two-Character "Id" into new Menu.lst, 
#(:			and build with "default" selection. 
#(: sends:
#(: rationale:
#(: note : main run ( )   calls init: fx(Sbr_ARB_Init) to fetch configfile data.
#!
#! ====================================================
#! begin: Build Short Menu  
#! List of Abbreviated OS names: KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B
#! ====================================================
#!
#! function  Build-Short-Menu  IF  [ ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B ]
if [ "$EXIT" = "ARB_00" ] || [ "$EXIT" = "ARB_KK" ] || [ "$EXIT" = "ARB_B4B" ] || [ "$EXIT" = "ARB_B5B" ] || [ "$EXIT" = "ARB_JJ" ] || [ "$EXIT" = "ARB_UMM" ] || [ "$EXIT" = "ARB_DBW" ] || [ "$EXIT" = "ARB_BC" ] || [ "$EXIT" = "ARB_FF" ]  || [ "$EXIT" = "ARB_S7" ] || [ "$EXIT" = "ARB_T6" ] || [ "$EXIT" = "ARB_X64" ] || [ "$EXIT" = "ARB_X708" ]  || [ "$EXIT" = "ARB_UIMP" ] || [ "$EXIT" = "ARB_S64" ] || [ "$EXIT" = "ARB_S1564" ]   || [ "$EXIT" = "ARB_SLXSC" ] || [ "$EXIT" = "ARB_Q7" ]  ; then
    n=0
	Sbr_SDA_Only	# control: test "SDA" else  ReStart
	Sbr_KillProc  "$EXIT"   # Build Menu permission control 
    Sbr_MenuShortList    #  function at top of code
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
    echo "${gcMgrArCfgIdd}" > "${gcMgrArbCfgFn}"  # config of menu
fi # 
#!  Build Short Menu : ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B
#
#! ================================================
#! ## end: Build Short Menu  ################################
#! ================================================
#!
#!
#!
#! ================================================
#! ## begin: Build Long Menu   ######
#! ================================================
#!
#(: ft(EXIT:ARB_ORG) ||ft(EXIT:ARB_ORGYBYR) ||ft(EXIT:ARB_ORGGBYR) ||ft(EXIT:ARB_ORGRYBG)
#!
#! =================================================
#! ## begin: Build Long "Original" Menu   
#! =================================================
#! function if [ EXIT:ARB_ORG ]    # ACTIVE
if [ "$EXIT" = "ARB_ORG" ] ; then 
    n="0"
	Sbr_SDA_Only	# control: only run from  "SDA" && ReStart
    #! function EXIT:ARB_OriginalMenu()  # custom long "original" is generated.
    export lcOsSubSplClrIfg="yellow"
    export lcOsSubSplClrIbg="blue"	
#! -D---
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.      ${lcOsSubSplClrID}
.      ${EXIT} = menu.lst  "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	
		sleep 3
        kill ${GtkPid_Mnu_Box_Splash}
    #!
    Sbr_MenuLongList
    Sbr_Cbx_ReStart  "1" #  Long Menu ReStart
fi # end: MenuLongList 
#!
#! =====================================================
#! ## end: LongMenuList  #######################################
#! =====================================================
#!
#!
#!
#!
#! #####################################################
#! end: #4 Page   ;;;  Menu Setup   ;;;;;;;;;;;;;;;;;;;;;;;;
#! #####################################################
#!
#!
#!
#!
#! ###########################################################
#! begin: #3 Page Special 
#! ###########################################################
#!
#(: ===========================================================
#(: ft(EXIT:guiSrcBase64)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! function [EXIT:guiSrcBase64]
if [ "$EXIT" = 'guiSrcBase64' ] ; then n=0  ;
	n=0
	Sbr_KillProc	"${EXIT}------guiSrcBase64"  # Base64 , ReStart
    Sbr_Dump_SRC_Base64
    Sbr_Cbx_ReStart '' ### display
fi # end: "$EXIT" = 'guiSrcBase64'
#(!
#(:
#(:
#(: ====================================================================
#(: ft(EXIT:guiMandelbrot)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###########################################################
#! function [EXIT:guiMandelbrot]
if [ "$EXIT" = 'guiMandelbrot' ] ; then n=0  ;
	n=0
	Sbr_KillProc	"${EXIT}------guiMandelbrot"
    Sbr_Utl_Mandelbrot	# build text Graphic, very slow build, in Xterm only. 
    Sbr_Cbx_ReStart '1' 
fi # end: "$EXIT" = 'guiMandelbrot'
#!
#!
#!
#! #######################################################################
#! end: #3 Page Special 
#! #######################################################################
#!
#!
#!
#! #######################################################################
#! begin: #4 Page : System plus Restart-Reboot-ReQuit 
#! #######################################################################
#!
#(: ====================================================================
#(: ft(EXIT:guiMainQUIT)    #: A
#(: called by: Main GUI
#(: param:
#(: purpose: Main Quit with trailer message.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###########################################################
#! ft [EXIT:guiMainQUIT]       
if [ "$EXIT" = "guiMainQUIT" ]  ; then
	n=0
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "1" "7"
    lcMsgStr="[ '$EXIT' = 'guiMainQUIT+' ]" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="---${gcSysDevDob}---" && Sbr_Str2DevTrm "${lcMsgStr}" "3" "7"
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "1" "7"
	Sbr_ClearFlagsSystem "0"   ### no display
    Sbr_ClearFlagsQuit  "0"    ### no display
			#! list of flags to kill:
			#! rm -f "${MGR_TouchCBXstatus}"
			#! rm -f "${MGR_BackUpStatus}"
			#! rm -f "${MGR_LockFile}"
			#! rm -f "${MGR_ReStart_flg}"
    echo
	lcMsgStr=" " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="... MGR : ReadMe info ! ... " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    echo    # Str2DevTrm
    lcMsgStr=">>>  Hit 'Enter' to clear Terminal <<< "
    Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "6"
    Sbr_Str2DevTrm "$lcMsgStr" "6" "7"
   #!
    Sbr_Splash_Quit "*======== MGR_Main-Quit ========*"
    #!
lcMsgStr="<<<  Q.U.I.T. program " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
    #! caution: "halt"  will Kill the whole system. Dead System, no way out. 
    #! return && exit 0 ### will jump stack, then must "Quit" again to clear stack.
	exit 0  
    return  ### proper sequence must be "exit" then "return" down the "stack"
    #! IF Xterm, THEN IF ROX is running, THEN  MGR halts right here, in Xterm. 
    #! System has an orphaned routine (ROX) still on the stack.
fi
#! ft [EXIT:guiMainQUIT]
#!
#!
##! #######################################################################
#! end: #4 Page : System ReStart-Reboot-ReQuit 
#! #######################################################################
#!
#!
#!
#!
#! ###################################################################################
#! begin: Bottom of MGR Fall-Thru 
#! ;;;  MGR_Fall_Thru_Trap  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###################################################################################
#!
#!
#!
#(: ====================================================================
#(: ft(EXIT='') #  FALL-THRU trap for 'loose' code
#(: called by: Fall-Thru
#(: param:
#(: purpose:     FALL-THRU trap for 'loose' code
#(: calls:
#(: method:      function ft(EXIT='')
#(: sends:
#(: rationale:
#(: note :
#(:    Exit Splash in color
#! ###########################################################
#! function ft(EXIT='')
#! colorful splash  FALL-THRU trap for 'loose' code 
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "4"
lcMsgStr=">>>  FALL-THRU trap for 'loose' code  " 
Sbr_Str2DevTrm "$lcMsgStr" "2" "1"
Sbr_Str2DevTrm "$lcMsgStr" "2" "2"
Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
#!
Sbr_Splash_Quit "*===Fall-Thru===Loose-Code===Quit===*"
#!
lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="<<<  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
	Sbr_ClearFlagsSystem  0   ### no display
    Sbr_ClearFlagsQuit   "1"   ### yes display
            #! list of flags to be killed :
            #! rm -f "${MGR_TouchCBXstatus}"
            #! rm -f "${MGR_BackUpStatus}"
            #! rm -f "${MGR_LockFile}"
            #! rm -f "${MGR_ReStart_flg}"
            #! rm -f "/tmp/MGR_Page_Control.flg"
    echo "FALL-THRU has final standard 'exit 0'"
	echo "... Will Pop the Stack if Layered ..."
    exit 0
    return
#! ### end:   "EXIT:QUIT" "EXIT:QUIT+"
#!
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft(EXIT:'END')
#(: ft(EXIT:'END')
#(: ft(EXIT:'END')
#(: ft(EXIT:'END')
#(: ===========================================================================
#! ###################################################################################
#! end: Bottom of MGR Fall-Thru 
#! ###################################################################################
#!
#!

    #! ************************************************************
	#! echo "#*	"
	#! echo "#**(: Linux_Grub4Dos_system_commands.txt   "
	#! echo "#*	13.3 The list of command-line and menu entry commands   "
	#! echo "#*   "
	#! echo "#*These commands are usable in the command-line and in menu entries. "
	#! echo "#* If you forget a command, you can run the command help (see help).   "
	#! echo "#*   "
	#! echo "# *blocklist: Get the block list notation of a file   "
	#! echo "# *boot: Start up your operating system   "
	#! echo "# *cat: Show the contents of a file   "
	#! echo "# *chainloader: Chain-load another boot loader   "
	#! echo "# *cmp: Compare two files   "
	#! echo "# *configfile: Load a configuration file   "
	#! echo "# *debug: Toggle the debug flag   "
	#! echo "# *displayapm: Display APM information   "
	#! echo "# *displaymem: Display memory configuration   "
	#! echo "# *embed: Embed Stage 1.5   "
	#! echo "# *find: Find a file   "
	#! echo "# *fstest: Test a filesystem   "
	#! echo "# *geometry: Manipulate the geometry of a drive   "
	#! echo "# *halt: Shut down your computer   "
	#! echo "# *help: Show help messages   "
	#! echo "# *impsprobe: Probe SMP   "
	#! echo "# *initrd: Load an initrd   "
	#! echo "# *install: Install GRUB   "
	#! echo "# *ioprobe: Probe I/O ports used for a drive   "
	#! echo "# *kernel: Load a kernel   "
	#! echo "# *lock: Lock a menu entry   "
	#! echo "# *makeactive: Make a partition active   "
	#! echo "# *map: Map a drive to another   "
	#! echo "# *md5crypt: Encrypt a password in MD5 format   "
	#! echo "# *module: Load a module   "
	#! echo "# *modulenounzip: Load a module without decompression   "
	#! echo "# *pause: Wait for a key press   "
	#! echo "# *quit: Exit from the grub shell   "
	#! echo "# *reboot: Reboot your computer   "
	#! echo "# *read: Read data from memory   "
	#! echo "# *root: Set GRUBs root device   "
	#! echo "# *rootnoverify: Set GRUB's root device without mounting   "
	#! echo "# *savedefault: Save current entry as the default entry   "
	#! echo "# *setup: Set up GRUB's installation automatically   "
	#! echo "# *testload: Load a file for testing a filesystem   "
	#! echo "# *testvbe: Test VESA BIOS EXTENSION   "
	#! echo "# *uppermem: Set the upper memory size   "
	#! echo "# *vbeprobe: Probe VESA BIOS EXTENSION   "
    #! ************************************************************



    #! ************************************************************
    #! - System -  
    #! Distro_Name: ${gcSysDistroName}
    #! Distro_Version: ${gcSysDistroVersion}
    #! Distro_Kernal: ${gcSysKernPup}
    #! 
    #! Version: #1 SMP thu Dec 1 02:14:03 UTC 2022
    #! C Library: GNU C Library / (GNU libc) 2.33
    #! Distribution: Puppy Linux 
    #!
    #! -Processors-
    #! Package Information	
    #! Pentium(R) Dual-Core  CPU      E5500  @ 2.80GHz	0	0:0	2800.00 MHz	
    #! Pentium(R) Dual-Core  CPU      E5500  @ 2.80GHz	1	0:1	2800.00 MHz	
    #!
    #! ************************************************************
    #!  BASH can be pickyer than mud on a door-knob. 
    #!  Running via Geany Xterminal for debugging is very helpful.
    #!  Use of the "set" command on="-x -e", off="+x +e" is very useful. 
    #! ************************************************************
    #!
    #! /MGR Edit Recovered from rc.z_MGR-upupKK-231128-1208
    #! MGR.sh recovered from DpupBookWorm  231215-1914 
    #!
    #! - Major Systems used - plus others listed below :
    #!
    #! iso-KineticPup32-22.10+2_230604  Kernel: 5.10.149
    #!   BUILD_FROM_WOOF='testing;362df0ce6;2023-02-17 18:54:46 +0200'
    #!   sda1,ext4,/pup_UpupKK-SDA/puppy_upupkk+d_22.10.sfs
    #!
    #! BionicBeaver Kernel:4 is from 2023
    #! BionicBeaver Kernel:5 is from 2024
    #! iso_BionicPup32-19.03-K5.9_231209.iso__231209        BionicBeaver from 2024
    #!   puppy_upupbb_19.03.sfs , Woof: 2021-01-03 18:17:49 
    #!   BUILD_FROM_WOOF='testing;c1a16e15;2019-03-22 12:34:12 +0800'
    #!
    #! iso_JammyPup32-22.04+8_22123-0700
    #!   UpupJammy32-22.04+8  Kernal: 5.15.80 
    #!   BUILD_FROM_WOOF='testing;168295bed;2022-05-09 09:56:09 +0000'
    #! 
    #! iso_S15pup64-22.12+1-T_230114
    #!     Kernel: 5.15.80
    #!     Build Date: Thu Dec 1 02:14:03 UTC 2022
    #!     Build GCC: 10.2.1-6)
    #!     OS Support: GNU/Linux
    #!     Architecture: x86_64
    #!     SMP Enabled: Yes
    #!
    #! iso-UpupXenial64_7.5_XL-220401 k:4.1.30  K:4.9.13
    #!     Kernel: 4.9.58
    #!     Build Date: Mon Nov 13 15:54:01 GMT 2017
    #!     OS Support: GNU/Linux
    #!     Architecture: x86_64
    #!     SMP Enabled: Yes
    #!
    #! iso_ManticPup32-23.10+2
    #!     UpupMM-23.11 > Mantic-Minotaur-L6-Kernel:6.1
    #!      Kernel: 6.1.57
    #!      Build Date:
    #!      OS Support: GNU/Linux
    #!      Architecure:  x86_64
    #!      SMP Enabled: PREEmpt_DYNAMIC Sun Oct 15 02:59:29 UTC 2023
    #!      Processor: i686
    #!
    #!	iso-LxPupSc-slacko-20.01+0-T-64-200129
    #!		 LxPup64, K:5.4.6-LxPup64,  GTK requires Main Gui window width=1500
    #!
    #!	iso-slacko-7.0_DpupS7_14.2_220205
    #!		SpupS7 , V:14.2,  GTK requires Main Gui window width=1500
    #!
    #!  Puppy Debian Bookworm 32 : GTK <button height is always STD.  
    #!      vseparate is always full char tall. 
    #!
    #! ************************************************************
    #!
    #! todo: test these:
    #! uname -a > /MGR_BitSize.txt
    #! gcBitSize="$(cat /MGR_BitSize.txt)"
    #! export gcBitSize	="$(cat /MGR_BitSize.txt)"
    #!
    ###  "calc" if [ zero ]  for "${lcPupRamObjMsg}"
    #!  -lt -eq -gt for "strings" 
    #!   =<   ==   >=  for integer 
    #!  if [ "${var}" ] is test "if zero or null" value
    #!
    #!
    #! ###  leading key-words  #################################################
    #! rc.z_TXN_EXE.sh will cull  notes  with this "leader"                  #~
    #! rc.z_TXN_EXE.sh will keep notes with this "leader"                    #! 
    #! rc.z_TXN_EXE.sh will build a "comment" file based on this "leader"    #(: 
    #! ##########################################################################
    #!
    #! 
    #(: ###########################################
    #(: these "terms" can be searched for a group:
    #(: #(:      followed by space,  not fully implemented in MGR, MCI, et al
    #(: #!       followed by space,  not fully implemented in MGR, MCI, et al 
    #! -D---    marks each gtkdialog
    #(: function 
    #(: function Sbr
    #(: function Sys
    #(: if [
    #(: function=
    #(: <button
    #(: <label
    #!: <action
    #!: ###########################################
    #!
    #! 
    #! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #!
    #! note:
    #(: rc.z_MGR , the "Manager"   ,  is a "FrameWork"
    #(: .sh format is used, so GEANY sees a 'script' as executable.
    #(: chmod +x rc.z_MGR.sh might be required for exported files.
    #(:
    #(:  BASH is a very common *nix shell,
    #(:     and it's programming language is purely procedural
    #(:     and focused on command execution.
    #(:  Updates to Bash itself have broken older scripts 
    #(:     that used to work perfectly fine in UNIX, SCO-Unix, Xenix. 
    #(:
    #(:
    #(:
    #(: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #(:
    #! note:
    #! if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then
    #! see pup_event_backend_modprobe
    #!
    #(: # ##############################################
    #(: method of Programmer Docs and Linux Comments.
    #(: "#(:" Docs are "Transferred"  by "TXN" into "comments.txt"
    #(:       used for Prog Dox to build Documentation for project .
    #(:       TXN will pull these out to a separate file for project.
    #(:         #(: effectively becomes a 'cut' line
    #(:
    #(: "#(!" Docs are "KEEP" in code.sh and also "Transferred" into "Comments" text file.
    #(: "#! ###"
    #(:
    #(: "#:"  Comments are culled via "TXN"
    #(:       used for common comments added by gae
    #(:       TXN will kill these common comments, for min prog/script size.
    #(: ---------------------------------------------------------------------
    #(: rc.z_TXN_EXE.sh will cull most notes.
    #!
    #!
    #(: dependency on these two standard Puppy programs :
    #(:     gtkdialog version 0.8.4 release (C) 2003-2007 Laszlo Pere, 2011-2012 Thunor
    #(:        Built with support for: GTK+ 2, Glade.
    #(:     gxmessage-2.12.4
    #(:        Copyright (C) 2009 Timothy Richard Musson
    #(:
    #(: === MGR ============================================
    #(: written method of "Programmer System Docs"   vs  "common code comments".
    #(:
    #(: "TXN_exe.sh" processes this funxtion.  ( BASH comments are too 'simple' to do the job. )
    #(: "TXN" produces compacted code files, culled of extraneous comments.
    #(:
    #(: Criteria:
    #(: TXN "KEEP" vs "CULL" is based on left-trim + left-most 2 - 3 char  'prefixes'
    #(: like this:
    #(:
    #(: --------------------------------------------------------------------
    #(: "KEEP"  maintained in TXN processed files.
    #(:
    #(: "#(:" Docs are pulled by "TXN" , and cast into separate DoxFile.
    #(:       used for System Dox to build Software Code Documentation for project .
    #(:
    #(: "#!"  Comments are retained  via "TXN"
    #(:       used for important Linux System Dox.
    #(:       must be used for 'in-line' comments.
    #(:
    #(: --------------------------------------------------------------------
    #(: "CULL"  maintained only in the original code file.
    #(:         culled from TXN processed files.
    #(:         tab is not recognized as leading part of 'comment', so line is culled. 
    #(: "#  "  Comments to be culled ( has a ' ' <tab> )
    #(: "# "  Comments to be culled ( has a ' ' <space> )
    #(:
    #(: "#:"  Comments to be culled
    #(:
    #(: "#~"  are BASH comments which were "hidden" to be culled by TXN
    #(:
    #(: "#"  Comments are culled via "TXN"
    #(:       used for non-important, common comments
    #(:       TXN will kill these common comments for min prog/script size.
    #(:       Placing "#" as an in-line comment will allow "TXN" to kill the line.
    #(:
    #(: note:
    #(: Programatical "funxtion XXX()" block must have "end"
    #(:    ;ie, must have        "}"    or    "} #"
    #(: gui XML must terminate with :
    #(:        "</window>"    plus  'grave' mark '`'
    #(:
    #(: ===============================================
    #(:
    #(: "lc" var are 'local' and subject to change / reuse / reassignment
    #(: "gc" var are 'global' and should not be changed.
    #(:      Always copy into 'lc' for use.
    #(: ===============================================
    #(: ;;; FrameWork for Header for each SubRoutine ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    #(:		copy this framework directly into all developing sub-routines
    #(:		as the "Sys" standard method of Program Dox for project documentation.
    #(:		(1) recording Developer's VerDts
    #(:		(2) recording the Linux Sys Documented ID info.
    #(:     (3) documenting sub-routine's "modus operandi".
    #!
    #! note:
    #! "gcSysDevDob" is unique to "MGR" 
    #! "gcSYSDevDob" is used in "rc.sysinit" and "rc.shutdown"
    #!
    #! ##############################################
    #! Splash / Indicator for "RUNNING" .   Initial Splash floats while MGR initializes 
    #!~ /usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text "\
    #!~ >>> Manager <<<  " &  RETVAL=$?  
    #!~ GtkPid_Running_Splash=$!  
    #!~ sleep .5 
    #!~ kill ${GtkPid_Running_Splash}
    #!~ /usr/lib/gtkdialog/box_splash -fg black -bg yellow -border true  -close never -text "\
    #!~ >>>   Manager   <<<  " &  RETVAL=$?  
    #!~ GtkPid_Running_Splash=$!  
    ### kill ${GtkPid_Running_Splash}
    #! ##############################################
#!
#!
################################################################################
#! ###############################################################################



#~ #! MCI_v.3.3_Sample-Menu_Embedded-Graphics+Double-Click
#~ https://forum.puppylinux.com/viewtopic.php?p=91327&hilit=embedded+image#p91327
#~ #! MGR Menu Framework v.6.1 
#~ https://forum.puppylinux.com/viewtopic.php?p=113057&hilit=Menu+Framework#p113057


