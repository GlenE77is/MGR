#!/bin/bash
#!
#!  MGR-12 TXN generated !!!
#(:   Location of this rc.z_MGR-12.sh  file : 
#(:  /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh
#(: 
#!===================================================
    #! basic Date-of-Birth of this revised version. 
#!====================================== Entered Daily 
export gcMgr_SysDOB="260424-1024"
#!====================================== Entered Daily 
#! 
#(: post Authors Info: 
export gxMgrAuthorName1="Glen.Ellis" 
export gxMgrAuthorName2="University-of-Tennessee" 
export gxMgrAuthorName3="Memphis,TN" 
export gxMgrAuthorAddress1="ResearchGate.Net"
export gxMgrAuthorAddress2="www.geocities/ws/glene77is"
export gxMgr_PublicationLocation="ResearchGate.Net"
export gxMgr_PublicationTitle="AFC_All-Pass_Phase-Filter_Proj-211026-2230"
export gxMgr_PublicationDate="2021_Oct_26"
export gxMgr_ipaddress="192.168.1.+++"
export gxMgr_uuid=$(cat /proc/sys/kernel/random/uuid)
#(: export gxMgrAuthorName1="Glen.Ellis" 
#(: export gxMgrAuthorName2="University-of-Tennessee" 
#(: export gxMgrAuthorName3="Memphis,TN" 
#(: export gxMgrAuthorAddress1="ResearchGate.Net"
#(: export gxMgrAuthorAddress2="www.geocities/ws/glene77is"
#(: export gxMgr_ipaddress="192.168.1.+++"
#(: 
#(: post computer address of this SourceCode file: 
#(: export gcMgr_SysLoc="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh"
#(: export gcMgr_SysLoc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh"
export gcMgr_SysLoc="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh"
export gcMgr_SysLoc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh"
#(:  
export gcMgr_SysDobNow="`date +%y%m%d-%H%M-%S`"	#! for gui:EXIT  splash.
#(: post calc number of lines in this Source text file
export gcMsgStrwc=$(wc -l < ${0})
#(:  11628 lines 
#(:  485 K bytes text
#(:  131 KB RamObj B32B : 175 KB RamObj B64B : 
#!
#! * kernal config: `uname -a`    
#! * kernal name: `uname -s`  
#! * kernel release: `uname -r` 
#! * kernel verson  `uname -v` 
#! * system: machine:   `uname -m` 
#! * processor:         `uname -p`      
#! * platform:          `uname -i` 
#! * operating sys:     `uname -o` 
#!
export gcMGRname="Manager" 
export gcMgrDevId="MGR"  
#!
export gcSysNameBase="MGR"  #! "system label"
export gcMgrVer="12"        #! "version:#" 
export gcMgrVerExt=".5"    #! "sub-label" current daily build. 
export gcMgrNameBaseAllve="${gcSysNameBase}${gcMgrVer}${gcMgrVerExt}"
#!
# ############################################################
#
export TEXTDOMAIN=pdiag #! rc.shutdown
export OUTPUT_CHARSET=UTF-8 #! rc.shutdown
# Constants 
export gcSCRIPT_VERSION="3.1"
export gcTIMESTAMP="$(date +%Y%m%d_%H%M%S)"
export gcDEFAULT_ARCHIVE_NAME="$0-${TIMESTAMP}"
export gcTEMP_DIR="/tmp/${DEFAULT_ARCHIVE_NAME}"
export gcLOG_FILE="/tmp/pdiag-${TIMESTAMP}.log"
export gcANALYSIS_FILE="${TEMP_DIR}/DIAGNOSTIC_ANALYSIS.txt"
# Global variables
export gcINCLUDE_WPA="no"
export gcVERBOSE="no"
export gcOUTPUT_DIR="${HOME}"
export gcINTERACTIVE="yes"
export gcANALYSIS_ENABLED="yes"
# Problem counters
export gcISSUES_FOUND=0
export gcWARNINGS_FOUND=0
declare -a RECOMMENDATIONS=()
declare -a CRITICAL_ISSUES=()
declare -a WIFI_DEVICES_FOUND=()
declare -a NETWORK_INTERFACES=()
# Colors
export gcColorRED='\033[0;31m'
export gcColorGREEN='\033[0;32m'
export gcColorYELLOW='\033[1;33m'
export gcColorBLUE='\033[0;34m'
export gcColorMAGENTA='\033[0;35m'
export gcColorCYAN='\033[0;36m'
export gcColorBOLD='\033[1m'
export gcColorDIM='\033[2m'
export gcColorNC='\033[0m'
# ############################################################

#!
#! ************************************************************
#! PATH: always use: "/root/my-applications"
#! "/root/my-applications" is built via "init" and "profile" by the standard Puppy System. 
#! Files Stored in "/root/my-applications" will be carried with the saveDATA . 
[ -z "$PATH" ] && export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
PATH=$PATH::/root/my-applications/bin:/usr/lib/gtkdialog
PATH=$PATH::/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR 
#! ************************************************************
#!
. /etc/DISTRO_SPECS       #  gather basic DISTRO data via Linux 
. /etc/rc.d/PUPSTATE      #  gather basic "STATE" of Puppy operating system 
#!
#! append trace of "restart" 
export    gcSysDts="`date +%y%m%d-%H%M-%S`"
#! echo "gcSysZero='${0}'"   >> /etc/rc.d/PUPSTATE	&& echo "gcSysDts='${gcSysDts}'"	 >> /etc/rc.d/PUPSTATE	#! trace restarts
echo "gcSysZero='${0}' "  " gcSysDts='${gcSysDts}'"	 >> /etc/rc.d/PUPSTATE	#! trace restarts
#! ************************************************************
#!
#! Page BackUp <Button "Ctb-SLX" declared/assigned to control Backup file  <button> "rc.z_CTB_SLX"  
#! If file,      then <button SLX is active visible,          and <button negative message
#! If not file,  then <button SLX is not active ,             and <button positive message
#! Control is tested now, and set, prior to <button showing on screen.   
#!
#!  "IF" required file is in /root/my-applications
#~ gcMgrButslx="false"    #! for BASH               #! decided to NOT DISPLAY on BASH BackUp Page. 
gcMgrButSLX="true"     #! for NoteBook
export gcMgrButslxBFn="/root/my-applications/rc.z_CTB-SLX.sh"    #! "IF" file is in /root/my-applications
#!
lcFnTrg="${gcMgrButslxBFn}"
if [ -f "${lcFnTrg}" ] ; then 
    export gcMgrButSLX="true"  #! NoteBook
else
    export gcMgrButSLX="false"   #! NoteBook
fi


#!
#! Button Active to control triggering extra windows. 
export EXIT=""  #! preset default  #! "EXIT" is a "bound variable" 
export gcMgrButAct="$EXIT"
export gcMgrNameBaseAll="${gcSysNameBase}${gcMgrVer}${gcMgrVerExt}"
export gcMgrNameBase_All="${gcSysNameBase}-${gcMgrVer}${gcMgrVerExt}"
export gcMgrBuildFromWolf="${BUILD_FROM_WOOF}"
#!
export gcMgrNameBaseAll="${gcSysNameBase}${gcMgrVer}"
#! export gcMgrVerID="${gcSysNameBase}${gcMgrVer} " # not used
export gcMgrVerTitle="Manager: ${gcMgrVer}${gcMgrVerExt} "  # req for "System Gui" title with '"ooo-"'  gcMgrVerTitle  '"-ooo"'
export gcMgrBashPid="$BASHPID"
export gcMgrLogInKey="JV4J-A9YI-UJFX"   #! 1 
export gcMgrIdMe="JV4J-A9YI-UJFX-iso60"
export gcMgrDt="`date +%y%m%d-%H%M-%S`"
export gcMgrKey="${gcMgrNameBaseAll}--${gcMgrIdMe}-${gcMgrDt}"
export gcMgrIsoDate="${gcMgrDt}" #! temp start date pulled from iso for "ID" testing. 
export gcMgrDistroSymbol=""	#! assigned by each Distro OS
export gcDistroEOL="${gcMgrDt}"  #! default "now" temp 'End Of Life' date pulled from DISTRO_SPECS or PUPSTATE 
export gcMgrIP="108.82.30.204"
#!
#! *****************************************************
#! "Distro-List" Declare/Assign for table presentation : Help, Faq, Distro :
export gcDistro01="#! BionicPup32-19.03-K5.9--- K:5__32 ___231209"
export gcDistro02="#! bionicpup64-8.0-uefi_  _ _K:4__64____231219"
#!
export gcDistro03="#! BookwormPup64_10.0.12______________250900"
export gcDistro04="#! PEX-Dev64_10.0.12_EX-Devuan________251012"
export gcDistro05="#! PEX-N64 _EX-Noble____________________251008"
export gcDistro06="#! PEX-Trixie64-Legacy  K:6.12.43 _______250917"
#!
export gcDistro07="#! DebBookwormPup32-10.0.7__231101_____220227"
export gcDistro08="#! BionicPup32-8.0+30_BionicBeaver______220407"
export gcDistro09="#! UpupTahr-6.0.6-k4.1.30-uefi_K:4.1______190211"
export gcDistro10="#! NoblePup32-24.04-__K:6.1.115__________240907"
export gcDistro11="#! ManticPup32-23.10+1.iso__K:6.1________231209"
export gcDistro12="#! JammyPup32-22.04+8_JammyJellyfish___22123"
export gcDistro13="#! UPupFF+D-20.12+4_Focal-Fossa_____32__210410"
export gcDistro14="#! UPupFF+D_9.6_20.12+4_Focal-Fossa_64__23mar"
export gcDistro15="#! KineticPup32-22.10+2__________________230604"
export gcDistro16="#! Slacko-7.0_DpupS7_14.2________________220205"
export gcDistro17="#! Xenial-64_7.5_XL________________________220401"
export gcDistro18="#! S15Pup-64_22.12+1-T___________________220922"
export gcDistro19="#! Quirky_April-7.0.1F-uefi________________200511"
export gcDistro20="#! devuanpup-9.7.0-chimaera_4.0_i386____211206"
export gcDistro21="#! LxPupSc-slacko-20.01+0-T-k64__________200129"
export gcDistro22="#! slacko64_14.2_32-674-bit_comptible____220227"
export gcDistro23="#! NoblePup64-10.0-__K:huge.____________240220"
#!
#! ######################################################################################
#!
#! export gctoggle_X="true"    #! Not Used, was for  GUI GTK Toggle Control 
#! export gctoggleVmbX="true"  #! Not Used, was for GUI GTK Toggle Control 
#! default 
export  gcDistroReboot="/usr/bin/wmreboot"   #! standard if distro fails to "re"boot !
#! default: but, PEX distros may fault on ReBoot, PowerOff  with Page Not Found". 
#!
#! example: DISTRO_NAME="BionicPup64" from Distro-Specs
export gcSysDistroName="${DISTRO_NAME}"
export GTKDIALOG=gtkdialog
#!
export gcMrgBit32="1"   # 32bit flag  , assigned per each Distro , "0" is 64bit. #! used.
export gcMrgBit64="1"   # 64bit flag  , assigned per each Distro , "1" is 32bit. #!not used.
#!
#!
#! *****************************************************
#! export  gcLnchBshPge="0"  #! control for GTK-Launch-Bash-Page-msgWindows #!  Not Used 
#! button #1 to write flag config + Restart. 
#! ReStart to read flag config, Enable/DisAble "BASH Page Mode". 
#! button #2 to clear flag config + Restart.
#! *****************************************************
#!
#! *****************************************************
#! export gcMgrDevSubId=",,," #!  BXB    shows "Kernal#" 
#!      must be copy/paste from current active "DISTRO_SPECS, "PUPSAVE",  "PUPSFS", 
#!      given: 'sda1,ext4,/pup_UpuPXBB-SDA/upupbbsave-BXB' ,  generate "BXB" 
#!
#! DISTRO-SPECS does not reveal full ID string , so must generate
#!  PUPSFS='sda1,ext4,/pup_UpupB32B-SDA/puppy_upupbb_19.03.sfs'
#!  PUPSAVE='sda1,ext4,/pup_UpupB32B-SDA/upupbbsave-B32B'
#! example ID : "B32B", "B5B", "B64B", "N32N", "N64N", "T-6" is extracted from PUPSAVE .
export  gcMgrDevSubId="`echo -n "$PUPSAVE" | cut -f 3 -d '-'`"
#! *********************************************************
#(: ===============================================================================
#(: NOTE: lines with #(: prefix are collected by TXN for Programer's Documentation. 
#(:         provides the basis for team collaboration. 
#(: NOTE: 
#(:  via "TXN" , the line prefix "#(:"can be captured to a special text file 
#(:     as documentation of application process. 
#(:  the application "rc.z_TXN.sh" can extract these   "#(: "  lines to text file. 
#(:  rc.z_MGR.sh  source has been TXN minimized 
#(:
#(:  Main GUI code "GTK_notebook" method is user selectable.
#(:      GTK "NoteBook"  and  "BASH "Page" 
#(:
#(:  ******************************************************************************
#(:		[ -f /etc/rc.d/MORESFS ] && rm /etc/rc.d/MORESFS
#(:		if file                 then rm file 
#(:  ******************************************************************************
#(:  note:
#(:  /root/my-applications/bin/ is in the standard executable search path ,
#(:      as created by "init" and "profile" during bootup . 
#(:      as set by environment variable "PATH" .
#(:  Therefore, any executables placed in there will be found .
#(:  
#(:  ******************************************************************************
#(: 
#(:  "MGR 11"  utilizes TWO different main GUI code methods, for comparison. 
#(:       GTK "NoteBook" method based main GUI code "pages" , initial front page
#(:       BASH "Page" method based main GUI code "pages" , user selectable front page.
#(: 
#(:  ******************************************************************************
#(: 
#(:  MGR-11 
#(:  "Manager" for project development across 22+ Puppy OS , 
#(:  all "cased, cloned, hacked" by gae, 240101 initially. 
#(: 
#(:  ***************************************************************************
#(:  v2.0.0 there could be a save tmpfs->persistent-storage running...
#(:  while [ "`pidof snapmergepuppy`" ]; do sleep 1 ; done
#(: 
#(:  MGR.sh call:    echo -e "=="   is into  existing graphical < display >  
#(:  all text output to MGR system is directed.   ( via  "#>/dev/console" ).    
#(: 
#(:  BASH in XTERM :  WITH display :   
#(:       echo -e "==" >/dev/console
#(: 
#(:  BASH in XTerm : with NO display 
#(:       echo -e "==" 2>/dev/null
#(: 
#(:  *** Notes ************************************************************************
#(:  Development "MGR 5" moved on to a revised "MGR 6" 
#(:  Development "MGR 6" moved on to a revised "MGR 7" 
#(:  Development "MGR 7" moved on to a revised "MGR 8" 
#(:  Development "MGR 8" moved on to a revised "MGR 9" 
#(:  Development "MGR 9"  : Production  with BASH "PageBook" via GTK "toggle" 
#(:       with BASH coded independent floating windows "Back" "Dox" "Utility" "Vmb" 
#(:       with GTK Toggled System Page morphing screen for "MENU" select/build/reboot.
#(: 
#(:  Development "MGR 10" : Production  with GTK "NoteBook"
#(:       with GTK coded independent floating windows "Main" "Menu" "Dox" "Utility" 
#(:       with compacted "GTK NoteBook" style screen. 
#(: 
#(:  Development "MGR 11" : Production  with GTK "notebook" and BASH "page" coding. 
#(:       and is compatible with DebBookWorm.
#(:       with GTK  coded independent floating windows "System" "Menu" "BackUp" "Dox" "Utility" 
#(:       with BASH coded independent floating windows "System" "Menu" "BackUp" "Dox" "Utility" 
#(: 
#(:  Development "MGR 12" : Production  with GTK "notebook" and BASH "page" coding. 
#(:       and is compatible with "pup EXTon PEX" distros: PEX-Dev64, PEX-N64, PEX-Trixie-64R
#(:       *  BASH wmreboot/wmpoweroff may 'hang' with PEX-N64
#(:       *  so flgPEX will inhibit reboot/poweroff,  
#(:       *  so user must simply "EXIT"  
#(:       *     and use the distro calls to wmreboot/wmpoweroff, via GuiLogOff. 
#(:       *  thus. flgPEX isolates MGR "reboot/poweroff" function into hands of the distro system. 
#(:       with GTK NoteBook  coded independent floating windows "System" "Menu" "BackUp" "Dox" "Utility" 
#(:       with BASH pages coded independent floating windows "System" "Menu" "BackUp" "Dox" "Utility" 
#(: 
#(: 
#(:  ***********************************************************************************************
#(: 
#(:  ==================================================================================
#(:  PET install not required, 
#(:       MGR "project" has all required (dependent) scripts written into MGR Source Code. 
#(:       so, just place downloaded script into /root/my-applications and "run" .
#(:  Puppy Linux automatically provides "/root/my-applications" via "/etc/profile" script. 
#(:    just place downloaded script into "/root/my-applications". 
#(:  ==================================================================================
#(: 
#(:  **********************************************************************************
#(:  BASH is just a "shell" command interpreter as per POSIX definition. 
#(:  GTK is a GUI library, and meant to be imported in actual programming projects. 
#(:  You should not use GTK "directly" in BASH scripts.  
#(:  You should not use BASH scripts "directly" in Gtk. 
#(:  BASH and GTK are different code languages and different code interpreters. 
#(: 
#(:  ********************************************************************************
#(:   rc.z_MGR.   #(:   sh:64:3: note: Not following: 
#(:   /etc/DISTRO_SPECS was not specified as input (see shellcheck -x). [SC1091]
#(:  ***************************************************************************
#(:  rc.shutdown req: #(:  /usr/sbin/asktosave_session
#(:  ***************************************************************************
#(:   error note from GTK:
#(:   widget_vbox_input_by_command() : "<input> not implemented for this widget"
#(:      "Google Widget_vbox_input_by_command () input not implemented for this widget windows"
#(:      [ ! -d "${TMP_PATH}" ] && mkdir -p "${TMP_PATH}"
#(: 
#(:  ***************************************************************************
#(:  if  [ [ "$DISPLAY" ] || [ "$WAYLAND_DISPLAY" ] || [ "$XDG_CONFIG_HOME" ] ] ; then
#(: 	#accidentally running this script kills the system "MGR"
#(: 	exit 	#! see L:1386 and L:1429 and L:7908 and L:7909
#(:  fi
#(: 
#(:  ************************************************************************************
#(:  MGR can Change DISTRO bootup by rewriting "default" of "menu.lst" and then ReBooting
#(:  
#(:  ************************************************************************************
#(: =====================================================================================
#(:  author's system note:
#(:   snapmergepuppy normal parameters:  
#(:       "/initrd/pup_ro1" into "/initrd/pup_rw" 2>/dev/null 
#(:   snapmergepuppy message output to terminal is:
#(:       "Merging  /initrd/mnt/tmpfs/pup_rw  onto  /mnt/home/pup_UpupN7-SDA/upupnn+bwsave-7"
#(:   description:
#(:     * Where "/initrd/mnt/tmpfs/pup_rw" is the current Read/Write layer.
#(:     * Where "/mnt/home/pup_UpupN7-SDA/upupnn+bwsave-7" is the "/saveDATA" entity. 
#(: =====================================================================================
#!
#! note: MB Multi-Button  P.A.G.E. VERTICAL is deprecated. Not Used . 
#! export  gcOsSubId="VERT"    # Not Used.  "VERT" section deprecated.
#!
#!
#! Debug controllers:
    #! set -xe       # Start - x e
    #! set +xe      # Stop  + x e
#(: 
#(:  =======================================================================
#(:
#(:   "why" gtkdialog/box_help is used: 
#(:         gtkdialog/box_help will handle format and embedded color text codes.
#(:         MGR contains a Sbr of our gae hacked version of "box_help" 
#(:              Sbr_Box_Message 240101 gae which handles long lines and markup
#(:   "why" xmessage is not used; 
#(:         1) xmessage will NOT handle markup text codes.
#(:         2) gxmessage is preferred to handle  markup text codes. 
#!
#(: 
#(: ==========================================================================
#(:  begin: 
#(:  example of regular function header 
#(:     Each regular "function" has a "header" that begins with label like this:
#(:     The #(: lines are exported, via TXN.sh to become "Program Documentation". 
#(:     Programmers can build a stand-alone summary of All Code Modules .
#(: function Sys() : Main System Code Modules, "Sys_" 
#(: function Sbr() : Sub Modules , "Sbr_" 
#!
#(: 
#(: ================================================================
#(: fx Sys_yg3()  
#(: name: 
#(: param:
#(: purpose: Puppy Ascii Graphic Image for rc.sysinit and rc.shutdown 
#(: @param  #(:  @return  #(: call this way:  #(: called by:  #(: calls to: 
#(: returns:  #(: method:  #(: rationale:  #(: note:
#(: ==================================================
#(: function Sbr_zf4()  # example "#(: fx "
#(:  name: 
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
#(: # end:  example of regular "#(: fx " label
#(: ==================================================
#!
            #! TXN not culling this offset "comment" 
#(: 
#(: ================================================================
#(: fx Sbr_Sys_Case_PupMode #! ACTIVE   
#(: called by: 
#(: param:
#(: purpose: 
#(: calls:
#(: method: 
#(: sends:
#(: rationale:
#(: note :
#! #################################################################################
function Sbr_Sys_Case_PupMode() {    #! Not ACTIVE   
    #! --- Frugal only --- first possible check
    case $PUPMODE in
        12|13) ok=1 ;;  
        *) ERRORMSG="only (12|13)" #! assigned
            sleep 3
            #! Allow "Soft Error" 
            ;;
    esac
    } #! 
    export -f Sbr_Sys_Case_PupMode   
#! 
#(: 
#(: ================================================================
#(: fx Sbr_Sys_CalcRamObj #! ACTIVE   
#(: called by: 
#(: param:
#(: purpose: calculate Ram Obj Size 
#(: calls:
#(: method: 
#(: sends:	export gcPupRamObjMsg="${b} MB "
#(: rationale:
#(: note :
#! #################################################################################
function Sbr_Sys_CalcRamObj() {     #! req modularity
    #!
    #! "gen=RamObj ==============================================="
        #! ------------------------------------
        aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
        read -r b ccc <<< "$aa" # --- saveDATA size calc
        #!
        export gcPupRamObjMsg="${b} MB "
        export gcPupRamObjMsg0="${b}"
        #!
        ### changed from leading grave [`] to enclosing double-apostrophe ["]
        ### FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '"
        ### export gcFreeRamNow="${FREERAM}"
        ### export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
        #! "bot=RamObj ==============================================="
    } # end: 
    export -f Sbr_Sys_CalcRamObj 
#!
#!
#(:  ##########################################################
#(:  top: Fall-Thru "initz" for screen position and correction
#(:  ##########################################################
#(: 
#(:  ##################################################################################
#(:  BEGIN: process to match dimensions of main screen with current OS via "Distro_Name" 
#(:  ##################################################################################
#(: 
#(:  ===========================================================================
#(:  ### begin: Margin Adjust var ##############################################
#(:  ===========================================================================
#(: 
#(:  #(:  #(:  Developing Left-Right Center control 
#(:  Margin Adjustment for MGR application. 
#(:  for Main and Minor Gui Screens, 
#(:  purpose: to control different GTK format actions of 22 Puppy Linux Distros. 
#(:  use of "gcMrgOut"Adj control var may be deprecated as development continues. 
#(: 
#(:  ===========================================================================
#(:  rationale: 
#(:       GTK is 'almost' the same, across 22 Puppy Linux OS, 
#(:       but some differences have been found in GTK screen placement and "homogeneous" command. 
#(: 
#(:  rationale:  
#(:   Each DISTRO may handle GTK graphics slightly differently, 
#(:       specifically < window > "width" and "height" values. 
#(:   GTK Variations make a problem when building a consistent graphic screen layout. 
#(: 
#(:  ------------------------------------------------------------
#(:  Margin Adjust variables are left over  from MGR-9 , used for positioning GUI (test) in MGR-11.
#(:  Margin Adjust variables will be coded out (deprecated) in MGR-12. 
#(:      export gcMrgAdjOut="true"    # default value: Left/Right OutEdge Margin icon, overall control, 
#(:      export gcMrgAdjOut="true"    # default value: Left/Right OutEdge Margin icon, overall control, 
#(:   used one time in NoteBook GUI. 
#(:   implemented for B32B, et al, to control interaction with "homogenenous" placement 
#(:   goal: control this System GUI "Title" block to a centralized position on graphic layout, top line. 
#(:                  <label>"'-System--'"</label>
#(:                  <label>"'-Menu--'"</label>
#(:                  <label>"'-BackUp-'"</label>
#(:                  <label>"'-Dox/Help--'"</label>
#(:                  <label>"'-Util--'"</label> <action> "0"</action></button>
#(: 
#(:  Margin Adjust var may NOT be required in MGR-11. 
#(:  Margin Adjust are left over  from MGR-9 , used for positioning GUI for different Puppy Distro GTK. 
#(: 
#! ### begin: Margin Adjust var #######################################################################
#(:  ==================================================================================================
#(:  NOTE from MGR-9 about adjusting screen values to accomodate GTK across 22 different Puppy Distros. 
#(:  System GUI dimensions may require Adjustment across 22 different Puppy Linux Distros: 
#(:  Many Puppy Distros will run OK, without adjustments.  
#(:  Puppy Linux GTK assumes these screen setting at Main Gui 
#(:   Set this way:     width-request="'${gcMrgGuiWid}'"
#(:   Set this way:     height-request="'${gcMrgGuiHgt}'"
#(: 
#(:  Therefore any adjustments to fit GTK must be by a variable pushed to 
#(:     <hseparator width-request="$variable"> </hseparator>
#(: 
#(:  Important Calculating NoteBook screen adjustments !!!
#(:  Begin: calculate Adjustments for GTK in 22 different Puppy Linux Distros: 
#(: 
#(: --- differentiate Source for each Distro via DISTRO_SPECS :
#(:     via "DISTRO_NAME" 
#(:     via "DISTRO_PUPPYDATE" 
#(:     via "DISTRO_PUPPYDATE" 
#(: 
#(: --- differentiate each Distro via PUPSTATE or via "PSUBDIR" or via Date-of-ISO. 
#(: 
#(:  ***************************************************************************
#(:  for MGR with "Deep Thought" theme. 
#(:     Screen : so gcMrgGuiWid="1200"
#(:  for MGR with "Default" theme. 
#(:     Screen : so gcMrgGuiWid="1100"
#(: 
#(:  more tests required to differentiate various "themes" and screen dimensions 
#(:      which alter font size and screen usage. 
#(: 
#(: 
#(:  ===========================================================================
#(:  ### end: Margin Adjust var ################################################
#(:  ===========================================================================
#(: 
#(:  ################################################################
#(:  continue: Fall-Thru "initz" for screen position and correction
#(:  ################################################################
#(: 
#! ================================================================================
#! default  "NoteBook_Gui_Position" : values by experiment on each Distro. 
export gcMrgGuiWid="1200"   #! GENERIC GUESS.  YMMV!   Your Milage May Vary ! 
export gcMrgGuiHgt="880"    #! GENERIC GUESS.  YMMV!   Your Milage May Vary ! 
#!
export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"  
#!
export gcDistroBFW=""	#! Build-from-Wolf      Not Used
#! -------------------------------------------------------------------------------------
#! to do: develop testing required to differentiate some values
#!   v8, v9, v10, v11, v12   vs   24 different Distro OS
#! to obtain "width-request" adjustment for "main gui":  
#!
#!  "PEX" and "Trixie" require special tests to avoid warmBoot, warmReBoot, PowerOff.  
#!
#! -------------------------------------------------------------------------------------
#!  Some Distros require a 
#!                           <hbox homogeneous="true"> 
#!                              <hbox> 
#!                              </hbox>
#!                           </hbox>
#!  to control "homogeneous" option. 
#!
#! -------------------------------------------------------------------------------------
#! GTK dimensions will vary , depending on current "GTK Theme" as selected user !!!
#! -------------------------------------------------------------------------------------
#!
#! =======================================================================================
#! continue:  In-Line  "Fall-Thru"   Sbr_Case_Distro_Name   to calc NoteBook_Gui_Position
#! =======================================================================================
        #! Note: for PEX shutdown "hanging" , 251125-0450, gae
        #! this control pushes execution of reboot and poweroff out to the PEX system. 
        #! edit: 251125-0450, gae
        #!  1. deprecated : minor positional control var.  
        #!  2. maintained : gcMgrDistroSymbol  "Distro Symbol" 
        #!  3. added ChkBtnFlg, ChkMnxFlg, ChkPexFlg, ChkTtlFlg
        #!
        #! edit: 251125-0450, gae
		#! required to control PEX OS "reboot" "poweroff" hangups. ***
		#! required to control PEX OS "poweroff" "poweroff" hangups. ***
		#! method: 
        #! 	gcSysChkPexFlg captures "ReBoot" and "PowerOff" , Sbr_Cbx_??? changes into "ReStart"  
        #! 	thereby, 
        #!	pushing execution of wmreboot/wmpoweroff out to the PEX system wherein the "ERROR" exists. 
        #!
		#! control <button> <menu> :  true = control is Active
		#! MGR defaults: 
		export gcSysChkBtnFlg="true"		#! default  menu <button> cntrl
		export gcSysChkMnxFlg="false"       #! default  main System primary <Exit> <button>
		export gcSysChkPexFlg="false"       #! default  control MGR calls to Sbr_Cbx_ReBoot/PowerOff
        export gcSysChkTtlFlg="true"		#! default  cntl Title HomoGeneous page_System "title line"
		#! *****************************************************
        #!
        #!
#! #####################################################################
#! begin "CASE" for the OS name then assign specific values 
#! begin "CASE" for the OS name then assign specific values 
#! begin "CASE" for the OS name then assign specific values 
#! #####################################################################
        #!
        case "${gcSysDistroName}" in
        #!
        #! ############################################################
#!===*=================================================================
       "BionicPup32" )      
            #!
            #! B32B and B5B have same SysDistroName 
            #! more test required to differentiate "B32B" , "B5B" versus various "themes" 
                #! standard width-request for "main gui":  
                #!  v9:     B32B="1150"
                #!  v10:    B32B="1100"
                #!  v11:    B32B="1200"
                #!
                export gcMrgBit32="1"  
                 #! 
                 #! DISTRO_PUPPYDATE='Dec 2021'
            if [ "${DISTRO_PUPPYDATE}" = "Dec 2021" ] ; then  
                export gcMgrDistroRQ=""
                export gcMgrDistroID="B32B21"
                export gcMgrDistroSymbol="B32B-21"  #! ":Kernal:4"  B32B21
                export gcMgrIsoDate="iso_B32B_bionicpup32-8.0+30-uefi-220407-2305"    #! 230603  #! 190314
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                export gcMrgBit32="1"  
                export gcMrgGuiWid="1250"      #! for MGR-11 with "Deep Thought" theme. 
                export gcSysChkBtnFlg="true"		#! default  declared/assigned 
                export gcSysChkMnxFlg="true"        #! default  declared/assigned
                export gcSysChkPexFlg="false"       #! default  declared/assigned
                export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
                #!
            fi
            #! more test required to differenciate "B32B" and "B5B" 
            #! info taken from DISTRO_SPECS     #! 
            #! BionicPup32 Kernal 5 : B5B DISTRO_PUPPYDATE='Apr 2022'
                 #! 
            if [ "${DISTRO_PUPPYDATE}" = "Apr 2022" ] ; then  
                export gcMgrDistroID="B32B22"
                export gcMgrDistroSymbol="{B_32_B-22}"  #! ":K4"   B32B22    
                export gcMgrIsoDate="iso_B32B_bionicpup32-8.0+30-uefi-220407-2305"    #! 230603  #! 190314
                #!   
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                #!
                export gcMrgBit32="1"  
                export gcMrgGuiWid="1250"      #! for MGR-11.3 with "Deep Thought" theme. 
                #!
                export gcSysChkBtnFlg="true"		#! default  declared/assigned 
                export gcSysChkMnxFlg="false"        #! default  declared/assigned
                export gcSysChkPexFlg="false"       #! default  declared/assigned
                export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
                #! 
            fi
                #! more test required to differenciate "B32B" and "B5B" 
                #! info taken from DISTRO_SPECS     #! 
                #! BionicPup32 Kernal 5 : B5B DISTRO_PUPPYDATE='Dec 2023'
            if [ "${DISTRO_PUPPYDATE}" = "Dec 2023" ] ; then  
                export gcMgrDistroID="B5B23"
                export gcMgrDistroSymbol="{B_5_B-23}"  #! :K5    B5B23
                export gcMgrIsoDate="iso_BionicPup32-19.03-240602"   #! ? 240611 2312??
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                #!
                export gcMgrArCfgIdd="Upup-Bionic-Beaver-K5"
                export lcOsSubDir="pup_UpupB5B-SDA"
                export lcOsSubFn="/mnt/home/menu.lstB5B"
                #!
                export gcMrgBit32="1"  
                export gcMrgGuiWid="1150"  
                #!
                export gcSysChkBtnFlg="true"		#! default  declared/assigned 
                export gcSysChkMnxFlg="false"        #! default  declared/assigned
                export gcSysChkPexFlg="false"       #! default  declared/assigned
                export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
               #!
            fi
            #! export gcDistroBFW=""	#! Build-from-Wolf 
            #! BUILD_FROM_WOOF='testing;a07eeb774;2025-05-18 17:19:42 +0100'
            #! export gcDistroPuppyDate=""	#! DISTRO_PUPPYDATE='May 2025'"
            export lcOsSubDef="1"   # default position-selection
            export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
            export lcOsSubSplClrFg="green"   # "brown" is 8B6914 is "darkred"
            export lcOsSubSplClrBg="yellow" 
            export lcOsSubTout="11"
        ;;
        #!
        #! #############################################################
#!===*=================================================================
        "bionicpup64")
                export gcMgrDistroID="B64B"
                export gcMgrDistroSymbol="{B_64_B}"  #! :Kernal:4.19.23'"
                export gcMrgBit32="0"
                #! control 
                export gcSysChkBtnFlg="true"		#! default  declared/assigned 
                export gcSysChkMnxFlg="false"        #! default  declared/assigned
                export gcSysChkPexFlg="false"       #! default  declared/assigned
                export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
               #! values obtained from Distro 
                export gcMgrIsoDate="iso-B64B-bionicpup64-8.0-uefi-231218" 
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                #! 
                 export gcMrgGuiWid="1250"   
                 #!
            ;;
            #!
        #! #############################################################
#!===*=================================================================
        "tahrpup")
                export gcMgrDistroID="Tahr6"
                export gcMgrDistroSymbol="Tahr-6"
                #! control 
                export gcSysChkBtnFlg="true"		#! <button> visible=" "  
                export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
                export gcSysChkPexFlg="false"		#! -<Pex>     
                export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                export gcMrgBit32="1" 
                export gcMrgGuiWid="1100"   
                #!
		#! export gcDistroBFW=""	#! Build-from-Wolf 
		#! BUILD_FROM_WOOF='testing;a07eeb774;2025-05-18 17:19:42 +0100'
		#! export gcDistroPuppyDate=""	#! DISTRO_PUPPYDATE='May 2025'"
        ;;
        #!
			#! ############################################################## 
			#! more test required for "v:8"  "N32"
			#! NoblePup32 N-32-N
			#! iso_NoblePup32-24.04-241101
            #!      iso_NoblePup32-24.04-241101
            #!      DISTRO_PUPPYDATE='Feb 2024'
            #!      DISTRO_VERSION='24.04'
            #!      DISTRO_DB_SUBNAME='upupnn+bw'
			#!    DISTRO_NAME="NoblePup32"
			#!  "${PSUBDIR}" = "/pup_UpupN32-SDA" 
            #!     PSUBDIR=   '/pup_PEX-N64-SDA'
        #! #############################################################
#!===*=================================================================
       "NoblePup32")    #! Noble v:6 + v:7 upgraded, and v:8 is being tested.
            export gcMgrDistroID="N32N"
			export gcMgrDistroSymbol="N32N"  #! on system screen _K6.1.115
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>   
                
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
                export gcMgrIsoDate="iso_NoblePup32-24.04-241101"   #!
                export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
                export gcMrgBit32="1" 
                export gcMrgGuiWid="1100"   
                export gcMrgGuiHgt="600" 
				export lcOsSubDef="4" 
				export gxcMgrArCfgIdd="Noble32"
				export lcOsSubDir="pup_UpupN32-SDA"
				export lcOsSubFn="/mnt/home/menu.lstNoble32"
				export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
				export lcOsSubSplClrFg="yellow"
				export lcOsSubSplClrBg="purple"
				export lcOsSubTout="11"
            ;;
            #!
        #! #############################################################
#!===*=================================================================
       "ManticPup32")
            export gcMgrDistroID="M6M"
            export gcMgrDistroSymbol="M-6-M"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
           ;;
        #! #############################################################
#!===*=================================================================
       "S15Pup64")
            export gcMgrDistroID="S1564"
            export gcMgrDistroSymbol="S1564"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>   
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="0" 
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
            ;;
        #! #############################################################
#!===*=================================================================
       "JammyPup32")        #! Not Active
            export gcMgrDistroID="J32J"
            export gcMgrDistroSymbol="J32J"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>    
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
       "JammyPup64")        #! Not Active
            export gcMgrDistroID="J64J"
            export gcMgrDistroSymbol="J64J"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
       "KineticPup32")      
            export gcMgrDistroID="KK"
            export gcMgrDistroSymbol="K-K"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>    
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
       ;;
        #! #############################################################
#!===*=================================================================
        "xenialpup64")   
            export gcMgrDistroID="X64"
            export gcMgrDistroSymbol="X64"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            
            export gcMrgBit32="0"
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "ImpishPup32")   
            export gcMgrDistroID="I32"
            export gcMgrDistroSymbol="I-32"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"      
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "Slacko64 Puppy")   
            export gcMgrDistroID="S64"
            export gcMgrDistroSymbol="S64"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! <Pex>  is PEX OS     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="0"     
            gcMrgGuiWid="1100"   
            gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "fossapup64")	#! "UPupFF+D-64.96")		#! F96F.9.6  FF 64 bit fossopup64.9.6
            export gcMgrDistroID="F64F96"
            export gcMgrDistroSymbol="F64F.96"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"   
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "UPupFF+D")		#! FF 32 bit 
            export gcMgrDistroID="FF32"
            export gcMgrDistroSymbol="F32F"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"   
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "xenialpup")
            export gcMgrDistroID="X708"
            export gcMgrDistroSymbol="X708"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"  
            gcMrgGuiWid="1100"   
            gcMrgGuiHgt="600" 
        ;;
        #! #############################################################
#!===*=================================================================
        "LxPupSc")
            export gcMgrDistroID="SLXSC"
            export gcMgrDistroSymbol="SLxSc"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"      
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
            ;;
        #! #############################################################
#!===*=================================================================
        "EasyOS")
            export gcMgrDistroID="EOS"
            export gcMgrDistroSymbol="EasyOS"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"      
            export gcMrgGuiWid="1100"   
            export gcMrgGuiHgt="600" 
            ;;
            #!
        #! #############################################################
#!===*=================================================================
        "Quirky April")
            export gcMgrDistroID="QK7"
            export gcMgrDistroSymbol="Qk7"   
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   Qk7
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1"
            export gcMrgGuiWid="1100"  
            export gcMrgGuiHgt="850" 
            ;;
            #!
        #! #############################################################
#!===*=================================================================
       "BookwormPup32")     #! Debian Book Worm 32 
            export gcMgrDistroID="DBW32"
            export gcMgrDistroSymbol="DBW32"
			export gcSysChkBtnFlg="true"		#! <button> visible=" "  
            export gcSysChkMnxFlg="true"		#! <menu> visible=" "   DBW32
            export gcSysChkPexFlg="false"		#! -<Pex>     
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            gcMrgGuiWid="900"   #!    DBW32
            gcMrgGuiHgt="530" 
            ;;
            #!
        #! ############################################################
#!===*=================================================================
#! ===* === menu 21 === NoblePup64 === N64N ============================
		"NoblePup64")
#! $EXIT = "ARB_N64N"
#!
            export gcMgrDistroID="PN64"
            export gcMgrDistroSymbol="_PN64_"  #! on sys tem screen 
            #! control 
			export gcSysChkBtnFlg="true"		#! <button> visible="0" NoblePup64
            export gcSysChkMnxFlg="true"			#! <menu> visible="0"   NoblePup64
            export gcSysChkPexFlg="false"		#! -<Pex>    Puppy NoblePup64
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            
			 export gcMgrIsoDate="240401"   
			 export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
			;;
        #! ############################################################
#!===* begin NOT PEX DISTRO ===========================================
        #! ############################################################
#!===*=================================================================
		"BookwormPup64")
            export gcMgrDistroID="DBW64"
            export gcMgrDistroSymbol="Debian~BW-64"	            #! DBW64
            #! control 
			export gcSysChkBtnFlg="true"		#! <button> visible="1"  DBW64
            export gcSysChkMnxFlg="false"		#! <menu> visible="0"   DBW64
            export gcSysChkPexFlg="false"		#! -<Pex> Puppy DebBookWorm64
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            #! BUILD_FROM_WOOF='testing;a07eeb774;2025-05-18 17:19:42 +0100'
            gcMrgAdjOut="true"  #! deprecated &&  gcMrgAdjL="true"  &&  gcMrgRAdj="true"   
            gcMrgBit32="0"      
            #!
            export gcMrgGuiWid="900"    #!   DBW64
            export gcMrgGuiHgt="530" 
            #!
			;;
        #! ############################################################
#!	
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#!
        #! ############################################################
#!===*=================================================================
#!  DISTRO_NAME='puppex_dev'    PEX Devuan 64
		"puppex_dev")
            export gcMgrDistroID="PDV64"
            export gcMgrDistroSymbol="PEX-Devuan64"  			 #! on system screen 
            #! control #! set 251228-0928
			export gcSysChkBtnFlg="false"		#! <button> visible="0" 	puppex_dev	{PEX-Dev64}
            export gcSysChkMnxFlg="false"			#! <menu> visible="0"   	puppex_dev	{PEX-Dev64}
            export gcSysChkPexFlg="true"		#! +<Pex>  PEX-Dev64
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous "0"
            export gcMrgBit32="0" 
            export gcMrgGuiWid="1100"   
			export gcMgrIsoDate="iso_puppex-dev64-uefi-nvidia-251014"   #!
			export gcMgrPuppyDate="${daedalus}"
			;;
        #! ############################################################
#!
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#!
#! pup_Trx64_SDA	      Trixie pup 64 RETRO     ( not Wayland ) 
#! PSUBDIR='/pup_PTrixie64R1-SDA'
#! DISTRO_NAME='TrixiePup64-Retro'
#! DISTRO_DB_SUBNAME='trixie'
#! BUILD_FROM_WOOF="testing;74bc4359f;2025-11-02 08:25:45 +0000"
#! DISTRO_FILE_PREFIX='dpupt64r'
#! DISTRO_PUPPYDATE='Nov 2025'
#! DISTRO_VERSION=2509
#! ### was a Legacy, Retro1, Retro2 ### TrixiePup64Retro ################################
#!===*=================================================================
		"TrixiePup64Retro")
            export gcMgrDistroID="PT64R"
            export gcMgrDistroSymbol="{Trixie64R}"  #! on system screen 
            #! control 
			export gcSysChkBtnFlg="true"		#! <button> visible="1" 	trixiepup64
            export gcSysChkMnxFlg="false"		#! <menu> visible="0"   	trixiepup64
            export gcSysChkPexFlg="false"		#! -<Pex> Pex-Trixiepup64 "OK" 
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
			#!
			export gcMgrIsoDate="iso_TrixiePup64_Retro_251123"   #!
			export gcMgrPuppyDate="251123"
            export gcMrgBit32="0" 
            export gcMrgGuiWid="1100"   
			;;    #!
        #! ############################################################

#! ===* === menu 49 === Tix64 =======================================================
#! pup_Tix64_SDA	    pup Tix 64 
#! PSUBDIR='/pup_Tix64_SDA'
#! DISTRO_NAME='TixPup64'
#!
        #! ############################################################
#!===*=================================================================
		"TixPup64")		#! Not Active
    
            export gcMgrDistroID="PTix64"
            export gcMgrDistroSymbol="{PTix64}"  #! on system screen 
            #! control 
			export gcSysChkBtnFlg="true"		#! <button> visible="1" 	trixiepup64
            export gcSysChkMnxFlg="false"		#! <menu> visible="0"   	trixiepup64
            export gcSysChkPexFlg="false"		#! ?<Pex> PexTrixiepup64 Not Developed 
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
			#!
			export gcMgrIsoDate="iso_extix-25.12-2-64bit-lxde-refractasnapshot-1870mb-251205"   #!
			export gcMgrPuppyDate="251205"
            export gcMrgBit32="0" 
            export gcMrgGuiWid="1100"   
			;;    #!
        #! ############################################################
#!===*=======================================================================
           *)       #! End of Normal Distro OS testing: DEFAULT ---  default 
			#!	 DEFAULT ---  default     DEFAULT ---  default     DEFAULT ---  default 
            export gcMgrDistroID="XXX"
            export gcMgrDistroSymbol="XXX"
            #! control 
			export gcSysChkBtnFlg="true"		#! <button> visible="1"  
            export gcSysChkMnxFlg="1"			#! <menu> visible="1"   NORMAL Default 
            export gcSysChkPexFlg="false"		#! ?<Pex>  XXX 
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            #!  
            export gcMrgAdjOut="true"   #! deprecated	 && gcMrgAdjL="true"	&& gcMrgRAdj="true"   
			export lcOsSubDef="50"   # default "top" position-selection in "menu.lst"  
			export lcOsSubTout="- # Generic 'ORGinal' has no timeout ."   
			
			export lcOsSubId="ARB"     #! default to full menu format. 
			export gcMgrArCfgIdd="ARB_ORGinal"
			export lcOsSubDir="Main-ORG-ORGinal-SDA" 
			export lcOsSubFn="/mnt/home/menu.lstORG"   
			export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
			export lcOsSubSplClrBg="blu"
			export lcOsSubTout="- # Generic 'ORGinal' has no timeout ."   

			export gcMgrIsoDate="200000"     #! UNK  "real date" from iso file. 
			export gcMgrPuppyDate="200000"   #! UNK  "${DISTRO_PUPPYDATE}"
            export gcMrgGuiWid="1100"   
            export gcMrgBit32="0"     
            ;;
        esac
        #! #############################################################
#!
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#! ### PEX ### Special for PupEXton ####################################
#!
#! pup PEX N64 has a DISTRO_SPECS
#! pup PEX N64 has a DISTRO_SPECS
#! pup PEX N64 has a DISTRO_SPECS
#! ===* === menu 47 === PEX-N64 ==========================================
			#! gcSysDistroName is empty , because PEX_N64 has no DISTRO 
			#! PUPSTATE has this:
			#! PSUBDIR='/pup_PEX-Dev64-SDA'
			#! "PEX-N64-SDA")	#! PEX Noble 64   #! PEX-N640
			#! PSUBDIR='/pup_PEX-N64-SDA'
			#! * DISTRO_NAME='puppex_dev'
			#! DISTRO_VERSION=13.0
			#! DISTRO_BINARY_COMPAT='devuan'
			#! DISTRO_FILE_PREFIX='puppex'
			#! * DISTRO_COMPAT_VERSION='daedalus'
			#! Iso="iso_NoblePup64"  
			#! DISTRO_NAME='NoblePup64'   
			#! version number of this distribution: DISTRO_VERSION=24.04
#! =========================================================================
#! Special Trap for PEX-N64
#! Special test for PEX N64 without a DISTRO_SPECS
#!		"PEX_NoblePup64")
#! $EXIT = "ARB_PN640"
#! DISTRO_FILE_PREFIX='upup64n'
#! [ ${PSUBDIR} = "/pup_PEX-N64-SDA" ]  from PUPSTATE
        #! ############################################################
#!===*=================================================================
if [ ${PSUBDIR} = "/pup_PEX-N64-SDA" ] ; then 
#!     PSUBDIR     /pup_PEX-N64-SDA  
            export gcMgrDistroID="PexN64"
            export gcMgrDistroSymbol="{PEX_N64}"  #! on system screen 
	
			export gcSysChkBtnFlg="true"		#! <button> visible="1"     NoblePup64
            export gcSysChkMnxFlg="true"		#! <menu> not visible="0"   NoblePup64
            export gcSysChkPexFlg="true"		#! -<Pex>  is PEX OS "1"    NoblePup64
            export gcSysChkTtlFlg="true"		#! <Ttl> Title is HomoGeneous
            export gcMrgBit32="1" 
            export gcMrgGuiWid="1100"   
            
			export gcMgrIsoDate="240401"   #! 
			export gcMgrPuppyDate="${DISTRO_PUPPYDATE}"
fi #! [ ${PSUBDIR} = "/pup_PEX-N64-SDA" ]
#! #####################################################################
#! ##################################################################################
#! END: process to match dimensions of main screen with current OS via "Distro_Name" 
#! ##################################################################################
#!
#! 
#!
#!
#! ##########################################################
#! top: Fall-Thru "initz" for screen position and correction
#! ##########################################################
#!
#!
#! =============================================
#! rc.z_MGR , the "Manager"  , the "FrameWork"
#! filename.sh is the name format,  so GEANY sees a 'script' as executable.
#! chmod +x rc.z_MGR.sh might be required for duplicate/export files.
#! "cased+cloned-and-hacked" by gae.
#! 
#! GNU bash is the shell.
#! Gtk is the gui / dialogue builder.
#!
#! ========================================================================
#! GTK is almost the same, across 21 Puppy Linux OX, but some differences.
#! These memvar are tested against DISTRO_SPECS like this: 
#!      case "${gcSysDistroName}" in  
#!         "bionicpup64")      gcMrgAdjOut="'${false}'" ;;
#!  early developmental versions used these to conrol screen position:
#!  gcMrgAdj Out ,  gcMrgAdj LLL  ,  gcMrgAdj RRR  
#!
#!  gcMrgAdj var are being deprecated, because not requred in NoteBook method. 
#!
#!
#! ------------------------------------------------------------
export gcMgrDevFirstRun="1"     
#!
export gcMgrDevID="Manager:.EmGr.DblClk.MnxGen.GTK-NoteBook" 
export gcMgrDevDesc=".Embedded-Graphics..DoubleClickButtons..GTK-NoteBook.."
#!
export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
export gcSysSaveFn="`echo -n "$gcSysSave" | cut -f 3 -d '/'`"
export gcSysIdFull="${gcSysSave}"           # ${PUPSAVE} # like "iso-KineticPup32-22.10"
#!
export gcSysDevHw="MCT-AMD-500_Bios2009_64-32"  # Dev Computer HardWare. see "Sbr_Dump_SYS-Declare" 
#! * system: machine: `uname -m` 
#! * processor: `uname -p`      
#! * platform: `uname -i` 
#! * operating sys: `uname -o` 
#!
export gcBootOsHd="SDA"         # OS Hard-Drive, required in menu.lst build
#!
export gcBootOsExe="${0}"       # This Executable Bash Script
#!
#!
#! ### gcSysKillProc #####################
#! ### purpose: disable certain routines, hide from public access, if prg released as "Sample". 
#! ###    for example: 
#! ###    in a "Sample distribution" we kill calls to external programs, 
#! ###    These external programs are "requisites" but not delivered via this sample project.
export gcSysKillProc=0  ### used by Sbr_KillProc to enable/inhibit some subroutines. 
#! ### if [ ${gcSysKillProc} -eq 0 ] then do "enable" all GTK dialog <button> DEV process, 
#! ### if [ ${gcSysKillProc} -eq 1 ] then do "stub kill" for some GTK dialog <button> PRODUCTION process
#! ### gcSysKillProc #####################
#! ###    some of these external programs were written internal in the "MGR" source code.
#! ###    some of these external programs were deleted.
#!
#! ************************************************************
#! E3R "basename" : E3R will run two paths ***
export gcRootHomeMyUsrDev="/mnt/home/MY_/usr-share/My_Dev_/" 
export gcRootAppsBin="/root/my-applications/bin/"
export gcRootApps="/root/my-applications/"  # Puppy Linux always paths to this. 
#! PET install not required, just place downloaded scripts in /root/my-applications.
#! *************************************************************************************
#!
export gcSysDistro_File_Prefix="${DISTRO_FILE_PREFIX}"  # Not Used
export gcSysDistroName="${DISTRO_NAME}" 
export gcSysDistroVersion="${DISTRO_VERSION}"
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_DB_Subname="${DISTRO_DB_SUBNAME}"
#!
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#!
#! touch "/tmp/MGR_Page_Control.flg"
export MGR_Page_Control_flg="/tmp/MGR_Page_Control.flg"  
#!
export gcNBWC="false"     # flip +/- gcNBWC
#(: ================================================
#! 
#! Data & Flag for Embedded Graphic Image ### backup and flag-file
export gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"   # Image Master 
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#!
#! ################################################
#! end: Fall-Thru "initz" 
#! ################################################
#!
#!
#!
#! ################################################
#! begin: Fall-Thru "fx Sbr SubRoutines" 
#! ################################################
#!
#! end ====== Sbr_Splash code must be at top =====================================================
#!
#(: 
#(: ================================================================
#(: fx Sbr_Str2DevTrm  #! Standard  Terminal/devconsole display.    #! ACTIVE   
#(: last edit: 240218-0500   
#(: called by: everyone.  #  Preferred for Terminal display.
#(: parameters:  Sbr_Str2DevTrm uses :
#(:      ## STRING message
#(:      ## COLOR name or number
#(:      ## MARGIN number 
#(:      ## Destination Display lcS2Topt
#(:
#(: purpose: Display "String" to DevConsole or Terminal
#(: calls:
#(: sends:
#(: rationale: universal MessageStringDisplay for both Xterminal and BASH-application. 
#(: note :
#(: method: Sbr_Str2DevTrm "char number" "color number" "margin number"
#(: example:   Sbr_Str2DevTrm "$lcMsgStr" "7" "7" 
#(:
#! #################################################################################
function Sbr_Str2DevTrm() {  #! ACTIVE   #! Standard  "terminal/devconsole" display.
#! Preferred for Terminal/console display.
#! # param:  "char string"  "color"  "margin" "Console-Terminal"
lcS2TStr=${1}   # ## STRING message
lcS2TClr=${2}   # ## COLOR name or number #! COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}   # ## option "C"onsole or "T"erminal  #! default to "T"erminal ###
#!
lcDevConsole=""    #! ${4} # default to "T"erminal ###
#!
case "${lcS2Topt}" in   #! TARGET 
   "C") lcDevConsole=" > /dev/console" ;;   #! use inside a "script" +/- GTK GUI. 
   "T") lcDevConsole="" ;;					#! use inside a "terminal" running script NO GTK gui.
    *)  lcDevConsole="" ;;  #: default "T"erminal mode for use with Geany "T"erminal process.
esac
#!
case "${lcS2TMrg}" in   #! MARGIN
   0|"0") /bin/echo -n -e "\\033[0G"   ${lcDevConsole} ;;
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"  ${lcDevConsole} ;;
esac
#!
case "${lcS2TClr}" in   #! COLOR:  "1" is in "31:  ;  "2" is in "32"  ;  "3" is in "33" 
    ""|"0")                                         /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default yellow
    "31"|"32"|"33"|"34"|"35"|"36"|"37"|"38"|"39")   /bin/echo -n -e "\\033[1;${lcS2TClr}m"   ${lcDevConsole} ;; 
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: auto update/inject specific color nbr
esac
#! CLEAR Lingering Color setup at end-of-line
    /bin/echo -n "${lcS2TStr}"  ${lcDevConsole} 
    /bin/echo -e "\\033[0;m"  ${lcDevConsole} 
    return  0
#!
} #
export -f Sbr_Str2DevTrm     #! Standard  "terminal/devconsole" display.    #! ACTIVE   
#!
#!
#(: 
#(: ================================================================
#(: fx Sbr_Splash_It    #! Standard Splash   #! ACTIVE
#(: Standard Splash_It : param "Str" "fg"     "bg"  "sleep" "opt"
#(: Standard Splash_It : param "Msg" "yellow" "blue" "3"    ""
#(: called by: many ! 
#(: param:	 "Char-String" "fg" "bg"  "sleep"  "opt"
#(: purpose: Standard Splash called by many. 
#(: method:  /usr/lib/gtkdialog/box_splash
#(: sends:	dialog to video gui . 
#(: rationale: 
#(:
#(: note : param #4 is "sleep" timeout for internal "kill" splash. 
#(:
#(: note : param #5 will "Over-Ride" param #4 "sleep". 
#(: note : param #5 is normally "not sent" ;   not "0" , not "1", just not sent .
#(: note : IF "opt" is sent as "" or any value, 
#(: ... THEN  "sleep" timeout to "kill" is ignored, 
#(:	... THUS dialog will "Linger" until later "kill" ! 
#(: ... THEREFORE this is useful as "background" for sbr delivering "foreground". 
#(: 
#(: ====== Sbr_Splash code must be at top of source because of many calls  ===
#! ################################################################################
function Sbr_Splash_It() {   #! ACTIVE   #! Standard Splash 
    #!  Standard Splash : param "Str" "fg" "bg" "sleep" "opt"
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
    if [ ! $4 ] ; then  #  IF not param $4, THEN  Sleep safe default
        lcMsgSlp="1"  #  1  usually very quick.  
    fi
    #! test for Sleep quick
    if [ "0" = "$4" ] ; then  # Sleep quick
        lcMsgSlp=".5"  # < .5  usually does not make it to the screen, timing issues. 
     fi   
    #! else keep the sleep param as sent originally 
    #!
        #! -D---
    /usr/lib/gtkdialog/box_splash -fg ${lcMsgColorFg} -bg ${lcMsgColorBg} -border true  -close never -text "${lcMsgStr}     " &
        RETVAL=$?
        GTKPID_Cold_Splash=$!
        sleep ${lcMsgSlp}
    #!
    lcMsgOpt="$5"   # if not, then standard is do the kill now !
    #! if any parameter $5 is sent, even a null "", then True. 
    if [ ! "$5" ] ; then  # IF   No Option,  THEN   kill pid ( compatible / normal)
        n=0
        kill ${GTKPID_Cold_Splash}  2>/dev/null
        #!   IF   NOT EXIST flag, then KILL.  This is Normal.
        #!   option must be "Not Sent" ; not this: "" is "null" 
    else
        n=0
        #(:  Sbr_Splash_Wait     via parameter    "opt" = "" 
        #!   IF  EXIST even "" flag, then WAIT to KILL later manually. 
        #!   ELSE  must kill manually in calling subroutine. 
    fi    
    } #
    export -f Sbr_Splash_It
    #!
    #!
#(: 
#(: ================================================================
#(: fx Sbr_Splash_Banner
#(: called by: Main GUI "QUIT Loose-Code Program"
#(: param:
#(: purpose: #! "QUIT Loose-Code Program"
#(: called by :  " Fall Thru " for Loose-Code End-of-Program.  
#(: called by :  hitting the "CLOSE" screen "RED" button to "kill" all. 
#(: method: Standard End of Source Banner  
#(: sends:
#(: rationale:
#(: note : 
#(: ====== Sbr_Splash code must be at top =============================
#(:
#! #####################################################################
function Sbr_Splash_Banner() {  #! Not ACTIVE    
        n=0
        echo
        echo
        echo "*======== $1  NIL  $1 ========*"  
        lcMsgStr0=$1
        #!  # each is a subroutine call with parms.
        #!  # banner is called at Line 10176 for final "Fall-Thru" splash
        echo
        echo        
        lcMsgStr="*===->->-> ${lcMsgStr0} ===*"    # text fg mrg 
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
         #! colorful rainbow splash for FALL-THRU 
         #! and trap for 'loose' code.  Str, Mgn, Color
         lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
        DISTRO_NAME_Z="DistroName: $DISTRO_NAME"
        lcMsgStr="=== ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        DISTRO_NAME_Z="Alpha:"$(echo $DISTRO_NAME | tr -dc 'A-z')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        DISTRO_NAME_Z="Numbers:"$(echo $DISTRO_NAME | tr -dc '0-9')
        lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
        lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
        lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
    sleep 3
} # end
export -f Sbr_Splash_Banner
#! end ====== Sbr_Splash code must be at top =====================================================
#!
#(: 
#(: ================================================================
#(: fx Sbr_Sys_SMP			 #! ACTIVE   
#(: called by: 
#(: param:
#(: purpose:  SnapMergePuppy  R0 into SaveFile
#(: calls:
#(: method: ionice -c 1 snapmergepuppy    
#(: sends:
#(: rationale: 
#(:		ionice --help
#(:     BusyBox v1.30.1 (2019-04-24 21:49:26 +08) multi-call binary.
#(:     Usage: ionice [-c 1-3] [-n 0-7] [-p PID] [PROG]
#(:     Change I/O priority and class
#(: 	-c	Class. 1:realtime 2:best-effort 3:idle
#(: 	-n	Priority
#(: note :
#(:  ### dox for "  ionice -c 1 snapmergepuppy  "  
#(:  1 = realtime  first access to hard-drive , is Best Security.  ! Not Shared.    
#(:  2 = best effort  is  shared access with any higher priority    
#(: 
#! #################################################################################
function Sbr_Sys_SMP() {    #! Active
    n=0
lcMsgStr="
.
.      ionice -c 1 snapmergepuppy  ()
.
. "
/usr/lib/gtkdialog/box_splash -fg yellow -bg purple -border true -close never -text "${lcMsgStr}" & sleep 2
GcPidSplashAX=$!  #! First Splash will wait for  kill ${GcPidSplashA} 
#!
#! ===================================================================
#! begin: Sbr_Sys_SMP
#!
#! from asktosave_session  	#! Sbr_Sys_SMP
  if [ "$(pidof -s X Xorg $(cat /etc/windowmanager))" != "" ]; then
   DLGEXE="Xdialog"		#! Sbr_Sys_SMP
   [ "$DISPLAY" == "" ]         && export DISPLAY=:0
   [ "$WAYLAND_DISPLAY" == "" ] && export WAYLAND_DISPLAY=wayland-0
   [ "$XDG_RUNTIME_DIR" == "" ] && export XDG_RUNTIME_DIR=/tmp/runtime-root
  else
   DLGEXE="dialog"
  fi
    #! end: Sbr_Sys_SMP
    #! ===================================================================
    #!
    #!
#! This is Sbr_Sys_SMP ========================
ionice -c 1 snapmergepuppy    
#! This is Sbr_Sys_SMP ========================
    #!
    kill ${GTKPID_Splash_It}
    sleep 1
	kill ${GcPidSplashAX}
    #!
} #! 
export -f Sbr_Sys_SMP
#!
#! begin === PEX =====================================================
#! begin === PEX =====================================================
#! begin === PEX =====================================================
#(: 
#(: 
#(: ================================================================
#(: fx Sbr_Sys_Set_PEX			 #! ACTIVE   
#(: called by: Shutdown, 
#(: param:
#(: purpose: 
#(: calls:
#(: method: #! code copied from "PupEXTon" save2flash process
#(: sends:
#(: rationale: several PupEXton Distros are in my Installed OS for testing. 
#(: note :
#! #################################################################################
function Sbr_Sys_Set_PEX() {    #! NOT ACTIVE
#!    
. /etc/rc.d/PUPSTATE
#!
#! from asktosave_session   #! Sbr_PXB_Set_PEX
  if [ "$(pidof -s X Xorg $(cat /etc/windowmanager))" != "" ]; then
   DLGEXE="Xdialog" 	#! Sbr_Sys_Set_PEX
   [ "$DISPLAY" == "" ]         && export DISPLAY=:0
   [ "$WAYLAND_DISPLAY" == "" ] && export WAYLAND_DISPLAY=wayland-0
   [ "$XDG_RUNTIME_DIR" == "" ] && export XDG_RUNTIME_DIR=/tmp/runtime-root
  else
   DLGEXE="dialog"
  fi
} #! end: Sbr_Sys_Set_PEX from Sbr_Sys_Set_PEX
export -f Sbr_Sys_Set_PEX
#!
#! end ====== PEX =====================================================
#! end ====== PEX =====================================================
#! end ====== PEX =====================================================
#!
#(: 
#(: ================================================================
#(: fx Sbr_Splash_PupHead   #! 
#(: called by: Main Quit
#(: param:
#(: purpose: 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! ######################################################################
function Sbr_Splash_PupHead() {  # Active  called from internal process
    echo  " "   #>/dev/console
    #(: 
    #(: ================================================================
    function Sbr_Sys_yg3() { 
        #(: name: 
        #(: param:
        #(: purpose: Puppy Ascii Graphic Image ( also for rc.sysinit and rc.shutdown )
        #(: @param #(:  @return #(: call this way: #(: called by: #(: calls to: 
        #(: returns: #(: method: #(: rationale: #(: note:
        #(:
        n=0
lcMsgStr1="/     -/osyyyysosyhhhhhyys+-
    -ohmNNmh+/hMMMMMMMMNNNNd+dMMMMNM+
  yMMMMNNmmddo/NMMMNNNNNNNNNo+NNNNNy
.NNNNNNmmmddds:MMNNNNNNNNNNNh:mNNN/
-NNNdyyyhdmmmd dNNNNNmmmmNNmdd/os/"
lcMsgStr2="/
.Nm+shddyooo+/smNNNNmmmmNh.   :mmd.
 NNNNy:    ./hmmmmmmmNNNN:     hNMh
 NMN-    -++- +NNNNNNNNNNm+..-sMMMM-
.MMo    oNNNNo hNNNNNNNNmhdNNNMMMMM+
.MMs    /NNNN/ dNmhs+:-  yMMMMMMMM+
 mMM+     .. sNN+.      hMMMMhhMMM-
 +MMMmo:...:sNMMMMMms:  hMMMMm.hMMy"
lcMsgStr3="/ yMMMMMMMMMMMNdMMMMMM::/+o+/
   sMMMMMMMMMMN+:oyyo:sMMMNNMMMNy
    :mMMMMMMMMMMMmddNMMMMMMMMmh/
      /dMMMMMMMMMMMMMMMMMMNdy/
        .+hNMMMMMMMMMNmdhs/.
            .:/+ooo+/:-." 
        lcMsgStr11="'\\033[1G\\033[1;31m ${lcMsgStr1}'"
        lcMsgStr12="'\\033[1G\\033[1;37m ${lcMsgStr2}'"
        lcMsgStr13="'\\033[1G\\033[1;34m ${lcMsgStr3}'"
        /bin/echo -en "${lcMsgStr11}" 
        /bin/echo -en "${lcMsgStr12}" 
        /bin/echo -en "${lcMsgStr13}" 
        echo " "
        sleep .5
        #! that's all !
    } # end 
        #(:
    Sbr_Sys_yg3 #! calls above 
    export -f Sbr_Sys_yg3
        #(:
}
export -f Sbr_Splash_PupHead
#!
#(: 
#(: ================================================================
#(: fx Sbr_Splash_Neo   #! Not Active
#(: called by: Main Quit 
#(: param:
#(: purpose: 
#(: note:  not called because 
#(:  All Distros Do NOT have "neofetch" available. 
#(:  many Puppy Distro do not have a "neofetch"  available. .  
#(:  very long delay during seek "not-found" for filename ! 
#(:  therefore, deprecated.
#(: note: 
#(:     not called because 
#(:     main ( ) screen titling is certain, quicker / more important.
#!
function Sbr_Splash_Neo() { #! Not Active
    echo -e "         = = "      #>/dev/console
    echo -e "       =     ="     #>/dev/console
    echo -e "      =       = "   #>/dev/console
        #~ neofetch  --ascii_colors 3 1 2   
		#~ sleep 3
    neofetch --ascii_colors 4 7 1    #! >/dev/console  && sleep 3
        #! echo "neo 3 1 2" > /dev/console &&   echo "neo 3 1 2" 
        #! lcMsgStr="...    neo 3 1 2    ... " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    #! else,  let it ignore and skip over, non-fatal-error ! 
    #! not called because main ( ) screen titling is certain, quicker / more important.
#! that's all !
} # end 
export -f Sbr_Splash_Neo
#!
#! ### END ### Splash ####!
#!
#!
#(: 
#(:
#(: ================================================================
#(: fx Sbr_FnNotFound
#(: called by: ReStart, ReBoot, ReQuit PowerOff
#(: param:
#(: purpose: if any filename/file   is Not Found
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#! ###########################################################
function Sbr_FnNotFound() {  # ACTIVE
    n=0
    echo "---  ERROR: ${1}  File Not Found. --- " 
    Sbr_Splash_It " ERROR: ${1}  File Not Found."  "yellow" "black" "5"   #! -D---
} #! end 
export -f Sbr_FnNotFound
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Box_Message    # Simple Message sbr based on gtkdialog box_help  written by GAE
#(: called by :
#(:    GuiHLP+  to  Sbr_Dump_HLP
#(:    GuiFAQ+  to  Sbr_Dump_FAQ
#(:    GuiFAQ+  to  Sbr_Dump_Design 
#(:    GuiFAQ+  to  Sbr_Dxstro_Window
#(:
#(: fx Sbr_Box_Message   by gae 240101
#(: receives param : Header$1 and loads '/tmp/box_help' for Top-Edge Window Title. 
#(:
#(: fx Sbr_Box_Message   by gae 240101
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" , by gae 240101
#(:   provides wider screen width.
#(:   based directly on gtkdialog box_help code processes.
#(:
#(: ================================================================
#(: fx Sbr_Box_Message   by gae 240101
#(:   usage :
#(:   HEADING is a short "title bar" description.
#(:   XML code is custom written to format "/tmp/box_help".
#(: returns:
#(:
#(:
#(: ================================================================
#(: fx Sbr_Box_Message   by gae 240101
#(: method:
#(:     gtkdialog --center -p XML-Format-file (which loads /tmp/box_help )
#(: purpose : publish '/tmp/box_help'
#(:   "case and hack"  rewrite based on "box_help" 
#(:   based on gtkdialog box_help code processes.
#(:   provides wider screen width.
#(:
#(: first written : fx Sbr_Box_Message   by gae 240101
#(: note:
#(: purpose :  Simple Message sbr based on gtkdialog box_help
#(:   "case and hack"  rewrite based on "box_help" 
#(:   which allows author to change the "lead-in" XML code
#(:   and thus change the "format" of this custom "message_box".
#(:     Sbr_Box_Message does provide a "OK" user button.
#(:     Sbr_Box_Message does provide a "markup" on text for colors.
#(:     Sbr_Box_Message does allow dimension changes to box.
#(:     Sbr_Box_Message does not require a "URL" param.
#(:     Sbr_Box_Message requires using the "OK" button to exit.
#(: note:
#(:     XML assumes /tmp/box_help and "gtkdialog -p" internal code.
#(:     XML sets up the markup and color options for the imported text.
#(:     XML sets up the "OK" control button, and will show/close/"OK"
#(:
#(: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#(: Message Box Routines used:  Sbr_Box_Message  and  gxMessage 
#(:
#(:
#(: ================================================================
#(: fx Sbr_Box_Message   ,  by gae 240101
#(:  SPECIAL: internal hack on gtkdialog box_help, rewrite by gae, 240101
#(: used by "Hlp" , "Distro", "Proc", "Faq"
#(:
#(: gxMessage   Display Information: by gae 240101
#(:     expects plain text .
#(:     displays 45 char long, then wraps.
#(:     line-length expands to 72++
#(: 
#! ###############################################################
function Sbr_Box_Message() {  # ACTIVE   #! special rewrite by gae, 240101
    n=0
    export TEXTDOMAIN=libstardust
    export OUTPUT_CHARSET=UTF-8
    #
    if [ "$1" ] ; then
        Box_Msg_Heading="${1}"
    else
        Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
    fi
    #!
#! This Special "window" Is Used by Help and FAQ  : 
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
      <label>"'$(gettext 'Ok')_!--required--!'"</label>
    </button>
  </hbox>
</vbox>
</window>'
#! Above: MUST click the "OK" button, else will linger on display stack . 
#!    timeout 15s 
    gtkdialog --center    -p Box_MessageXML  #! assumes '/tmp/box_help'    #! -D---
        #! gtkdialog is self-contained. 
            RETVAL=$?
            gtkPidXML=$!
            kill $gtkPidXML
    #!
    } #
    export -f Sbr_Box_Message
#! ACTIVE   for Dump_Help and Dump_FAQ
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_S2F1_MI    #! Internal   :1: SMP1_MI : #! ACTIVE
#(: called by:  To Do: call direct INTERNAL ( no dependency ) 
#(: param:  
#(: purpose: wrapper for external system call to SMP "Save2File" 
#(: method: 
#(: sends:
#(: rationale:
#(: 
function Sbr_S2F1() {   #! ACTIVE if gui-S2F1
    n=0
    Sbr_Sys_SMP
    Sbr_Splash_It ": DONE : SMP1_MI :"  "yellow" "red"  "1"         #! -D---
} #! end
export -f Sbr_S2F1    
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_S2F3_MI  # Internal  #! :3: SMP3_MI  #!  #! ACTIVE   
#(: called by:  To Do: call direct INTERNAL ( no dependency ) 
#(: param:  
#(: purpose: wrapper for external system call to SMP "Save2File" 
#(: method: 
#(: sends:
#(: rationale:
#! ========================================================================
function Sbr_S2F3() {   #! ACTIVE  if gui-S2F3  then multi-run ionice SMP
     n="0"
    Sbr_Sys_SMP
    Sbr_Sys_SMP
    Sbr_Sys_SMP
    Sbr_Splash_It ": DONE : S2F3 :"  "yellow" "red"  "1"         #! -D---
} #! end
export -f Sbr_S2F3    
#! ========================================================================
#!
#!
#!
#!
#!
#! #####################################################################
#! ===Build_Menu.lst_===================================================
#! ===Build_Menu.lst_===================================================
#!
#! ## begin: Menu_Main_Echo to file method. 
#! ## menu.lst will be Active after ReBoot .
#!
#! ===Build_Menu.lst_=======================================================
#! ===Build_Menu.lst_=======================================================
#!
#(:
#(: ================================================================
#(: fx Sbr_Menu_Standard_Selection_Header   # MainMenu # Menu Standard
#(: called by: Menu Echo Short and Long     # MainMenu # Menu-Standard Menu_Standard
#(: param: 
#(: purpose: Standard Menu Options, both Short and Long 
#(: calls:
#(: method: Change DISTRO by rewriting portions of "menu.lst" and then ReBooting 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'header' for long menu and short menu. 
#(: note : these "title Numbers" must match the Prep "if [ " for each "Puppy Distro" in list.
#(: Prep "if [ " code will declare/assign menu paramters. 
#! method: echo Standard Main Menu Options into ""Short and "Long" Menu.lst file output. 
#! ############################################################################################
function Sbr_Menu_Standard_Selection_Header() {  # ACTIVE    

#(: Standard Menu System Selection Headers: 
    #! Standard Menu Selection Header 
    echo "###################################{ Jump Menu : if false, then reboot }"
    echo "title  0 { from SDA } --- Long Menu --- /MARK-KLM   === on { KLM } -------"
    echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM  && configfile /menu.lst"
    echo "### Boot: ${gcBootOsHd} ### Standard Main Menu Options #########"
#(: pup_UpupB32B-SDA
    echo "###################################{ Bionic 4 Beaver  K:4 32bit }"
    echo "title  1 {*__B32B__*}---< UpupBB-K:4.9  > ------------K:4_32--220407 \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupB32B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB32B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupB32B-${gcBootOsHd}/initrd.gz"
#(: pup_Upupb64B-SDA
    echo "###################################{ Bionic Beaver    K:4 64bit }"
    echo "title  2 {*__B64B__*}---< UpupB64B-K:4 > -------------K:4_64bit- 231219   \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupB64B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB64B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupB64B-${gcBootOsHd}/initrd.gz"
#(: pup_UpupT6-SDA
    echo "###################################{ Tahr-6.06}       K:3-32bit }"
    echo "title  3 {=_T-6_=}------< Tahr-6.06 K:3 > ------------K:3-32- 190211   \n \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupT6-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupT6-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
    echo "  initrd /pup_UpupT6-${gcBootOsHd}/initrd.gz"
        #!
#(: pup_UpupN32-SDA
    echo "# ###################################{ Noble Numbat   K:6-32bit }"
    echo "title  4 {!-Noble_N32N_!}---< N32N >----------K:Huge- 241101  \n  \n   \n"
    echo "  root (hd0,0)"
    echo "  kernel /pup_UpupN32-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupN32-${gcBootOsHd} pmedia=usbflash pfix=fsck"
    echo "  initrd /pup_UpupN32-${gcBootOsHd}/initrd.gz"
		#!
#(: pup_UpupN64-SDA
    echo "# ###################################{ Noble Numbat 64  K:6-32bit }"
    echo "title  5 {!-Noble_N64N_!}---< Noble-Numbat 10.0 --- k:6.1.15>-----  \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupN64-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupN64-${gcBootOsHd} pmedia=usbflash pfix=fsck"
    echo "  initrd /pup_UpupN64-${gcBootOsHd}/initrd.gz"
#(: space
    echo "title  6 "
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		#!
#(: pup_S15pup64-SDA
    echo "###################################{ S15pup64 Slacko  K:5-64bit }"
    echo "title  7      {_S1564_}------ S15pup64-20.01 --------------K:5_64- 230724 \n \n \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_S15pup64-${gcBootOsHd}/vmlinuz    psubdir=/pup_S15pup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_S15pup64-${gcBootOsHd}/initrd.gz"
#(: pup_UpupKK-SDA
    echo "###################################{ Kinetic Kudu +D.22 } "
    echo "title  8      { K32K }------ UpupKK+D-22.  ----------------K:5_32- 230604 \n \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupKK-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupKK-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupKK-${gcBootOsHd}/initrd.gz"
#(: pup_UpupX64-SDA
    echo "####################34###############{ Xenial-64-750}"
    echo "title  9      { Xen64 }-- Xenial-64-750  -------FF--LO-----K:4_64- 220401  \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupX64-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupX64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupX64-${gcBootOsHd}/initrd.gz"
#(: pup_SpupS7-SDA
    echo "###################################{ pup Slacko7+14.2 }"
    echo "title 10      { S-7 }---- pup Slacko7+14.2 ----------------S_32- 220205 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_SpupS7-${gcBootOsHd}/vmlinuz    psubdir=/pup_SpupS7-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
    echo "  initrd /pup_SpupS7-${gcBootOsHd}/initrd.gz"
#(: pup_Spup64-SDA
    echo "# #####################################{ Spup64- }"
    echo "title 11      { S64_7 }----Spup64  ------------------------K:5_ 64- 230724 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_Spup64-${gcBootOsHd}/vmlinuz  psubdir=/pup_Spup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_Spup64-${gcBootOsHd}/initrd.gz"
#(: pup_UpupII-SDA
    echo "###################################{ Impish Indri }"
    echo "title 12      { I-I }----Upup-Impish-Indri ----------------I-32- 220201 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupII-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupII-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupII-${gcBootOsHd}/initrd.gz"
#(: pup_UpupFF-SDA  #! F32F moved down menu.
    echo "###################################{ UpupFF+D08.20.12 Focal-Fossa }"
    echo "title 13 "
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  root (hd0,0)"
 #~ (: pup_UpupX708-SDA
    echo "# #####################################{ XenialX7.08 }"
    echo "title 14      { X708}----Xenial-7.08  ---------------------X-32- 220401 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupX708-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupX708-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
    echo "  initrd /pup_UpupX708-${gcBootOsHd}/initrd.gz"
#(: pup_Slacko-LxSc-SDA
    echo "# #######################{ Slacko-LxSc }"
    echo "title 15      { SLxSc }-- Pup_Slacko-LxSc-20.01 ---------- S-K:5.4-64- 200101 \n \n  \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  kernel /pup_Slacko-LxSc-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko-LxSc-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_Slacko-LxSc-${gcBootOsHd}/initrd.gz"
#(: pup_EasyOS-SDA  #! Not Developed 
    echo "# #####################################{ SLK64 --- }"
    echo "title 16      { EasyOS }--- EasyOS---FNF--------------------E-K:5.10 _64- 230400    \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    #~ echo "  kernel /pup_EasyOS-${gcBootOsHd}/vmlinuz    psubdir=/pup_EasyOS-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    #~ echo "  initrd /pup_EasyOS-${gcBootOsHd}/initrd"
#(: pup_Quirky-7-SDA
    echo "# #####################################{ Quirky April 7 }"
    echo "title 17      { Quirky-7 }--- Quirky-7 ---beta-------------Q7-32- 200423  \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  kernel /pup_Quirky-7-${gcBootOsHd}/vmlinuz    psubdir=/pup_Quirky-7-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_Quirky-7-${gcBootOsHd}/initrd.gz"
#(: pup_UpupJ32J-SDA
    echo "###################################{ iso_JammyPup32-22.04+8_22123-0700 }"
    echo "title 18      { J32J }---Jammy Jellyfish +D+22.04-L6 -------K:5-32- 221230 \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupJ32J-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupJ32J-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupJ32J-${gcBootOsHd}/initrd.gz"
#(: pup_UpupMM-SDA
    echo "###################################{ Mantic Minotaur  K:6-32bit }"
    echo "title 19      { M32M }--< UpupMM-23.11 > Mantic-Minotaur-L6-K:6_32- 231226 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupMM-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupMM-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupMM-${gcBootOsHd}/initrd.gz"
#(: pup_dpupBW32-SDA
    echo "##################################{ Debian Book Worm 32 K:6 64bit }"
    echo "title 20   {! DBW32  !}- Dpup-BookWorm-32 --------------K:6 _32- 231119 \n   \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
    echo "  kernel /pup_DpupBW32-${gcBootOsHd}/vmlinuz    psubdir=/pup_DpupBW32-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_DpupBW32-${gcBootOsHd}/initrd.gz"
#(: space
    echo "title 21 "
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
#(: pup_UpupF32F-SDA
    echo "# ###################################{ Focal Fossa 64 }"
    echo "title 22   {!-F32F_!}---< Focal 32 Fossa >----------k:---210410  \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupFF-32-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupFF-32-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupFF-32-${gcBootOsHd}/initrd.gz"
#(: pup_UpupF64F-SDA
    echo "# ###################################{ Focal Fossa 96 }"
    echo "title 23   {!-F64-96-!}--< Focal 64bit v96 Fossa >--k:6.12-FP---230300  \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupFF-96-${gcBootOsHd}/vmlinuz  psubdir=pup_UpupFF-96-${gcBootOsHd} pmedia=usbflash pfix=fsck"
    echo "  initrd /pup_UpupFF-96-${gcBootOsHd}/initrd.gz"
#(: pup_UpupB5B-SDA
    echo "###################################{ Bionic 5 Beaver  K:5 32bit }"
    echo "title 24      { B32B-5 }-----< UpupBB-K:5.10 >-Not-Dev-----K:5_32- 230612 \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupB5B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB5B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupB5B-${gcBootOsHd}/initrd.gz"
#(: pup_UpupJ64J-SDA
    echo "###################################{ iso_jammypup64ce-10.0_251017_}"
    echo "title 25      { J64J }---Jammy Jellyfish  -------K:X-64- 251017 \n  \n   \n"
    echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
    echo "  kernel /pup_UpupJ64J-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupJ64J-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
    echo "  initrd /pup_UpupJ64J-${gcBootOsHd}/initrd.gz"
#(: pup_Devuan-SDA
#(: pup_Racy-SDA
#(: pup_LxPupJammy-SDA
        #~ echo "##################################"
        #~ echo "title  00   \n   \n   \n"
        #~ echo "  root (hd0,0)"
    echo "##################################"
    echo "title     \n   \n   \n"
    echo "  root (hd0,0)"
#!  Any Other Puppy Distro Calls can be listed without Numbers. 
#!  Any Other Puppy Distro Calls can be listed without Numbers. 
#!  Any Other Puppy Distro Calls can be listed without Numbers. 
} #! simple fall back to Sbr_Menu_Standard_Init. 
export -f Sbr_Menu_Standard_Selection_Header
#!
#! ===Build_Menu.lst_=======================================================
#! ===Build_Menu.lst_=======================================================
#!
#(: ================================================================
#(: fx Sbr_Menu_Standard_Selection_Middle
#(: called by: Sbr_Menu_
#(: param: 
#(: purpose: Standard Menu Middle Options
#(: calls:
#(: method: 
#(: sends:
#! ############################################################################################
function Sbr_Menu_Standard_Selection_Middle() {  # ACTIVE    

    echo "# #######################################################"
    echo "title   " " \ "
    echo "root (hd0,0)"
    echo "#######################################################"
    echo "title === KNOPPIX ==="
    echo "  root (hd3,0)"
    echo "title === G4D => Boot KNOPPIX   #3 partition  (hd3,0) --->  "
    echo "  root (hd3,0)"
    echo "  chainloader +1 || chainloader /grldr "
    echo "title === KNOPPIX ==="
    echo "  root (hd3,0)"
    echo "# #######################################################"
    echo "title ==={ P-M }  Any Parted-Magic }---"
    echo "  find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
    echo "  kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
    echo "  initrd  /pmagic/initramfs"
    echo "# #######################################################"
    echo "title ==={ pmagic-6.6 }  Any Parted-Magic }---"
    echo "  find --set-root --ignore-floppies --ignore-cd  /pmagic-6.6/bzImage"
    echo "  kernel  /pmagic-6.6/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
    echo "  initrd  /pmagic-6.6/initramfs"
    echo "# #######################################################"
    echo "title ==={ pmagic-6.7 }  Any Parted-Magic }---"
    echo "  find --set-root --ignore-floppies --ignore-cd  /pmagic-6.7/bzImage"
    echo "  kernel  /pmagic-6.7/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
    echo "  initrd  /pmagic-6.7/initramfs"
    echo "# #######################################################"
    echo "title >>> SDA >>> menu-Boot-NamedDrive.lst ==="
    echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
    echo "  configfile /menu-Boot-NamedDrive.lst"
    echo " "
    echo "title >>> SDA >>> menu-Boot-ChainLoader.lst ==="
    echo "    find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
    echo "  configfile /menu-Boot-ChainLoader.lst"
    echo " "
    echo "title >>> SDA >>> Advanced menu ==="
    echo "    find --set-root  --ignore-floppies --ignore-cd  /MARK-SDA  "
    echo "    configfile /menu-advanced.lst"
    echo "    commandline"
    echo "# #######################################################"
    echo "title    "
    echo "root (hd0,0)"
    echo "title    *** Help *** " "\_"
    echo "  help"
    echo " "
    echo "title    *** Grub4Dos commandline *** " "\_"
    echo "  commandline"
    echo " "
    echo "title    *** Re-BOOT command *** "  "\_"
    echo "  reboot"
    echo " "
    echo "title    *** Power-Off command *** "  "\_"
    echo "  shutdown"
    echo " "
    echo "title    *** Halt computer ***  \_ ( for experts only )"
    echo "  halt"
    echo " "
    echo "# ##############################################################{ Menu with Wait }"
} #! simple fall back to Sbr_Menu_Standard_Init. 
export -f Sbr_Menu_Standard_Selection_Middle
#!
#! ===Build_Menu.lst_=======================================================
#! ===Build_Menu.lst_=======================================================
#!
#(:
#(: ================================================================
#(: fx Sbr_Menu_Standard_End    # MainMenu
#(: called by: Menu Echo Short and Long 
#(: param: 
#(: purpose: Standard Menu End , both Short and Long 
#(: calls:
#(: method: standard "echo" 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'end' for long menu and short menu. 
#!
#! method: echo Standard  ""Short and "Long" Menu.lst file output. 
#! #############################################################################
function Sbr_Menu_Standard_End() {  # ACTIVE      
    #! ************************************************************
	 echo "#*	"
	 echo "#**(: Linux_Grub4Dos_system_commands.txt   "
	 echo "#*	13.3 The list of command-line and menu entry commands   "
	 echo "#*   "
	 echo "#*These commands are usable in the command-line and in menu entries. "
	 echo "#* If you forget a command, you can run the command help (see help).   "
	 echo "#*   "
	 echo "# *blocklist: Get the block list notation of a file   "
	 echo "# *boot: Start up your operating system   "
	 echo "# *cat: Show the contents of a file   "
	 echo "# *chainloader: Chain-load another boot loader   "
	 echo "# *cmp: Compare two files   "
	 echo "# *configfile: Load a configuration file   "
	 echo "# *debug: Toggle the debug flag   "
	 echo "# *displayapm: Display APM information   "
	 echo "# *displaymem: Display memory configuration   "
	 echo "# *embed: Embed Stage 1.5   "
	 echo "# *find: Find a file   "
	 echo "# *fstest: Test a filesystem   "
	 echo "# *geometry: Manipulate the geometry of a drive   "
	 echo "# *halt: Shut down your computer   "
	 echo "# *help: Show help messages   "
	 echo "# *impsprobe: Probe SMP   "
	 echo "# *initrd: Load an initrd   "
	 echo "# *install: Install GRUB   "
	 echo "# *ioprobe: Probe I/O ports used for a drive   "
	 echo "# *kernel: Load a kernel   "
	 echo "# *lock: Lock a menu entry   "
	 echo "# *makeactive: Make a partition active   "
	 echo "# *map: Map a drive to another   "
	 echo "# *md5crypt: Encrypt a password in MD5 format   "
	 echo "# *module: Load a module   "
	 echo "# *modulenounzip: Load a module without decompression   "
	 echo "# *pause: Wait for a key press   "
	 echo "# *quit: Exit from the grub shell   "
	 echo "# *reboot: Reboot your computer   "
	 echo "# *read: Read data from memory   "
	 echo "# *root: Set GRUBs root device   "
	 echo "# *rootnoverify: Set GRUB's root device without mounting   "
	 echo "# *savedefault: Save current entry as the default entry   "
	 echo "# *setup: Set up GRUB's installation automatically   "
	 echo "# *testload: Load a file for testing a filesystem   "
	 echo "# *testvbe: Test VESA BIOS EXTENSION   "
	 echo "# *uppermem: Set the upper memory size   "
	 echo "# *vbeprobe: Probe VESA BIOS EXTENSION   "
    echo "# ############################################################"
    echo "# ****************************************************************************"
    echo "# In itself ...  Godly Living is a benefit without consequence. "
    echo "# I can hear God laughing at us, and saying, "
    echo "# 'I gave you one law, you wanted ten, then you made a hundered, a thousand  "
    echo "# 'I gave you my soul to live a good life, and you play parlor games. '"
    echo "# 'I gave you my NAME    and now   you want a !sign! that "'I AM'"  ? ' "  
    echo "# ****************************************************************************"
} #
export -f Sbr_Menu_Standard_End
#!     
#! ===Build_Menu.lst_=======================================================
#! ===Build_Menu.lst_=======================================================
#(:
#(: ================================================================
#(: fx Sbr_Menu_Standard_PEX   #! ACTIVE
#(: called by: Menu Echo Short and Long 
#(: param: 
#(: purpose: Standard Menu End , both Short and Long 
#(: calls:
#(: method: standard "echo" 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'end' for long menu and short menu. 
	#(:  	"PEX" distros do not handle "ReBoot" properly, 
	#(:  	therefodre Cbx_ReBoot should test if "PEX" flag, else call ReStart. 
function Sbr_Menu_Standard_PEX() {  	#! controls  PEX and Special OS     # ACTIVE  
#(: Menu-Special  Menu_Special  Menu Special
        echo "title fx  Sbr_Menu_NoteBook  #! #########################  \n  \n  \n "
        echo "	root (hd0,0)"
        #~ echo "title    "    #! menu blank line
        #~ echo "root (hd0,0)"
#(: pup_UpupB32B-SDA
        echo "################################### B32B { Bionic 4 Beaver  K:4 32bit }"
        echo "title  43 {!=_B-32-B_=!}---< UpupBB-K:4.9  > -------------K:4_32--220407 \n  \n   \n"
        echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo "  kernel /pup_UpupB32B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB32B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_UpupB32B-${gcBootOsHd}/initrd.gz"
        echo  "#!"
#(: pup_Upupb64B-SDA
        echo "################################### B64B { Bionic Beaver    K:4 64bit }"
        echo "title  44 {!=_B-64-B_=!}---< UpupB64B-K:4.19 > -----------K:4.19_64- 231219   \n   \n   \n"
        echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo "  kernel /pup_UpupB64B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB64B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_UpupB64B-${gcBootOsHd}/initrd.gz"
        echo  "#!"
#(: pup_DpupBW64-12-SDA
        echo "##################################{ Debian Book Worm 64 K:6 64bit }"   
        echo "title  45 {!=_DBW64_10.0.12_  }-< Debian Book-Worm 64 >--K:6 _25-Oct-01  \n   \n   \n"
        echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
        echo "  kernel /pup_DpupBW64-12-${gcBootOsHd}/vmlinuz    psubdir=/pup_DpupBW64-12-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_DpupBW64-12-${gcBootOsHd}/initrd.gz"
        echo  "#!"
#(: pup_PEX-Trixie_64R-SDA    Retro  260104
        #! ### L4 ### menu-special ##########################################################
        echo "###################################{ PexTrixie64R  --- 260104 nocopy }"
        echo "title  46 {!_PEX-Trixie-64R_!}---< Trixie-64 Retro  >--- K:6.12.57 \n  \n  \n"
        echo  "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo  "  kernel /pup_PTrixie64R-${gcBootOsHd}/vmlinuz    psubdir=/pup_PTrixie64R-${gcBootOsHd} pmedia=usbflash pfix=fsck, nocopy"
        echo  "  initrd /pup_PTrixie64R-${gcBootOsHd}/initrd.gz"
#(: pup_PEX-Dev64-SDA
        #! ### L2 ### menu-special ##########################################################
        echo "##################################{ Puppy EX Devuan 64 K:6 64bit }"   
        echo "title  47    {X_Devuan_pup_PEX-Dev64_?}-< PDV640 >-K:6 _25-Oct-14  \n   \n   \n"
        echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
        echo "  kernel /pup_PEX-Dev64-${gcBootOsHd}/vmlinuz    psubdir=/pup_PEX-Dev64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_PEX-Dev64-${gcBootOsHd}/initrd.gz"
        echo  "#!"
#(: pup_PEX-N64-SDA
        #! ### L3 ### menu-special ##########################################################
        echo "##################################{ Puppy EX Noble 64 K:6 64bit }"   
        echo "title  48    {!_Nobel_pup_PEX-N64__}-< pup_'PEX-N64' >-K:6.6.14 _25-Oct-14  \n   \n   \n"
        echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
        echo "  kernel /pup_PEX-N64-${gcBootOsHd}/vmlinuz    psubdir=/pup_PEX-N64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_PEX-N64-${gcBootOsHd}/initrd.gz"
        echo  "#!"
        echo  "#!"
        echo  "#!"
#~ #(: pup_PEX-Trixie_64RW-SDA    Wayland 
        #~ #! ### L4 ### menu-special ##########################################################
        #~ echo "###################################{ PTrixie64W  --- Wayland }"
        #~ echo "title  49   {X[_PEX-Trixie-64W_]}---< Trixie-64 Wayland > ----K:   -    \n   \n   \n"
        #~ echo  "  X find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        #~ echo  "  kernel /pup_PTrixie64W-${gcBootOsHd}/vmlinuz    psubdir=/pup_PTrixie64W-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        #~ echo  "  initrd /pup_PTrixie64W-${gcBootOsHd}/initrd.gz"
        #~ echo  "#!"
        #~ echo  "#!"
#~ #(: pup_PEX-Tix_64-SDA    
        #~ #! ### L6 ### menu-special ##########################################################
        #~ echo "###################################{ PexTix64  -- }"
        #~ echo "title  50   {X[_PEX-Tix-64_]}---< Tix-64 Wayland > ----K:   -    \n   \n   \n"
        #~ echo  "  X find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        #~ echo  "  kernel /pup_PTix64-${gcBootOsHd}/vmlinuz    psubdir=/pup_PTix64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        #~ echo  "  initrd /pup_PTix64-${gcBootOsHd}/initrd.gz"
        #~ echo  "#!"
        #~ echo  "#!"
#! ##############################################################################
        echo "title  49 Only valid on KLM           \n   \n   \n"
        echo "  root (hd0,0)"
        echo "title  50 Only valid on KLM           \n   \n   \n"
        echo "  root (hd0,0)"
        echo "title  51 Only valid on KLM           \n   \n   \n"
        echo "  root (hd0,0)"
        echo "################################{ Jump Menu : if file found, then boot"
        echo "title  52 { ${gcBootOsHd} to KLM } --- JUMP to --- /MARK-KLM   === on { KLM } -------"
        echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM  && configfile /menu.lst"
        echo "  reboot"
        echo "################################{ Jump Menu : if file found, then boot"
        echo "title  53   {X ${gcBootOsHd} to KLM1 } --- JUMP to --- /MARK-KLM1   === on { KLM1 } -------"
        echo "  Xfind --set-root --ignore-floppies --ignore-cd /MARK-KLM1  && configfile /menu.lst"
        echo "  reboot"
        echo "################################{ Jump Menu : if file found, then boot"
        echo "title  54   {X ${gcBootOsHd} to KLM2 } --- JUMP to --- /MARK-KLM2   === on { KLM2 } -------"
        echo "  Xfind --set-root --ignore-floppies --ignore-cd /MARK-KLM2  && configfile /menu.lst"
        echo "  reboot"
        #! ### L3 #############################################################
        echo "######################################################################"
        #~ echo "title 51  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        #~ echo "root (hd0,0)"
        #~ echo "title 52  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        #~ echo "root (hd0,0)"
        #~ echo "title 53  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        #~ echo "root (hd0,0)"
        #~ echo "title 54  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        #~ echo "root (hd0,0)"
        echo "title 55  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"
        echo "title 56  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"
        echo "title 57  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"
        echo "title 58  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"
        echo "title 59  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"
        echo "title 60  OrgMenu_Generate/Build Menu.lst" \n \n \n 
        echo "root (hd0,0)"                                 \n \n \n 
        echo "title    "                                     \n \n \n 
        echo "root (hd0,0)"

        #! ### 0 #############################################################
} #
export -f Sbr_Menu_Standard_PEX
#!
#! ===Build_Menu.lst_=======================================================
#! ===Build_Menu.lst_=======================================================
#!
#(:
#(: ================================================================
#(: fx Sbr_Menu_Standard_Init   #: Active
#(: called by: main gui 
#(: purpose: (MGR) Simple Build Menu Short format. 
#(: receives param:
#(: calls: 
#(:		Sbr_Menu_Standard_Init
#(:     Sbr_Menu_Standard_Selection_Header   
#(:     Sbr_Menu_Standard_ 
#(:     Sbr_Menu_Special_
#(:
#(: returns: calls to build menu.lst "fall back" to this. 
#(: note:   Loads Parameters for each of 22 Distro Menu.lst
#(:  	"PEX" distros do not handle "ReBoot" properly, 
#(:  	therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart. 
#! #######################################################################################
function Sbr_Menu_Standard_Init() {  #! Fall-Thru: INITZ  before real Write Menu.lst    # ACTIVE      
    #! Standard Menu Standard Menu Short List
       #! initz was done by caller 
       #! only SDA or L1T ! KLM1 or KLM2 must not write to /${gcBootOsHd}/menu.lst 
       #! Sbr_Menu_Standard_Init sends parameters to trigger one specific OS. 
       #!
       #! here: begin "Build-Menu-Splash" 
    #! -D---
    #! BIG Orange Splash
    /usr/lib/gtkdialog/box_splash -fg "orange" -bg "green" -border true -close never -text "\
  .      Building   [ ${EXIT} ]   data   "&
        RETVAL=$?
        GtkPid_Mnu_Box_Splash=$!
		sleep 2
        kill ${GtkPid_Mnu_Box_Splash}
      #! BIG BLUE Splash
    /usr/lib/gtkdialog/box_splash -fg "orange" -bg "blue" -border true -close never -text "\
  .
  .  Building   [ ${EXIT} ]   menu.lst data     
  .
  .           
  .           
  .           
  .           
  .           
  .                                            "&
        RETVAL=$?
        GtkPid_Mnu_Box_Splash=$!
		sleep 3
       #!
       #! declare Preset Var for Standard Menu Option < buttons > . 
        lcOsSubClrBase="/boot/grub" # 'base' allows easy change of "menu.lst" background colors
        lcOsSubDef="0"      # "0" default position-selection in "menu.lst"  
        lcOsSubTout="33"    # default long "Time-Out" as default selection.
        #!
        #! Parse ALL menu options 
        #! Declare Preset Var for "Menu" < buttons > . 
        #!
        lcOsSubTout="11"    #! Standard TimeOut 
        #!
        #! Select $EXIT only exists after "Page_Menu" has been "Selected" (Activated).
        #! case Menu Selection $EXIT in list of "Menu Options"  "menu.lst" position 
        #! required only in Menu Build function to "echo" each Menu.lst line out.
        #! DEFAULT menu.lst numbers ; position dependent inside menu.lst. 
	#!
	#! B32B  is NobeBook
	#! B32BX is BASH
	#!
        case "${EXIT}" in
           "ARB_ORG" )      
                lcOsSubDef=""  
                lcOsSubTout="66"
                Sbr_Splash_It "case:${EXIT}:" "yellow" "green" "5" 
            ;;
           "ARB_B32B" )      
                lcOsSubDef="43"  
            ;;
           "ARB_B32BX" )      
                lcOsSubDef="1"  
            ;;
           "ARB_B64B")     
                lcOsSubDef="44"  
            ;;
           "ARB_B64BX")     
                lcOsSubDef="2"  
            ;;
           "ARB_T-6")     
                lcOsSubDef="3"  
            ;;
           "ARB_N32N")     
                lcOsSubDef="4"  
            ;;
           "ARB_N64N")     
                lcOsSubDef="5"  
            #~ ;;
           #~ "ARB_N6N")     
                #~ lcOsSubDef="5"  
            #~ ;;
           #~ "ARB_N7N")     
                #~ lcOsSubDef="4"  
            ;;
           "ARB_B5B")     
                lcOsSubDef="24"  
            ;;
           "ARB_B5BX")     
                lcOsSubDef="55"  
            ;;
           "ARB_S1564")     
                lcOsSubDef="7"  
            ;;
           "ARB_K-K")     
                lcOsSubDef="8"  
            ;;
           "ARB_X64")     
                lcOsSubDef="9"  
            ;;
           "ARB_S-7")     
                lcOsSubDef="10"  
            ;;
           "ARB_S64")     
                lcOsSubDef="11"  
            ;;
           "ARB_I-I")     
                lcOsSubDef="12"  
            ;;
           "ARB_X708")     
                lcOsSubDef="14"  
            ;;
           "ARB_SLXSC")     
                lcOsSubDef="15"  
            ;;
           "ARB_SLK64")     
                lcOsSubDef="16"  
            ;;
           "ARB_Qk7")     
                lcOsSubDef="17"  
            ;;
           "ARB_M6M")     
                lcOsSubDef="19"  
            ;;
           "ARB_DBW32")     
                lcOsSubDef="20"  
            ;;
           "ARB_F32F")     
                lcOsSubDef="22"    #! ***
            ;;
           "ARB_F64-96F")     
                lcOsSubDef="23"    #! *** notebook ******************
            ;;
           "ARB_F64F")     
                lcOsSubDef="023"    #! *** bash ******************
            ;;
           "ARB_J32J")     
                lcOsSubDef="18"  #! Not Active  
            ;;
           "ARB_J64J")     
                lcOsSubDef="25"  #! Not Active  
            ;;
#! #####################################################################            
#! Menu.Lst Current Active Notebook_Menu  
#! #####################################################################            
           "ARB_DBW640")   lcOsSubDef="45"  ;;
           "ARB_DBW64")   lcOsSubDef="45"  ;;
           #!
           "ARB_Trx64R")   lcOsSubDef="46"  ;;      #! Retro X11  "UpDated"	
           "ARB_Trx64")    lcOsSubDef="46"  ;;      #! Retro X11  "UpDated"	
           "ARB_PTrx64")   lcOsSubDef="46"  ;;      #! Retro X11  "UpDated"	

           "ARB_PDV640")   lcOsSubDef="47"  ;;
           "ARB_PN640")    lcOsSubDef="48"  ;;
           #! "ARB_Trx64W")   lcOsSubDef="49"  ;;   #! Wayland
#! #####################################################################            
           "ARB_KLM")      lcOsSubDef="52"  ;;
           "ARB_KLM1")     lcOsSubDef="52"  ;;
           "ARB_KLM2")     lcOsSubDef="53"  ;;
            *)             lcOsSubDef="1"  
                Sbr_Splash_It "ARB_case:${EXIT}: NOT FOUND :" "yellow" "green" "3" 
                Sbr_Splash_It "ARB_case:${EXIT}: NOT FOUND :" "yellow" "red" "7" 
        esac

   
#! #####################################################################            
        #!
        #(: note:   Loaded Parameters for each of 22 Distro in Menu.lst
        #! === end: Sbr_Menu_Standard_Init ===
        #! === menu.lst default settings  are done. 
        #! ======================================================================
        #! ======================================================================
    #! =======================================================
    #! #! config via Sys_Pup_State:  gcMgrArbCfgFn="/root/my-applications/bin/C3M_Config_Arb"
    #! echo "${lcOsSubId}" > "${gcMgrArbCfgFn}" # gcMgrArCfgIdd "menu config"
        #-----------------------------------------------------------------------
        #(: Standard Splash_It : param "Str" "fg"     "bg"  "sleep" "opt"
        #----Little RED ----${gcMgrArCfgIdd}------------------------------------------------------------------
        Sbr_Splash_It ": BEGIN : Writing: ${EXIT} at # ${lcOsSubDef} :" "yellow" "green" "3" ""
        #! this is a 'splash-n-wait' ,  kill is later, after 'build_menu.lst' is done. 
        #! kill ${GTKPID_Cold_Splash}  2>/dev/null
        #-----------------------------------------------------------------------
        #-----------------------------------------------------------------------
	#! ===Build_Menu.lst_=========================================
	#! === begin menu short code =====================================
	#(: =====================================================
	#(: fx === SHORT MENU === shortmenu === menu short === MenuShort === function ===
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
    #! Short Menu :  progress :  "color cyan/black   yellow/red       cyan/black    light-blue/black"
        #! lcOsSubSplClrID="bg=green/Black fg=yellow/red"
        #! lcOsSubSplClrIfg="black"
        #! lcOsSubSplClrIbg="yellow"    
        #!
    #! ===Build_Menu.lst_===  Standard Menu.lst 'Header" =========================================
        (
        echo "#!/bin/bash"
        echo "#=========================================="
        echo "# OS=${lcOsSubId} : Menu System SHORT "
        echo "# DTS=${gcSysDts} : date generated"
        echo "# DTS=${gcMgr_SysDob} : date generated"
        echo "#=========================================="
        echo "#  compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
        echo "#  Menu" 
        echo "#  ${gcMgr_SysDob}"
        echo "#! ======================== xpm kills fg/bg colors "
        echo "#! splashimage=/boot/arc_WallPaper_Xpm_/xpm-l-Lucid-blu.xpm"
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
        echo "# find --set-root --ignore-floppies --ignore-cd   /MARK-KLM || reboot "
        echo "#  line above can make 'KLM bootable usb dongle' to be a PassKey Device."
        Sbr_Menu_Standard_Selection_Header   
        Sbr_Menu_Standard_Selection_Middle 
        Sbr_Menu_Standard_End #! function  # proverb ending 
        Sbr_Menu_Standard_PEX  #! menu special menu area for advanced Distro Selection.
        echo "# #######################################################"
        ) > /mnt/home/menu.lst   #   "title  0{ 'C3M' '00'  Short Menu }---SDA"
        #!
        #!
        sleep 1 #! flush buffers.
        #! Permit Execute menu.lst after reboot
        chmod +x "/mnt/home/menu.lst"
        n=0
        #!
    #!
#(: Sbr_Menu_Standard_Init  calls: 
#(:         Sbr_Menu_Standard_Selection_Header   
#(:         Sbr_Menu_Standard_End # function  # proverb ending 
#(:         Sbr_Menu_Special_
#(:         Sbr_Cbx_ReBoot or ReStart
#(:  "PEX" distros do not handle "ReBoot" nor "Halt" properly, 
#(:  therefodre Cbx_( ReBoot and Halt ) should test if "PEX" flag, then ReStart. 
#(:
    kill ${GTKPID_Cold_Splash}  2>/dev/null     #! kill "Little RED"    progress splash .
    kill ${GtkPid_Mnu_Box_Splash}  2>/dev/null  #! kill "BIG RED"       background splash .
    Sbr_Splash_It ":Done:" "yellow" "green"  "3"
    sleep 1    
	n=0 
#!	  "PEX" distros do not handle "ReBoot" properly, 
#!	  therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart. 
} #! end: Sbr_Menu_Standard_Init
export -f Sbr_Menu_Standard_Init
#!
#(: ================================================================
#(: fx Sbr_Menu_KLM    #: Active    on  KLM 
#(: called by: main () on USB bootable KLM ( 1 and 2 ) 
#(: purpose: install menu specific to KLM 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ###########################################################################
#(: ================================================================
#(: fx Sbr_Menu_KLM    #: Active    on  KLM 
#(: called by: main () 
#(: purpose: install menu specific to KLM 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ###########################################################################
function Sbr_Menu_KLM() {    #! Active
    n=0
    Sbr_Splash_It "=   Writing KLM menu to KLM   =" "yellow" "darkgreen"  "5"         #! -D---
    #! ===Build_Menu.lst_===  Standard Menu.lst 'Header" ========================
(
echo "#!/bin/bash"
echo "#=========================================="
echo "# OS=${lcOsSubId} : Menu System SHORT "
echo "# DTS=${gcSysDts} : date generated"
echo "# DTS=${gcMgr_SysDob} : date generated"
echo "#=========================================="
echo "#  compare to MGR ft(EXIT=ARB_00) in MGR fx(Sbr_ARB_00)"
echo "#  Menu" 
echo "#  ${gcMgr_SysDob}"
echo "#! ======================== xpm kills fg/bg colors "
echo "#! splashimage=/boot/arc_WallPaper_Xpm_/xpm-l-Lucid-blu.xpm"
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
echo "# find --set-root --ignore-floppies --ignore-cd   /MARK-KLM || reboot "
######################{ Jump Boot to SDA } initial delay on boot !    T==11sec
echo "########################################################################"
echo "title  0 '{ .K.L.M._1_ }'------ 11 sec --- jump-> --- {_SDA_}" 
#~ echo "find --set-root --ignore-floppies --ignore-cd /MARK-KLM && configfile /menu.lst"
echo "find --set-root --ignore-floppies --ignore-cd /MARK-SDA && configfile /menu.lst || reboot"
#~ echo "# find --set-root --ignore-floppies --ignore-cd /MARK-SDA  && configfile /menu.lst"
###################################{ UpupBB+29 Bionic-Beaver }
echo "########################################################################"
echo "title  1 '{ B-32-B }'-UpupBB-19.03+30     -------------KLM"
echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM"
echo "  kernel /pup_UpupB32B-KLM/vmlinuz    psubdir=/pup_UpupB32B-KLM pmedia=usbflash copy"
echo "  initrd /pup_UpupB32B-KLM/initrd.gz"
###################################{ Bionic Beaver    K:4 64bit }
echo "########################################################################"
echo "title  2 '{ B-64-B }'---< UpupB64B-K:4.19 > ----------K:4.19_64- 231219   \n   \n   \n"
echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-KLM"
echo "  kernel /pup_UpupB64B-KLM/vmlinuz    psubdir=/pup_UpupB64B-KLM pmedia=usbflash pfix=fsck,copy"
echo "  initrd /pup_UpupB64B-KLM/initrd.gz"
##################################{ Puppy EX Devuan 64 K:6 64bit }
echo "########################################################################"
echo "title  3 '{[_pup_DpupBW64-12-KLM_]}'-< DpupBW64 >-10.0.12 _25-Oct-01  \n   \n   \n"
echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM1"
echo "  kernel /pup_DpupBW64-12-KLM/vmlinuz    psubdir=/pup_DpupBW64-12-KLM pmedia=usbflash pfix=fsck,copy"
echo "  initrd /pup_DpupBW64-12-KLM/initrd.gz"
##################################{ Puppy EX Devuan 64 K:6 64bit }
echo "########################################################################"
echo "title  4 '{[_pup_PEX-Dev64-KLM_]}'-< PEX-Dev64 >-------- _25-Oct-01  \n   \n   \n"
echo "  find --set-root --ignore-floppies --ignore-cd /MARK-KLM"
echo "  kernel /pup_PEX-Dev64-KLM/vmlinuz    psubdir=/pup_PEX-Dev64-KLM pmedia=usbflash pfix=fsck,copy"
echo "  initrd /pup_PEX-Dev64-KLM/initrd.gz"
###################################{ PTrixie64L --- Legacy }
echo "########################################################################"
echo "title  5 '{[_PEX-Trixie-64R_]}'---< Trixie-64 Retro > ----K:   -    \n   \n   \n"
echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-KLM"
echo "  kernel /pup_PTrixie64R-KLM/vmlinuz    psubdir=/pup_PTrixie64R-KLM pmedia=usbflash pfix=fsck,copy"
echo "  initrd /pup_PTrixie64R-KLM/initrd.gz"
echo "########################################################################"
echo "title ==={ P-M }  Any Parted-Magic }---"
echo "  find --set-root --ignore-floppies --ignore-cd  /pmagic/bzImage"
echo "  kernel  /pmagic/bzImage  noapic  load_ramdisk=1  prompt_ramdisk=0  pmedia=ataflash rw  vga=791  sleep=3  loglevel=0  keymap=us"
echo "  initrd  /pmagic/initramfs"
###################################
echo "########################################################################"
echo "title    \n  \n  \n"
echo "root (hd0,0)"
########################################################
echo "########################################################################"
echo "title  { 'SDA' }---------------"
echo "  find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
echo "  configfile /menu.lst"
#####################
echo "########################################################################"
echo "title    \n  \n  \n"
echo "root (hd0,0)"
echo "title    "
echo "root (hd0,0)"
echo "title    "
echo "root (hd0,0)"
echo "########################################################################"
echo "title    *** 'Grub4Dos commandline' *** \_"
echo "  commandline"
echo "title    "
echo "root (hd0,0)"
echo "########################################################################"
echo "title    *** 'Re-BOOT command'   ***  \_"
echo "  reboot"
echo "title    "
echo "root (hd0,0)"
echo "########################################################################"
echo "title    *** 'ShutDown command' ***  \_"
echo "  shutdown"
echo "title    "
echo "root (hd0,0)"
echo "########################################################################"
echo "title    *** 'Halt computer'     ***  \_ ( for experts only )"
echo "halt"
echo "title    "
echo "root (hd0,0)"
echo "########################################################################"
) > /mnt/home/menu.lst   
        #!
        #!
sleep 1 #! flush buffers.
        #! Permit Execute menu.lst after reboot
chmod +x "/mnt/home/menu.lst"
n=0
} # end Sbr_Menu_KLM() 
#!
#! ===Build_Menu.lst_========================================
#! ## end: Menu__Init   ####################################
#! ## end: Menu__Init   ####################################
#! ## end: Menu__Init   ####################################
#! ===Build_Menu.lst_========================================
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
#(:
#(: ================================================================
#(: fx Sbr_CDW_Embedded_Dialog_Colors   #: Active Marker
#(: called by: main () 
#(: purpose: install in environment ;  setup color constants during main ()
#(: receives param:
#(: returns:
#(: note:
#(:
#! ###############################################################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # ACTIVE 
    n=0
    lcDialogColorOrig="  -fg yellow -bg darkred  "  # original
    lcDialogFgDrkRed=" -fg darkred "
    lcDialogFgYel=" -fg yellow "
    lcDialogFgBlk=" -fg black "
    lcDialogFgDrkRed=" -fg darkred "
    lcDialogBgBlu=" -bg blue "
    lcDialogBgGrn=" -bg green "
    lcDialogBgYel=" -bg yellow "
    lcDialogBgBlk=" -fg black "
} #
export -f Sbr_CDW_Embedded_Dialog_Colors
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_CDW_EGI_Long #: Active
#(: called by: Check-If      
#(: purpose: (MGR) CDW EGI Long FORM #! 
#(:     Write ALL EmbeddedGraphicImage files to /tmp 
#(: method:  write /tmp/embedded images only on first "bootup" and "startup". 
    #!  for ReStart, retain this embedded images flag-file, so quicker restart. 
    #!  Do Not !!! rm -f ${gcEmGaImgFnTrgTxtMaster}   #! image files master flag-file 
#(: receives param:
#(: returns:
#(: note:  === initiated during "Long" vs "Short" Image development. 
#(: # Title "gcEmGaImgFnTrgTxtMaster" declared/assigned in Header. 
#(:
#! #########################################################
function Sbr_CDW_EGI_Long() {   # ACTIVE  #! Write ALL EmbeddedGraphicImage files to /tmp 
lcEmGrImg="=== ${gcEmGaImgFnTrgTxtMaster} ==="   # Title for each Gui section.
touch ${gcEmGaImgFnTrgTxtMaster}   #! MUST touch initz and redate file .
echo "### EmGrImg Master File ### $lcEmGrImg" > ${gcEmGaImgFnTrgTxtMaster}  #! load the key .
#!
n=0
#!
    #! ###########################################################
    #! begin:   HASH   red green blue
    #! ###########################################################
            #!
            #! 2 "EmGr"### HASH GRN ### Red Wht Grn ########################################################
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            lcEmGrImgSrc="/tmp/EmGr-img-hash-grn.xpm" ### fake green-PURPLE # major upper-left Image
            echo "hash-grn.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '
            /* XPM */
            static char *hash_xpm[] = {
            "32 32 5 1",
            "   c none",
            "1  c #11FF11",
            "2  c #FFFFFF",
            "3  c #2222FF",
            "4  c #818181",
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
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for Trg for "Dump" to screen
            #!
            #!
            #!
            #!
            #! 1 "EmGr"### HASH-RED ########################################################
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            lcEmGrImgSrc="/tmp/EmGr-img-hash-red.xpm" ### fake green-RED # major upper-left Image
            echo "hash-red.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '
            /* XPM */
            static char *hash_xpm[] = {
            "32 32 5 1",
            "   c none",
            "1  c #FF0F0F",
            "2  c #0F0F0F0",
            "3  c #0FF00F",
            "4  c #0FF00F",
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
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for Trg for "Dump" to screen
            #!
            #!
            #! 1 "EmGr"### HASH-Blu ########################################################
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            lcEmGrImgSrc="/tmp/EmGr-img-hash-blu.xpm" ### 
            echo "hash-red.xpm" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '
            /* XPM */
            static char *hash_xpm[] = {
            "32 32 5 1",
            "   c none",
            "1  c #FF0FF0",
            "2  c #0F0FF0",
            "3  c #0FF00F",
            "4  c #0FF00F",
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
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for Trg for "Dump" to screen
            #!
            #!
    #! ###########################################################
    #! end:   HASH   
    #! ###########################################################
    #!
    #!
    #! ############################################################
    #! begin:   LightBulb_svg_Text   
    #! ############################################################
    #!
    #!
        lcEmGrImgSrc="/tmp/EmGr-img-lightbulb.svg" 
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-lightbulb.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
      <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="64px" width="64px" viewBox="0 0 100 100">
      <defs>
      <radialGradient id="RG1" cx="50%" cy="50%" fx="50%" fy="50%" r="60%">
      <stop style="stop-color:rgb(255,255,255);stop-opacity:0.75;" offset="0%"/>
      <stop style="stop-color:rgb(252,255,166);stop-opacity:1;" offset="100%"/>
      </radialGradient>
      <linearGradient id="LG1" x1="20%" y1="80%" x2="20%" y2="0%">
      <stop style="stop-color:#999;stop-opacity:1" offset="0%" />
      <stop style="stop-color:#DDD;stop-opacity:1" offset="100%" />
      </linearGradient>
      <linearGradient id="LG2" x1="20%" y1="80%" x2="20%" y2="0%">
      <stop style="stop-color:#AAA;stop-opacity:1" offset="0%" />
      <stop style="stop-color:#EEE;stop-opacity:1" offset="100%" />
      </linearGradient>
      </defs>
      <path style="fill:url(#RG1);fill-opacity:1;fill-rule:nonzero;stroke-width:1;stroke:#666;" d="M 40,70 Q 40,65 30,55 A 28 28 1 1 1 70 55 Q 60,65 60,70"/>
      <path style="stroke-width:0.5;stroke:#333;fill:none" d="M 45,70 41,40 C 42,42 43,38 44,40 C 45,42 46,38 47,40 C 48,42 49,38 50,40 C 51,42 52,38 53,40 C 54,42 55,38 56,40 C 57,42 58,38 59,40 L 55,70"/>
      <path style="fill:url(#LG1);stroke:none" d="M 39,70 61,70 61,88 39,88 z" />
      <path style="fill:url(#LG2);stroke:none" d="M 39,73 61,77 Q 62.25,78.6 61,80 L 39,76 Q 37.75,74.4 39,73 z M 39,79 61,83 Q 62.25,84.6 61,86 L 39,82 Q 37.75,80.4 39,79 z" />
      <path style="fill:#333" d="M 45,88 Q 50,92 55,88 z"/>
      </svg>
      ' > ${lcEmGrImgSrc}
      cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
    #!
    #!
    #! ############################################################
    #! begin:   Button_Svg
    #!          Rect Box with Message Fill
    #!          Manager   System   Menu   BackUp   Dox   Util 
    #! ############################################################
        #!
        #!
        ##############################################################################
        #! Button "System" Svg
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-system.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-text.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:yellow;fill-opacity:22;stroke-width:5;stroke:red;stroke-opacity:33;"
             width="275" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo---- SYSTEM ----ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
		#!
        ##############################################################################
        #! Button "Menu" Svg
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-menu.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-text.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:lightgreen;fill-opacity:22;stroke-width:5;stroke:blue;stroke-opacity:33;"
             width="245" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo--- Menu ---ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
		#!
        ##############################################################################
        #! Button Back Svg 
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-back.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-back.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:orange;fill-opacity:22;stroke-width:5;stroke:blue;stroke-opacity:33;"
             width="265" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo--- BackUp ---ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
        ##############################################################################
        #! Button Dox Svg 
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-dox.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-dox.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:lightblue;fill-opacity:22;stroke-width:5;stroke:green;stroke-opacity:33;"
             width="340" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo--- Dox-Help-Info ---ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
        ##############################################################################
        #! Button svg "Util" "EmGr"
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-util.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-util.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:orange;fill-opacity:22;stroke-width:5;stroke:yellow;stroke-opacity:33;"
             width="345" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo---- Utility-Image ---ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
        ##############################################################################
        #! Button "B-32-B" Svg
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-menu_B32B.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-text.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:yellow;fill-opacity:22;stroke-width:5;stroke:blue;stroke-opacity:33;"
             width="245" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
               B-32-B      
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
		#!
        ##############################################################################
        #! Button "B-64-B" Svg
        ##############################################################################
        lcEmGrImgSrc="/tmp/EmGr-img-button-menu-B64B.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-text.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:yellow;fill-opacity:22;stroke-width:5;stroke:blue;stroke-opacity:33;"
             width="245" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
               B-64-B       
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
		#!
        ##############################################################################
        #! Button "Bash" Svg
        ##############################################################################
        #!
        lcEmGrImgSrc="/tmp/EmGr-img-button-bash.svg"
        echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo "EmGr-img-button-text.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
        echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
        echo '<?xml version="1.0" encoding="UTF-8"?>
        <svg version="1.1"> 
              <rect
              style="fill:yellow;fill-opacity:22;stroke-width:5;stroke:red;stroke-opacity:33;"
             width="275" height="36" rx="10" ry="10" x="1" y="1"/>
                   <text style="font-family:DejaVu;font-size:22;fill-opacity:1"
              x="25"  y="27" >
        ooo----- BASH ----ooo
             </text>
        </svg>
        ' > ${lcEmGrImgSrc}
        cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
        #!
		#!
    #!
    #! ############################################################
    #! end:   Button_Svg 
    #!          Rect Box with Message Fill
    #!          Manager   System   Menu   BackUp   Dox   Util 
    #! ############################################################
    #!
    #!
    #! ############################################################
    #! begin:    APPLE
    #! ############################################################
    #!
            #! 3 "EmGr"############################################################
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
            #! 4 "EmGr" ############################################################
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
            #! 5 "EmGr" ###########################################################
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
            #! 6 "EmGr" ###########################################################
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
            #! 7 "EmGr"#############################################################
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
            #! 8 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-quit-grnnnn.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "quit-grnnnn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g style="fill:none;stroke:#33FF33;stroke-width:17px;stroke-linecap:round;stroke-linejoin:round;">
                <path d="m 70,2 0,35"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 9 "EmGr" ###########################################################
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
    #! ###########################################################
    #! begin:   JUG
    #! ###########################################################
    #!
            #! 10 "EmGr" ############################################################
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
            #! 11 "EmGr" ############################################################
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
            #! 12 "EmGr" ############################################################
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
            #! 13 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-redxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'yellow'; stroke:'red'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 13 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxyel.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-grnxyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'lightgreen'; stroke:'red'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 14 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-red0yel.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-red0yel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'yellow'; stroke:'red'; stroke-width:14px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 50,5 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 55,5"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 15 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-redxgrn.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-redxgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'green'; stroke:'red'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 16 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxred.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-grnxred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'red'; stroke:'green'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 17 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-yelxred.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-yelxred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'red'; stroke:'yellow'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #!
            #! 18 "EmGr" ###########################################################
            lcEmGrImgSrc="/tmp/EmGr-img-jug-redxblu.svg"
            echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo "jug-redxblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
            echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
            echo '<?xml version="1.0" encoding="UTF-8"?>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
              <g
            style="fill:'blue'; stroke:'red'; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                <path d="m 0"/>
                <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
              </g>
            </svg>
            ' > ${lcEmGrImgSrc}
            cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
            #! ############################################################
			#!
        #! #################################################################
        #! begin: Mark  "colorXcolor" 
        #! #################################################################
                #!
                #! 90X
                #! 19 "EmGr" #-1-#-orange-#-blue-########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-oraXblu.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblured.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'orange';fill-opacity:0.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 90X
                #! 19 "EmGr" #-2-#-blue-#-orange-########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-bluXora.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblured.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'blue';fill-opacity:0.8;stroke:'orange';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 90X
                #! 19 "EmGr" #-3-#-red-#-blue-########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-redXblu.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblured.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 90X
                #! 20 "EmGr" #-4-#-green-#-red-########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-grnXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-90-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'green';fill-opacity:0.8;stroke:'red';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
				#!
                #! 90X
                #! 19 "EmGr" #-5-#-blue-#-yellow-########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-bluXyel.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblured.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'yellow';fill-opacity:2.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
        #! #################################################################
        #! end: Mark  "colorXcolor" 
        #! #################################################################
                #!
                #! #!
                #! 22 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-redXyel.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-90-redXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:#FFFF11;fill-opacity:0.8;stroke:#FF1111;stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #!
                #! #! 90X
                #! #! 20 "EmGr" ###########################################################
                #! lcEmGrImgSrc="/tmp/EmGr-img-Check-90-redXblu.svg"
                #! echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                #! echo "Check-90-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                #! echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                #! echo '<?xml version="1.0" encoding="UTF-8"?>
                #! <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="80" width="80">
                  #! <path style="fill:'lightblue';fill-opacity:0.8;stroke:'red';stroke-width:3"
                #! d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                #! </svg>
                #! ' > ${lcEmGrImgSrc}
                #! cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #! #!
                #! 90X
                #! 22 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-90-bluXred.svg"
                #~ echo "Check-90-redXpur.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-90-bluXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="90" width="90">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 111X
                #! 111X "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-111-yelXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-111-yelXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="111" width="111">
                  <path style="fill:'yellow';fill-opacity:0.8;stroke:'red';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! d="M 38,49 C 49,38 56,48 64,54 68,57 47,23 55,18 42,16 13,01 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                #! 111X
                #! 111X "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-111-bluXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-111-bluXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="111" width="111">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #! 111X
                #! 111X "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-111-grnXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-111-grnXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="111" width="111">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'green';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! X
                #! 24 "EmGr" ###########################################################
                #! 
                #! X
                #! 25 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXblu.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'blue';fill-opacity:0.8;stroke:'yellow';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! X
                #! 26 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-redXblu.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'blue';fill-opacity:0.8;stroke:'red';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! X
                #! 27 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'blu';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! X
                #! 28 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXblu.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXblu.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'blue';fill-opacity:0.8;stroke:'green';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! X
                #! 29 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXgrn.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-bluXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'green';fill-opacity:0.8;stroke:'blue';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 30 "EmGr" ###########################################################
                #!
                #!
        #! #################################################################
        #! begin: Mark  "colorcolor" 
        #! #################################################################
                #!
                #! 31 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'green';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 32 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-redXred.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-redXred.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'red';fill-opacity:0.8;stroke:'red';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 33 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXgrn.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-grnXgrn.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'#00FF00';fill-opacity:1.3;stroke:'green';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 35 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXyel.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelXyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:'yellow';fill-opacity:0.8;stroke:'#888800';stroke-width:3"
                d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 36 "EmGr" ###########################################################
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
                #! 37 "EmGr" ###########################################################
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
                #! 38 "EmGr" ###########################################################
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
                #! 39 "EmGr" ###########################################################
                lcEmGrImgSrc="/tmp/EmGr-img-Check-yelyel.svg"
                echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo "Check-yelyel.svg" >> ${gcEmGaImgFnTrgTxtMaster}   # name of image
                echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                echo '<?xml version="1.0" encoding="UTF-8"?>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
                  <path style="fill:#FFFF00;fill-opacity:0.8;stroke:#FFFF00;stroke-width:5"
                d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
                </svg>
                ' > ${lcEmGrImgSrc}
                cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
                #!
                #! 40 "EmGr" ###########################################################
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
#! =========================================================
#! end: Sbr_CDW_EGI_Long     Sbr_CDW_Embedded_Graphic_Images
#! =========================================================
#!
#(:
#(: ================================================================
#(: fx Sbr_CDW_EGI_CheckIF  #: Active  in main 
#(: called by: main () , Check-If some status 
#(:  purpose: CheckIF:  
#(:     if Master-IMG.txt Images are in /tmp  , 
#(:     then do not write again, 
#(:     else write files.
#(:     #! main () 
#(:     # Install Long Image format under control of flag "gcEmGaImgFnTrgTxtMaster"
#(:
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
#(: done: culled calls to "short" Image format. 
#(: done: cull all references to "short" Image format files.
#(:
#! ##############################################################################
function Sbr_CDW_EGI_CheckIF() {   # ACTIVE 
    n=0
    #!
    if [ ! -f   "${gcEmGaImgFnTrgTxtMaster}" ] ; then     # IF not ImgMaster , then build EGI files in /tmp
                n=0   #! this should only happen on first "bootup" and "startup" of MGR .
                Sbr_CDW_EGI_Long   # this will write IMAGE Long files DIRECTLY, now. 
    else
                n=0
    fi # end: [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then  # build ALL Image files in /tmp
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
#!
#!
#!
#!
#!
#!
#! ### BASH PAGE ####################################################
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! BEGIN:     Msg_Windows :  Independent  Floating  Pages 
#! ### BASH PAGE ####################################################
#!
#!
#! =====================================================================
#! === BashPageSystem ===================================
#! =====================================================================
#! =====================================================================
#! === BashPageMenu =====================================
#! =====================================================================
#! =====================================================================
#! === BashPageBackUp ===================================
#! =====================================================================
#! =====================================================================
#! === BashPageDox =====================================
#! =====================================================================
#! =====================================================================
#! === BashPageUtil =====================================
#! =====================================================================
#!
#!   msg_DC_LxgenSystem_Back_window
#! ##########################################################
function Sbr_Msg_Windows_code() { # NOT ACTIVE  #! MARKER 
    n=0
} #
export -f Sbr_Msg_Windows_code
#!
#!
#!
#! ############################################################
        #! function Sbr_Msg_DC_Windows_ : documentation sample
        #! BACK-UP Copy of Work ing Message Window
        #! window Msg_DC_NoShow /tmp/EmGr-img-jug-red0yel.svg  # ACTIVE
        #! msg_DC_Quick_window='
        #! <window      
        #!     window-position="nearmouse"
        #!     visible="1">
        #!  <frame>
        #!      <hbox>
        #!          <button> <label>""  </label>
        #!              <input file>"/tmp/EmGr-img-Check-90-redXgrn.svg"</input><height>46></height> <width>46</width>
        #!              <action function="closewindow">msg_DC_Quick_window</action>
        #!          </button>
        #!      </hbox>
        #!  </frame>
        #!  <variable>msg_DC_Quick_window</variable>
        #! </window>'
        #! export msg_DC_Quick_window # Small, preferred button msg window 
        #!
#! ############################################################
#! ############################################################
#!
#! #-1-###########################################################
#! function Sbr_Msg_DC_Windows_ 			 #! ACTIVE
export gcBig90oraXblu="/tmp/EmGr-img-Check-90-oraXblu.svg"
export  msg_DC_Check_90_Big_oraXblu_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90oraXblu}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_oraXblu_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_oraXblu_window</variable>
</window>'
#!
#! #-2-###########################################################
#! function Sbr_Msg_DC_Windows_ 			 #! ACTIVE
export gcBig90bluXora="/tmp/EmGr-img-Check-90-bluXora.svg"
export  msg_DC_Check_90_Big_bluXora_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90bluXora}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_bluXora_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_bluXora_window</variable>
</window>'
#!
#! ############################################################
#! #-3-###########################################################
#! function Sbr_Msg_DC_Windows_ 			 #! ACTIVE
export gcBig90redXblu="/tmp/EmGr-img-Check-90-redXblu.svg"
export  msg_DC_Check_90_Big_redXblu_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90redXblu}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_redXblu_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_redXblu_window</variable>
</window>'
#! function Sbr_Msg_DC_Windows_
#~ export gcBig90redXblu="/tmp/EmGr-img-Check-90-redXblu.svg"
#!
#! #-4-###########################################################
#! function Sbr_Msg_DC_Windows 			 #! ACTIVE
export gcBig90bluXred="/tmp/EmGr-img-Check-90-bluXred.svg"
export  msg_DC_Check_90_Big_bluXred_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90bluXred}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_bluXred_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_bluXred_window</variable>
</window>'
#~ export msg_DC_Quick_window # Small, preferred button msg window 
#!
#! #-5-###########################################################
#! function Sbr_Msg_DC_Windows 			 #! ACTIVE
export gcBig90grnXred="/tmp/EmGr-img-Check-90-grnXred.svg"
export  msg_DC_Check_90_Big_grnXred_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90grnXred}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_grnXred_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_grnXred_window</variable>
</window>'
#! export msg_DC_Quick_window # Small, preferred button msg window 
#! #-6-###########################################################
#! function Sbr_Msg_DC_Windows 			 #! ACTIVE
export gcBig90redXyel="/tmp/EmGr-img-Check-90-redXyel.svg"
export  msg_DC_Check_90_Big_redXyel_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90redXyel}'</input><height>99></height> <width>99</width>
                <action function="closewindow">msg_DC_Check_90_Big_redXyel_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_90_Big_redXyel_window</variable>
</window>'
#! export msg_DC_Quick_window # Small, preferred button msg window 
#!
#!
#! ############################################################
#! ### Check Big 90 ###########################################
#! ############################################################
#! ############################################################
#! function Sbr_Msg_DC_Windows_ #! only for TESTING
#! export gcBig90yel="/tmp/EmGr-img-Check-90-redXyel.svg"  #! declared/assigned above
export  msg_DC_Check_Big_90_window='
<window     
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>'${gcBig90yel}'</input><height>111></height> <width>111</width>
                <action function="closewindow">msg_DC_Check_Big_90_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Check_Big_90_window</variable>
</window>'
export msg_DC_Check_Big_90_window
#!
#!
#! ############################################################
#! ############################################################
#! function msg_DC_Quick_windowS   UpperLeft  jug-red0yel   # ACTIVE
msg_DC_Quick_windowS='
<window     
    title="---16-msg_dc_quick_window_Small---Menu---jug-red0yel"
    window-position="0"
    visible="1">
    <frame>
        <hbox>
            <button  tooltip-text="Click_here_to_Cancel" >   <label>""</label>
                <input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>33></height> <width>33</width>
                <action function="closewindow">msg_DC_Quick_windowS</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Quick_windowS</variable>
</window>'
export msg_DC_Quick_windowS # Small, preferred button msg window 
#!
#!
#! #####################################################################
#! function msg_DC_Quick_window    jug-red0yel   # ACTIVE Standard !!!
msg_DC_Quick_window='
<window     
    title="--------110-msg_dc_quick_window---jug-red0yel"
    window-position="3"
    visible="1">
    <frame>
        <hbox>
            <button  tooltip-text="Click_here_to_Cancel" >   <label>""</label>
                <input file>"/tmp/EmGr-img-jug-red0yel.svg"</input><height>46></height> <width>46</width>
                <action function="closewindow">msg_DC_Quick_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Quick_window</variable>
</window>'
export msg_DC_Quick_window # Small, preferred standard button msg window 
#!
#!
#! ############################################################
#! function msg_DC_Quick_Utl_window     # NOT ACTIVE
msg_DC_Quick_Utl_window='
<window     
    title="msg_DC_Quick_Utl_window"
    window-position="1"
    visible="1">
    <frame>
        <hbox>
            <button> <label>""  </label>
                <input file>"/tmp/EmGr-img-jug-grnxred.svg"</input><height>26></height> <width>26</width>
                <action function="closewindow">msg_DC_Quick_Utl_window</action>
            </button>
        </hbox>
    </frame>
    <variable>msg_DC_Quick_Utl_window</variable>
</window>'
export msg_DC_Quick_Utl_window # Small, preferred button msg window 
#!
#!
#!
#! ############################################################
export msg_DC_MainMenuToolTip_window_text="----------------------- 
Main Menu  ! 
Will OverWrite Existing Menu.lst
Will Reboot to activate new Menu.lst
-----------------------------------------------------------------"
#! ###################################################################### msg_DC_LxgenBack_window
#! function msg_DC_MainMenuToolTip_window    # Menu ToolTip # ACTIVE 
export msg_DC_MainMenuToolTip_window='
<window title="msg_DC_MainMenuToolTip_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'darkred'"'> <b>'${msg_DC_MainMenuToolTip_window_text}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the MainMenuToolTip window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_MainMenuToolTip_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_MainMenuToolTip_window</variable>
</window>'
#! ############################################################
#! ############################################################
export msg_DC_MainBackUpToolTip_window_text="----------------------- 
Main BackUp  ! 
(1) PXB-ion BackUp +_ReStart 
(2) PXB-ion BackUp +_ReBoot
(3) PXB-ion BackUp +_PwrOff 
-----------------------------------------------------------------"
#! ###################################################################### msg_DC_LxgenBack_window
#! function msg_DC_MainBackUpToolTip_window    # BackUpToolTip # ACTIVE 
export msg_DC_MainBackUpToolTip_window='
<window title="msg_DC_MainBackUpToolTip_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'darkred'"'> <b>'${msg_DC_MainBackUpToolTip_window_text}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the MainBackUpToolTip window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_MainBackUpToolTip_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_MainBackUpToolTip_window</variable>
</window>'
#! ############################################################
#!
#!
#! ############################################################
export msg_DC_SLX_window_text=" 
  * Backup_with_Scan_for_ALL_HardDrives
  * Requires /root/my-applications/rc.z_CTB-SLX.sh
  "
#! ############################################################
#! function msg_DC_SLX_window    # "SLX tool-tip" # ACTIVE
export msg_DC_SLX_window='
<window title="msg_DC_C3C_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_SLX_window_text}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the SLX window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_SLX_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_SLX_window</variable>
</window>'
#!
#! ############################################################
export msg_DC_C3C_window_text=" 
* CBXC3C * Clear FireFox Caches etc. !  .
   (0) Reduces Ram Object Size . 
   (1) Will clear some browser aux storage 
        which FireFox rebuilds each run. 
   (2) Will Save2File into SaveDATA storage.  
   (3) Data will be active after ReBoot. 
#"
#! ############################################################
#! function msg_DC_C3C_window    # "C3C tool-tip" # ACTIVE
export msg_DC_C3C_window='
<window title="msg_DC_C3C_window---"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'blue'"'> <b>'${msg_DC_C3C_window_text}'</b> </span> " </label></text>
<hbox>
    <button>
        <label>"Clear the C3C window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_C3C_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_C3C_window</variable>
</window>'
#! ############################################################
#! msg_DC_M12_window
#! ############################################################
export msg_DC_M12_window_text="
! MGR 12  utilizes TWO  main GUI code methods, 
!      'GTK' NoteBook based main GUI code pages 
!      'BASH' Page based main GUI code pages
* ${gcMgrNameBase}
         has several 'Double-Click'  buttons  !!!
         button with 'Double-Click' will trigger 
            a large tear-drop shaped ICON    ...
            will pop-up on screen  ...
          { Red Border : Yellow-filled }   ...
*
* ${gcMgrNameBase} has GTK 'NoteBook' pages !!!
* ${gcMgrNameBase} has BASH coded 'Pages' !!!"
#! ######################################################################
#! function msg_DC_C3C_window    # tool-tip MGR-12 Prime Page # ACTIVE  
export msg_DC_M12_window='
<window title="msg_DC_M12_window---"
visible="true" ><frame>
<text editable="false" use-markup="false" xalign=".5"><label> "'${msg_DC_M12_window_text}'" </label></text>
<hbox>
    <button>
        <label>"Clear the message_window "</label>
        <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
        <action function="closewindow">msg_DC_M12_window</action>
    </button>
</hbox></frame>
<variable>msg_DC_M12_window</variable>
</window>'
#! ############################################################
#!
#!
#! ###########################################################################
#! replaced by "msg_DC_BakOneAll"  #!  NOT ACTIVE   #! Sbr_BakAllArcDts_One #!
export gcMsgWindowBakAll="
'===-BackUp-One // PCB // Backup-All-==='
=== SubRoutine #1 ===  EXIT:guiMgrOneArcDts
Will run 'BakOne' 
to do a quick Copy/BackUp of Editing Scripts + DTS 
   from---> Editing subdir  Current Source File 
      '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/'
   into ---> System 'Edit' subdir
     '/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_'
Then --->
EXIT via /'ReStart'
...
=== SubRoutine  #2 === EXIT:guiPXB_ion_RS
PXB is the full 'PupColdBackup' 'PCB' internal inside MGR  
BackUp_SaveDATA_+_ReStart_
...
=== SubRoutine  #3 === EXIT:guiMgrOneArcDts
Will do a 'BakAll' Copy/BackUp of all Editing Scripts + DTS 
to 'RA' '/root/my-applications' + ReStart  
________________________________________________"
#! end:   gcMsgWindowBakAll   msg_DC_BakAll_window
#!
#! ############################################################
#!
#!
#! [-1-]  Floating Msg Window ###   #! REQUIRED Msg Window ===================
#! ### MAIN Page 1 <button> #########################################
#! ### MAIN Page 1 <button> #########################################
#! ### MAIN Page 1 <button> #########################################
function msg_DC_LxgenBack_window() { #! Marker 
n=0   
} # end
#!
#! =====================================================================
#! === BashPage =====================================
#! =====================================================================
#! [-1-]  Floating Msg Window ###   #! REQUIRED Msg Window ===================
#! ### MAIN BASH Page 0 <button> #########################################
#! ### MAIN BASH Page 0 <button> #########################################
#! ### MAIN BASH Page 0 <button> #########################################
function msg_DC_LxgenMarker_window() { #! Marker 
n=0   
} # end
#!
#! =====================================================================
#! === BashPageSystem =============================
#! =====================================================================
#! ### BASH SYSTEM ### Page 0 <button> #################################
#! =====================================================================
#! via BASH button to enable BASH PAGE     #! ACTIVE
msg_DC_LxgenSystem_window_text="===_Bash_SYSTEM_==="
msg_DC_LxgenSystem_window_0='
<window title="msg_DC_LxgenSystem_window_0_pageBack_!_"
    space-expand="true" 
    resizable="true" 
    visible="true" >
<frame>
<vbox>
        <hbox homogeneous="true">
        <hbox>
            <hseparator width-request="20"></hseparator>
            <button visible="1" tooltip-text="" has-focus="false" width-request="0"  height-request="0" xalign=".5"  >
                <input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>35</width><height>35</height>   
                <label>""</label><action>'0:GTK-Launch-BASH-msg_DC_LxgenMenu_window'</action> </button>
                   
            <hseparator width-request="3"></hseparator>
            <button  has-focus="false" height-request="22"  xalign=".5"  
                tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label>"'-Menu-'"</label>
                    <action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
                    <action function="'launch'">     msg_DC_LxgenMenu_window_0</action> 
                    <action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
                    </button>
            <hseparator width-request="11"></hseparator>
            <button  has-focus="false" height-request="22"  xalign=".5"  
                tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label>"'-BACK--'"</label>
                    <action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
                    <action function="'launch'">     msg_DC_LxgenBack_window_0</action> 
                    <action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
                    </button>
            <hseparator width-request="11"></hseparator>
            <button  has-focus="false" height-request="22"  xalign=".5"
                tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label>"'-DOX---'"</label>
                    <action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
                    <action function="'launch'">     msg_DC_LxgenDox_window_0</action> 
                    <action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
                    </button>
            <hseparator width-request="11"></hseparator>
            <button  has-focus="false" height-request="22"  xalign=".5" 
                tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label>"'-UTIL--'"</label>
                    <action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
                    <action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
                    <action function="'launch'">      msg_DC_LxgenUtil_window_0</action> 
                    <action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
                   </button>
            <hseparator width-request="11"></hseparator>
            <button visible="1" tooltip-text="''" has-focus="false" width-request="0"  height-request="0" xalign=".5"  >
                <input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>35</width><height>35</height>   
                <label>""</label><action>'0:GTK-Launch-BASH-msg_DC_LxgenMenu_window'</action> </button>
            <hseparator width-request="25"></hseparator>
        </hbox>
        </hbox>
        <vseparator height-request="11"></vseparator>
             <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "  '===!-MGR-12-Tool-Tip-!===' " </label> 
                <action function="'launch'">msg_DC_M12_window</action>
                <action>'0-MGR-12-Tool-Tip'</action> </button>
                <hseparator width-request="33"></hseparator> 
</vbox>
        <vseparator height-request="11"></vseparator>
<vbox>
    <text editable="false" use-markup="true" xalign=".5">
    <label> "<span color='"'red'"'> <b>'${msg_DC_LxgenSystem_window_text}'</b> </span> " </label></text>
        <vseparator height-request="11"></vseparator>
    <button visible="1"   width-request="45" height-request="45"  size="medium"  weight="bold" 
       tooltip-text="" 
        has-focus="false"  xalign=".5" >
        <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>45</width><height>45</height>
            <label>""</label> 
            <action>'0-EXIT:guiSimReStart'</action>   </button>
    <hseparator width-request="1"></hseparator>
       <button  use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
                        tooltip-text="':${gcToolTipText}'">
            <input file>"'/tmp/EmGr-img-button-bash.svg'"</input>
            <label> "" </label><action>'0---button-system-svg'</action>  </button>
        <vseparator height-request="33"></vseparator>
            <text visible="1"   editable="false" use-markup="true" xalign=".5"> 
        <label> "<span  color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"'>'"ooo-"'</span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"  ${gcMgrVerTitle} "'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"'>'-ooo'</span>" 
            </label> </text>
        <vseparator height-request="23"></vseparator>
	<hbox homogeneous="'${gcSysChkTtlFlg}'">
    <hbox space="1" visible="1">
          <hseparator width-request="0"></hseparator>
        <text use-markup="true" xalign=".5" x="BASH">
            <label> "<span color='"'$lcGuiColorbrn'"'> <b>'${gcMgrDistroSymbol}:'</b> </span>" </label> </text>
        <text>  <label> ':' </label></text>
        <text visible="1" use-markup="true" xalign=".5" x="BASH">
            <label> "<span color='"'$lcGuiColorred'"'> <b>'${DISTRO_NAME}'</b> </span>" </label> </text>
        <text use-markup="true" xalign=".5" x="BASH">
            <label>"<span color='"'$lcGuiColorblu'"'><b>'V:${gcSysDistroVersion}'</b> </span>" </label> </text>
        <text>  <label> ':' </label></text>
        <text visible="0" use-markup="true" xalign=".5" x="BASH">
            <label>"<span color='"'$lcGuiColorgrn'"'><b>'K:${gcMGRKernVer}'</b> </span>" </label> </text>
        <text>  <label> ':' </label></text>
        <text visible="0" use-markup="true" xalign=".5"  x="BASH">
            <label> "<span color='"'$lcGuiColorbrn'"'> <b>'Ram:${gcPupRamObjMsg0}'</b></span>"</label></text>
        <text>  <label> ':' </label></text>
        <text  visible="0" use-markup="true" xalign=".5" x="BASH">
            <label> "<span color='"'$lcGuiColorbrn'"'> <b>'Pex:${gcSysChkPexFlg}'</b> </span>" </label></text>
        <hseparator  visible="1" height-request="1" width-request="105"></hseparator>
	</hbox>
	</hbox>
        <vseparator height-request="44"></vseparator>
           <hbox space="2" homogeneous="true">
               <hseparator height-request="3" width-request="40"></hseparator>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>
           <hseparator height-request="3" width-request="88"></hseparator>
        </hbox>
        <vseparator height-request="13"></vseparator>
        <hseparator width-request="1"></hseparator> 
        <text visible="true">   <label>"'###_BASH_###'"</label> </text> 
        <hseparator width-request="1"></hseparator> 
        <vseparator height-request="13"></vseparator>

        <hbox homogeneous="true">
            <button visible="0" has-focus="true" height-request="32"> 
               <label>"'One-PCB-All'"</label>
               <action>'EXIT:guiArcOnePxbAll'</action> </button>
        </hbox>

        <hbox homogeneous="1">
            <hseparator width-request="233"></hseparator>
            <button has-focus="false" height-request="22"  xalign=".5"> 
                 <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
               <label>"''"</label><action>'0'</action> </button>
            <button has-focus="false" height-request="22"  xalign=".5">   
               <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"15"</width><height>"15"</height>
                <label>"''"</label><action>'0'</action>   </button>

            <button  visible="1"   tooltip-text="EXIT:guiMgrOneArcDts"  
                gtk-apply="true" has-focus="false" >  
                <label> "'{{===-ONE-'" </label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMgrOneArcDts'</action>   </button>

            <button visible="1"  tooltip-text="EXIT:guiPXB_ion_RS" has-focus="false" height-request="13"  xalign=".5" > 
                <label> "'{{=-PCB-=}}'" </label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiPXB_ion_RS'</action>   </button>

            <button tooltip-text="-One-PCB-ALL-" has-focus="true" height-request="32"> 
               <label>"'{{-One-PCB-All-}}'"</label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
               <action>'EXIT:guiArcOnePxbAll'</action> </button>

            <button has-focus="false" height-request="22"  xalign=".5">
               <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"15"</width><height>"15"</height>
                <label>"''"</label><action>'0'</action>   </button>

           <button has-focus="false" height-request="22"  xalign=".5">
               <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
                <label>"''"</label><action>'0'</action>   </button>
            <hseparator width-request="233"></hseparator>
        </hbox>
 
        <vseparator height-request="11"></vseparator>
            <vbox>
                <vseparator height-request="13"></vseparator>
                <hbox homogeneous="true"><hbox>
				   <button has-focus="false" height-request="22"  xalign=".5">
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>44</width><height>44</height>
						<label>"''"</label><action>'0'</action>   </button>
                    <button tooltip-text="''" >
                        <label>'Return_to_NoteBook_Menu_System_'</label> 
						<action function="'closewindow'">msg_DC_LxgenMenu_window_0</action>
						<action function="'closewindow'">msg_DC_LxgenBack_window_0</action>
						<action function="'closewindow'">msg_DC_LxgenDox_window_0</action>
						<action function="'closewindow'">msg_DC_LxgenUtil_window_0</action>
						<action function="'closewindow'">msg_DC_LxgenSystem_window_0</action> </button>
				   <button has-focus="false" height-request="22"  xalign=".5">
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>44</width><height>44</height>
						<label>"''"</label><action>'0'</action>   </button>
                </hbox></hbox>
            </vbox>
    <text  visible="0"> 
    <label>"'______Return_to_NoteBook_Menu_System______'"</label> </text> 
        <vseparator height-request="44"></vseparator>
</vbox>
</frame>
<variable>msg_DC_LxgenSystem_window_0</variable>
</window>'
export msg_DC_LxgenSystem_window_0   #! REQUIRED BASH Msg Window ===================
#! ### BASH SYSTEM Page 0 <button> #########################################
#! 
#!
#! =====================================================================
#! === BashPageMenu =============================== ACTIVE
#! =====================================================================
msg_DC_LxgenMenu_window_text="===_Bash_Menu_==="
msg_DC_LxgenMenu_window_0='
<window title="msg_DC_LxgenMenu_window_0_pageMenu_!_"
    space-expand="true" 
    resizable="true" 
    visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenMenu_window_text}'</b> </span> " </label></text>
    <vbox>
            <button visible="0"   tooltip-text="width-50-space>'=============================='" <height-request="1">
                    <label>"'!_________!________!_________!_________!_____!____'"</label>
                    <action>'0-Menu-Page-:spacer'</action> </button>
            <vseparator height-request="3"></vseparator>
        <hseparator width-request="1"></hseparator> 

        <text visible="true">   <label>"'#_BASH-DOUBLE-Click_#'"</label> </text> 

        <hseparator width-request="1"></hseparator> 
        <vbox>
            <vseparator height-request="5"></vseparator>
            <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>15</width><height>15</height>
                <label> "  '===!-_Menu-Tool-Tip_-!==='  " </label> 
                <action function="'launch'">msg_DC_MainMenuToolTip_window</action>
                <action>'0-Main_Menu-Tool-Tip'</action> </button>
            <vseparator  height-request="1" > </vseparator>
        <vbox  visible="1" homogeneous="true">
            <hbox homogeneous="true">
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
                <button> <label>"'_B32B_'"</label>
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_B32BX'</action>  </button>
                <button> <label>"'_B5B_'"</label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_B5BX'</action>  </button>
                <button> <label>"'_B64B_'"</label>
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_B64BX'</action>  </button>
                <button> <label>"'N32N_'" </label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_N32N'</action>  </button>
                <button> <label>"'N64N_'" </label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_N64N'</action>  </button>
                <button> <label>"'_T-6_'"</label>
                        <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_T-6'</action>  </button>
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
            </hbox>
            <hbox homogeneous="true"><hbox>
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button> <label>"'S1564_2'" </label>
                    <input file stock="gtk-yes"></input><width>15</width><height>15</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_S1564'</action>  </button>
                <button> <label>"'K-K_'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_K-K'</action>  </button>
                <button> <label>"'I-I_'" </label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_I-I'</action>  </button>
                <button> <label>"'F32F_'"</label>
					 <input file> "'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_F32F'</action>  </button>
                <button> <label>"'F64-96F_'"</label>
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>27</width><height>27</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_F64F'</action>  </button>
                <button> <label>"'X708_'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_X708'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
            </hbox></hbox>
    
            <hbox homogeneous="true"><hbox>
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button> <label>"'Qk7_3'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_Qk7'</action>  </button>
                <button> <label>"'X64_'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_X64'</action>  </button>
                <button> <label>"'S-7_'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_S-7'</action>  </button>
                <button> <label>"'S64_'" </label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_S64'</action>  </button>
                <button> <label>"'SLXSC_'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_SLXSC'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
            </hbox></hbox>
            <hbox visible="0" homogeneous="true"><hbox visible="0">
                <hseparator width-request="1"></hseparator> 
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
                <button visible="0"> <label>"'EOS_'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_EOS'</action>  </button>
                <button> <label>"'S-7_'"</label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_S-7'</action>  </button>
                <button> <label>"'S64_'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_S64'</action>  </button>
                <button> <label>"'SLXSC_'"</label>
                         <input file stock="gtk-yes"></input><width>9</width><height>9</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_SLXSC'</action>  </button>
                <button visible="0"> <label>"'SLK64_'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_SLK64'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
            </hbox></hbox>
            <hbox homogeneous="true"><hbox>
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-bluXora.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button>  <label>"'M6M_4'"</label>
                    <input file stock="gtk-yes"></input><width>11</width><height>11</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_M6M'</action>  </button>
                <button> <label>"'DBW32_'" </label>
                    <input file stock="gtk-yes"></input><width>7</width><height>7</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_DBW32'</action>  </button>
                <button> <label>"'DBW64_'" </label>
                    <input file stock="gtk-yes"></input><width>7</width><height>7</height>   
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input> <width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_DBW64'</action>  </button>
                <button> <label>"'J32J_'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_J32J'</action>  </button>
                <button> <label>"'J64J_'" </label>
                        <input file stock="gtk-yes"></input><width>9</width><height>9</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_J64J'</action>  </button>
                <button> <label>"'genORG'" </label>
                    <input file stock="gtk-no"></input><width>7</width><height>7</height>   
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_ORG'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="1" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-bluXora.svg'"</input><width>30</width><height>30</height>
                    <label>"''"</label> <action>'select-Big_90'</action>  </button>
            </hbox></hbox>
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="1"></hseparator> 
               <button visible="0" tooltip-text="'check-Big_90'" >
                    <input file> "'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>33</width><height>33</height>
                        <label>"''"</label> <action>'select-Big_90'</action> 
                    <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button tooltip-text="'[1]_EXIT:ARB_DBW640__DebBookWorm64-v10.0.12_date:251001_:Pex=${gcSysChkPexFlg}:'" > 
                    <label>"'_DebBW-64_'" </label>
                    <input file> "'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>33</width><height>33</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action>
                    <action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_DBW640'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button tooltip-text="'[2]_EXIT:ARB_PDV640__Pup-EXtron-Devuan-64_:Pex=${gcSysChkPexFlg}:'" > 
                    <label>"'_PEX-Dev64_'" </label>
					<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action>
                    <action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_PDV640'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button tooltip-text="'[3]_EXIT:ARB_PN640__Pup-EXtron-NOBLE-64_:Pex=${gcSysChkPexFlg}:'" > 
                    <label>"'_PEX-Noble-64_'" </label>
					<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_PN640'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button  tooltip-text="'[4]_ARB_Trx64R-Retro_trixie_:Pex=${gcSysChkPexFlg}:'" > 
                <label>"'_PEX-Trixie-64R'"</label>
                    <input file> "'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>33</width><height>33</height>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:ARB_Trx64R'</action>  </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="0" tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>33</width><height>33</height>
                        <label>"''"</label> <action>'select-Big_90'</action> 
                    <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>  </button>
                <hseparator width-request="1"></hseparator> 
			</hbox></hbox>
        </vbox>
            <vseparator height-request="33"> </vseparator>
            <hbox homogeneous="true">
                <button tooltip-text="''" >
                    <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>33</width>  <height>33</height>
                    <label>'Clear-Bash-MENU-Window'</label> 
                <action function="closewindow">msg_DC_LxgenMenu_window_0</action> </button>
            </hbox>
            <vseparator height-request="33"> </vseparator>
        </vbox>
            <vseparator  height-request="22" > </vseparator>
    </vbox>
</frame>
<variable>msg_DC_LxgenMenu_window_0</variable>
</window>'
export msg_DC_LxgenMenu_window_0   #! REQUIRED Msg Window ===================
#!
#!
#!
#!
#! =====================================================================
#! _BASH_=== page === pageB === pageBack =====================================
#! =====================================================================
msg_DC_LxgenBack_window_text="===_Bash_BackUp_==="
msg_DC_LxgenBack_window_0='
<window title="msg_DC_LxgenBack_window_0_pageBack_!_"
    space-expand="true" 
    resizable="true" 
    visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenBack_window_text}'</b> </span> " </label></text>
    <vbox>
            <button visible="0"   tooltip-text="width-50-space>'=============================='" <height-request="1">
                    <label>"'!_________!________!_________!_________!_____!____'"</label>
                    <action>'0-Main-BackUp-Page-:spacer'</action> </button>
            <vseparator height-request="3"></vseparator>
        <hseparator width-request="1"></hseparator> 
        <text visible="true">   <label>"'###_BASH-DOUBLE-Click_###'"</label> </text> 
        <hseparator width-request="1"></hseparator> 
            <vbox>
            <vseparator height-request="7"></vseparator>
            <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>15</width><height>15</height>
                <label> "  'Bash!---BackUp-Tool-Tip-!==='  " </label> 
                <action function="'launch'">msg_DC_MainBackUpToolTip_window</action>
                <action>'0-Main-BackUp-Tool-Tip'</action> </button>
            <vseparator height-request="7"></vseparator>
            <button visible="1"  tooltip-text="EXIT:guiPXB-RS"  
                has-focus="true" width-request="35" height-request="35" >
                <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>33</width><height>33</height>
                <label>"'_PXB-Backup_ReSTART_*'"</label>
                <action function="'launch'">msg_DC_Quick_window</action> 
                <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RS'</action>   </button>
            <vseparator height-request="3"></vseparator>
            <button visible="1"  tooltip-text="EXIT:guiPXB-RB"  
                has-focus="true" width-request="55" height-request="35" >
                <input file> "'/tmp/EmGr-img-hash-red.xpm'"</input><width>33</width><height>33</height>
                <label>"'_PXB-Backup_ReBoot_*'"</label>
                <action function="'launch'">msg_DC_Quick_window</action> 
                <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RB'</action>   </button>
            <vseparator height-request="3"></vseparator>
            <button visible="1"  tooltip-text="EXIT:guiPXB-RQ"  
                has-focus="true" width-request="55" height-request="35" >
                <input file> "'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>33</width><height>33</height>
                <label>"'_PXB-Backup_PowerOff_*'"</label>
                <action function="'launch'">msg_DC_Quick_window</action> 
                <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RQ'</action>   </button>
            <vseparator height-request="3"></vseparator>
                <hseparator width-request="15"></hseparator>
            <vseparator height-request="3"></vseparator>
            </vbox>
            <vseparator visible="1" height-request="23"></vseparator>
            <button   visible="0"   tooltip-text="''" has-focus="false" width-request="55"  height-request="11"> <label> "" </label> 
                       <action>'0-top-CBX-Development'</action>       </button>
            <hbox visible="0" homogeneous="false">
            <hbox homogeneous="0">
                <hseparator width-request="90"></hseparator>
                 <hseparator width-request="20"></hseparator>
                    <checkbox  active="'$CbxB1'">  <label>'BakOne'</label>  <variable>CBXB1</variable>  </checkbox>
                    <checkbox  active="'$CbxPcb'">  <label>'{PCB}'</label>  <variable>CBXS2F</variable>   </checkbox>
                    <checkbox  active="'$CbxB2'">  <label>'BakAll'</label>  <variable>CBXB2</variable>  </checkbox>
                    <checkbox  active="'$CbxRs'">  <label>'ReStart'</label>  <variable>CbxRs</variable>   </checkbox>
                    <checkbox  active="'$CbxRb'">  <label>'ReBoot'</label>  <variable>CbxRb</variable>  </checkbox>  
                    <checkbox  active="'$CbxRq'">  <label>'ReQuit'</label>  <variable>CbxRq</variable>  </checkbox>
                <hseparator width-request="60"></hseparator>
            </hbox>
                <hseparator width-request="170"></hseparator>
            </hbox>
             <hbox homogeneous="true">
            <button visible="0" tooltip-text="EXIT:CbxApply_ComboBoxes_Developmental_" >
               <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>"15"</width><height>"15"</height>
               <label> '_Execute-Combo-Boxes'  </label>
               <action>'EXIT=CbxApply'</action>
                </button>
              </hbox>
            <hbox  visible="0" homogeneous="true" visible="1" width-request="100" >
                <vseparator height-request="3"> </vseparator>
                <button    tooltip-text="''" has-focus="false" height-request="11"> <label> "" </label> 
                       <action>'0-top-BackUp'</action>       </button>
                <button label="'===_BackUp-One_/_PCB_/_BackUp-All_Tool-Tip-==='"
                    visible="true"  has-focus="false" >
                    <action function="'launch'">msg_DC_BakOneAll_window</action> 
                    <action function="'closewindow'">msg_DC_BakOneAll_window</action>  </button>
            </hbox>
 
        <hbox>
            <hseparator width-request="44"></hseparator>
            <hseparator width-request="23"></hseparator>
        </hbox>
            <vseparator height-request="11"></vseparator>
            <button  tooltip-text="''" has-focus="false" height-request="13"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>'0-C3C-Tool-Tip'</action> </button>
            <hbox homogeneous="true">
            <button    tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "  '===!-C3C-Tool-Tip-!==='  " </label> 
                <action function="'launch'">msg_DC_C3C_window</action>
                <action>'0-C3C-Tool-Tip'</action> </button>
            </hbox>
            <hbox homogeneous="true">
                <button tooltip-text="EXIT:C3CS2F:ReStart" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReStart'"  </label>
                   <action function="'launch'">msg_DC_Quick_window</action>
                   <action function="'closewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:C3CS2FRS'</action> </button>
                <button tooltip-text="EXIT:C3CS2F:ReBoot" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReBoot'"  </label>
                   <action function="'launch'">msg_DC_Quick_window</action>
                   <action function="'closewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:C3CS2FRB'</action> </button>
                <button tooltip-text="EXIT:C3CS2F:ReQuit" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReQuit'"  </label>
                   <action function="'launch'">msg_DC_Quick_window</action>
                   <action function="'closewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:C3CS2FRQ'</action> </button>
            </hbox>
            <vseparator height-request="7"> </vseparator>
            <button   visible="0" has-focus="false" height-request="3"> <label> "" </label> 
                <input file icon="gtk-select-color" ></input>   
                <action>0-P123-bot</action> </button>
            <vbox>
                <vseparator height-request="3"> </vseparator>
                <hbox homogeneous="true">
                    <button tooltip-text="''" >
                        <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>33</width>  <height>33</height>
                        <label>'Clear-Bash-BACK-Window'</label> 
                    <action function="closewindow">msg_DC_LxgenBack_window_0</action> </button>
                </hbox>
            </vbox>
    </vbox>
</frame>
<variable>msg_DC_LxgenBack_window_0</variable>
</window>'
export msg_DC_LxgenBack_window_0   #! REQUIRED Msg Window ===================
#!
#!    
#! =====================================================================
#! _BASH_=== page === pageD === pageDOX ======================================
#! =====================================================================
msg_DC_LxgenDox_window_text="===_Bash_DOX_==="
msg_DC_LxgenDox_window_0='
<window title="msg_DC_LxgenDox_window_0_pageDOX_!!_"
    space-expand="false" 
    resizable="true" 
    visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenDox_window_text}'</b> </span> " </label></text>
<vbox>
            <button visible="0"   tooltip-text="width-50-space>'==================================================='" <height-request="1">
                <label>"'!_________!________!_________!_________!_____!____'"</label>
                <action>'Dox-top'</action> </button>
        <hseparator width-request="1"></hseparator> 
        <text visible="true">   <label>"'###_BASH-Single-Click_###'"</label> </text> 
        <hseparator width-request="7"></hseparator> 
            <button visible="0" ><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>12</width><height>5</height><action>"P3-spacer"</action> </button>
            <button   visible="1" has-focus="false" > <label> "" </label> 
                <input file icon="gtk-select-color" ></input> <action>'lxAction:Dox-top'</action> </button>
            <hbox homogeneous="true"><hbox>
        <hseparator width-request="7"></hseparator> 
                <button visible="1" tooltip-text="'===-EXIT:guiDumpHLP-==='  <HELP dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>45</width><height>35</height>
                    <label>"'HELP'  " </label>
                    <action>'Sbr_Dump_HLP'</action> </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpFAQ-==='  <FAQ dump>" has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>45</width><height>35</height>
                    <label> "'Faq'  " </label>
                    <action>'Sbr_Dump_FAQ'</action> </button>
        <hseparator width-request="7"></hseparator> 
            </hbox></hbox>
            <hbox homogeneous="true"><hbox>
        <hseparator width-request="7"></hseparator> 
               <button visible="1" tooltip-text="'EXIT:guiDumpSrc'  < Display Devloper Source >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>37</width><height>37</height>
                    <label>"'Dump_Source_Code_' "</label>
                    <action>'EXIT:guiDumpSrc'</action> </button>
        <hseparator width-request="7"></hseparator> 
               <button visible="1" tooltip-text="'EXIT:guiDumpSys_Developers'  < Display Devloper SysProc >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_Sys'  " </label>
                    <action>'EXIT:guiDumpSys'</action> </button>
        <hseparator width-request="7"></hseparator> 
               <button visible="1" tooltip-text="'EXIT:guiDumpImg'  < Display Devloper Source >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>37</width><height>37</height>
                    <label>"'Dump_Source_Image_' "</label>
                    <action>'EXIT:guiDumpImg'</action> </button>
        <hseparator width-request="7"></hseparator> 
            </hbox></hbox>
            <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height><action>"P3-spacer"</action> </button>
            <vseparator height-request="15" > </vseparator>
            <vbox>
            <hbox homogeneous="true"><hbox>
        <hseparator width-request="7"></hseparator> 
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpBashQ-==='  <Note_BASH-Quirks>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'BashQ'  " </label>
                    <action>'EXIT:guiDumpBashQ'</action> </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpDesign-==='  <Design_dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Design'" </label>
                    <action>'EXIT:guiDumpDesign'</action> </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1" tooltip-text="'===-EXIT:guiDumpUPL-==='  < Legal_Dump: Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_UPL'" </label>
                    <action>'EXIT:guiDumpUPL'</action>   </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1" tooltip-text="'===-EXIT:guiDumpImt-==='  < Puppy_Immutable_Dump: Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Immutable'" </label>
                    <action>'EXIT:guiDumpImt'</action>   </button>
        <hseparator width-request="7"></hseparator> 
            </hbox></hbox>
            </vbox>
            <hbox homogeneous="true"><hbox>
        <hseparator width-request="7"></hseparator> 
                <button    tooltip-text="'===-EXIT:guiBase64__Sbr_Base64-==='"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Source-to-Base64'  " </label>    
                    <action>'EXIT:guiSrcBase64'</action> </button>
        <hseparator width-request="7"></hseparator> 
            </hbox></hbox>
            <hbox homogeneous="true"><hbox>
        <hseparator width-request="7"></hseparator> 
              <button visible="1"    tooltip-text="'===-EXIT:guiMandelbrot-==='   "   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                    <label>"'Mandelbrot_'"</label>  
                    <action>'EXIT:guiMandelbrot'</action> 
               </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1" tooltip-text="'===-EXIT:guiDumpDeclareSys-==='  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> " 'Dump_Declare_Sys'   " </label>
                    <action>'EXIT:guiDumpDeclareSys'</action>   </button>
        <hseparator width-request="7"></hseparator> 
                <button visible="1" tooltip-text="'===-EXIT:guiDumpDeclareVar-==='  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_Declare_Var'    " </label>
                    <action>'EXIT:guiDumpDeclareVar'</action>   </button>
        <hseparator width-request="7"></hseparator> 
              <button visible="1" tooltip-text="'=-EXIT:guiAudio_for_StartUpSound+LogInDts-='"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                    <label>"'Start'_'Audio'_'Sound'"</label>    
                    <action>'EXIT:guiAudio'</action> 
                </button>
        <hseparator width-request="7"></hseparator> 
            </hbox></hbox>
            <hbox homogeneous="true">
<button  tooltip-text="'=-EXIT:_DISTRO_guiBackGround-=':only-launch, only PageDOX, 250"   has-focus="false">
<label>"'Distro-List'"</label>	
        <action>'EXIT:gui_Dxstro_Window'</action> </button>
        </hbox>
        <button>  <label>" 'https://github.com' "</label>
            <action function="closewindow">msg_DC_LxgenDox_window_0</action>    </button>
        <vseparator height-request="33" > </vseparator>
        <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height>
            <action>"'P3-spacer'"</action> </button>
        <hseparator width-request="20"></hseparator>
            <hbox homogeneous="true">
                <button tooltip-text="''" >
                    <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>33</width>  <height>33</height>
                    <label>'Clear-Bash-DOX-Window'</label> 
                <action function="closewindow">msg_DC_LxgenDox_window_0</action> </button>
            </hbox>
</vbox>
</frame>
<variable>msg_DC_LxgenDox_window_0</variable>
</window>'
export msg_DC_LxgenDox_window_0   
#! 
#! 
#! =====================================================================
#! _BASH_=== page === pageU === UTIL =========================================
#! =====================================================================
msg_DC_LxgenUtil_window_text="===_Bash_Util_==="
msg_DC_LxgenUtil_window_0='
<window title="msg_DC_LxgenUtil_window_0_pageUTIL_!!!_"
    space-expand="false" 
    resizable="true" 
    visible="true" >
<frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${msg_DC_LxgenUtil_window_text}'</b> </span> " </label></text>
        <hseparator width-request="1"></hseparator> 
        <text visible="true">   <label>"'###_BASH-Double-Click_###'"</label> </text> 
        <hseparator width-request="1"></hseparator> 
<vbox>
    <vbox>
        <vseparator height-request="13" > </vseparator>
        <vbox visible="1">
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="12"></hseparator>
            <button visible="1" tooltip-text="">
                <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>35</width><height>35</height>   
                <label>'-S2F-1-'</label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>'EXIT:gui_S2F1'</action>  
                </button>
            <hseparator width-request="12"></hseparator>
                <button  visible="0" tooltip-text="">
                    <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>15</width><height>15</height>   
                    <label>'-UpMount-'</label>
                        <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                    <action>'EXIT:gui-Up-MntInt'</action>  </button>
                <hseparator  visible="0" width-request="12"></hseparator>
                <button visible="1" tooltip-text="gparted">
                <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>35</width><height>35</height>   
                <label>'{Gparted}'</label>
                    <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'gparted'</action>  </button>
            <hseparator width-request="12"></hseparator>
            <button    tooltip-text="">
                <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>35</width><height>35</height>   
                <label>'-S2F-3-'</label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>'EXIT:gui_S2F3'</action>  </button>
            <hseparator visible="0" width-request="12"></hseparator>
                    <button  visible="0" tooltip-text="">
                        <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>15</width><height>15</height>   
                        <label>'-DnMount-'</label>
                            <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                        <action>'EXIT:gui-Dn-MntInt'</action>  </button>
                    <hseparator  visible="0" width-request="12"></hseparator>
            <hseparator width-request="12"></hseparator>
            <button  visible="1"   tooltip-text="If [ EXIT='"']'"'
             then Absolute-Fall-Thru ...">
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>35</width><height>35</height>   
                <label>'{-EXIT="''"-}'</label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:""'</action>  </button>
            <hseparator   visible="1"  width-request="12"></hseparator>
            <button    tooltip-text="_Halt_Caution ! ! !
              EXTon Distros can lock_PowerUp-Switch_...">
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>35</width><height>35</height>   
                <label>'{!-HALT-!}'</label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'halt'</action>  </button>
            </hbox></hbox>
           <vseparator  visible="1" height-request="22" > </vseparator>
            <button   visible="1"   tooltip-text="'EXIT:guiMCI' < MCI > Instructional 
                Embedded Graphics Sample Project  
                * Requires /root/my-applications/rc.z_CTB-SLX.sh" has-focus="false" height-request="11"> <label> "MCI" </label> 
                        <input file icon="gtk-select-color" ></input>   
                       <action>'top-guiMCI'</action>       </button>
            <hbox homogeneous="true">
                <button  visible="1" gtk-apply="true" has-focus="false" > 
                <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width>"35"</width><height>"35"</height>
                <label> " { 'MCI_Project_Instructional-Ext' }  " </label>
                   <action function="'launch'">msg_DC_Quick_window</action>  <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMCI'</action>      </button>
            </hbox>
        </vbox>
    
            <vseparator height-request="3" > </vseparator>
            <button visible="1" label="" has-focus="false" height-request="11"> 
                <action>'top-image-lib'</action> </button>
            <hbox homogeneous="true"><hbox>
            <hseparator width-request="22" > </hseparator>
            <button label="'-Image-Library-'" visible="1" height-request="1"> <action>lxAction:spacer</action> </button>
            <hseparator width-request="57" > </hseparator>
            <button label="'-QuitExit-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'Quit-Red'" >   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label> <action>"'apple:0'"</action> </button>
            <button     tooltip-text="'Quit-grnnnn'" ><input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:1'"</action> </button>
            <button     tooltip-text="'Quit-yelnnn'" ><input file>"'/tmp/EmGr-img-quit-yelnnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:2'"</action> </button>
            <hseparator width-request="27" > </hseparator>
            <button label="'-Apples-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:3'"</action> </button>
            <button     tooltip-text="'apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:4'"</action> </button>
            <button     tooltip-text="'apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:5'"</action> </button>
            <button     tooltip-text="'apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:6'"</action> </button>
            <hseparator width-request="22" > </hseparator>
            </hbox></hbox>
            <hbox homogeneous="true"><hbox>
            <hseparator width-request="22" > </hseparator>
            <button label="'-HASH-'" has-focus="false" height-request="5"> <action>"'Hash:0'"</action> </button>
            <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:1'"</action> </button>
            <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:2'"</action> </button>
            <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:3'"</action> </button>
            <hseparator width-request="33" > </hseparator>
            <button label="'-JUGS-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'jug-blu0yel'" >   <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label> <action>"'jug:1'"</action> </button>
            <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:2'"</action> </button>
            <button     tooltip-text="'jug-redxyel'" >   <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:3'"</action> </button>
            <button     tooltip-text="'jug-redxgrn'" >   <input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:4'"</action> </button>
            <button     tooltip-text="'jug-grnxred'" >   <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:5'"</action> </button>
            <button     tooltip-text="'jug-yelxred'" >   <input file>"'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:6'"</action> </button>
            <button     tooltip-text="'jug-redxblu'" >   <input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:7'"</action> </button>
            <hseparator width-request="55" > </hseparator>
            </hbox> </hbox>
            <hbox homogeneous="true"><hbox>
            <hseparator width-request="7" > </hseparator>
             <hseparator width-request="23" > </hseparator>
            <button label="'-Check-90-'" has-focus="false" height-request="15"> <action>"'Check:90:0'"</action> </button>
            <button visible="1" tooltip-text="'5.check-90-redXyel'" ><input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-redXyel'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>    </button>
            <button visible="1" tooltip-text="'1.check-90-oraXblu'" ><input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-oraXblu'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_oraXblu_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_oraXblu_window</action>    </button>
            <button visible="1" tooltip-text="'2.check-90-bluXora'" ><input file>"'/tmp/EmGr-img-Check-90-bluXora.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-bluXora'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_bluXora_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_bluXora_window</action>    </button>
            <button visible="1" tooltip-text="'3.check-90-redXblu'" ><input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-redXblu'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_redXblu_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_redXblu_window</action>    </button>
            <button visible="1" tooltip-text="'4.check-90-grnXred'" ><input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-grnXred'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>
            <hseparator width-request="22" > </hseparator>
            <button label="'-CheckMark-'" has-focus="false" height-request="15"> <action>'CheckMark'r</action> </button>
            <button     tooltip-text="'Check-111-redXblu'" ><input file>"'/tmp/EmGr-img-Check-111-bluXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'Check:81'"</action> </button>
             <button    tooltip-text="'Check-111-redXgrn'" ><input file>"'/tmp/EmGr-img-Check-111-grnXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'Check:82'"</action> </button>
            <button     tooltip-text="'Check-111redXyel'" ><input file>"'/tmp/EmGr-img-Check-111-yelXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'Check:83'"</action> </button>
            <hseparator width-request="13" > </hseparator>
            <button label="'-Check-'" has-focus="false" height-request="15"> <action>'CheckMark'r</action> </button>
             <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check:13'"</action> </button>
            <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check:14'"</action> </button>
            <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check:15'"</action> </button>
            <hseparator width-request="22" > </hseparator>
            </hbox> </hbox>
 
        <button visible="0" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>
    </vbox>
            <vseparator height-request="3"> </vseparator>
            <hbox homogeneous="true">
                <button tooltip-text="''" >
                    <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>13</width>  <height>13</height>
                    <label>'Clear-Bash-UTIL-Window'</label> 
                <action function="closewindow">msg_DC_LxgenUtil_window_0</action> </button>
            </hbox>
</vbox>
</frame>
<variable>msg_DC_LxgenUtil_window_0</variable>
</window>'
export msg_DC_LxgenUtil_window_0   #! REQUIRED Msg Window ===================
#! ############################################################
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_ClearFlagsSystem   #: Active for System
#(: called by:
#(: param:
#(: purpose: clear all system flags
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : some flags are still hard-code ; ie, LockFile , BackUpStatus
#(: preceded by call to Sbr_CBX_ReStart and $0
#(:    #! for System,  lingering "clear" for old var , to be culled. 
#(:    #! current in-use   2>&1>/dev/null
#(:    #! some are dev or tmp usage
#! ############################################################
function Sbr_ClearFlagsSystem() {   # ACTIVE    
    n=0
    rm -f "${gcMGR_LockFile}"             ### this is "MGR_LockFile" ###  but not E3R  CBX
    rm -f "/tmp/snapmergepuppy-error"     ### this is SMP flag , via SMP
    rm -f "/tmp/flagnextpassthru"         ### used by Linux , ? via SMP 
    rm -f "/tmp/box_help"                 ### remove the lingering temp file.
    rm -f "/tmp/box_source"               ### remove the lingering temp file.
    rm -f "/tmp/EmGa-Master-GUI.txt"      ### Embedded Image Flag file
    gcMGRConfigArbIdd=""                  ### "menu config"  
    /bin/echo " " > /dev/console
} #
export -f Sbr_ClearFlagsSystem
#!
#!
#! ###_CBX_################################################
#! BEGIN:     CBx   #!
#! ###_CBX_################################################
#!
#!
#(: ================================================================
#(: fx Sbr_Cbx_PN64_ReBoot   #: Not Active
#(: called by:
#(: param:
#(: purpose: Pex Nobel64 ReBoot code
#(: calls:
#(: method:
#(: sends:
#(: rationale:  avoid freeze on a virtual terminal
#(: note :
#(: preceded by call to Sbr_CBX_ReBoot
#! ############################################################
function Sbr_Cbx_PN64_ReBoot() {    #! Not Active  #! 
#!   PexD64_reboot.sh 
#! 
#! support sudo for non-root user.
#! avoid Freeze Fault on a virtual terminal
#!
# continue running if the parent process is the login shell and we must
# kill it to unmount a file system
    trap "" HUP
    # !
    script=""
    #!
    for i in $@ ; do
        case $i in
            debug) echo > /tmp/debugshutdown ; shift ;;
            shell) echo > /tmp/shutdownshell ; shift ;;
            -r)
              if [ "${0##*/}" == "shutdown" ] && [ "$script" == "" ]; then
               script="reboot"
              fi
            shift ;;
        esac
    done
    #!
    if [ "$script" == "" ]; then    #! call $0 
     script=${0##*/}
    fi
    #!
    if [ -d /proc/acpi ] || [ -f /proc/apm ]; then
        lc_Can_Shutdown=1
    else
        lc_Can_Shutdown=0
    fi
    #!
    . /etc/rc.d/PUPSTATE
    #!
    if [ "$PUPMODE" = "5" ] && [ $PPID -eq 1 ] ; then
        touch /tmp/shutdownconfig_results ; sync  #skip shutdownconfig
    fi
    #!
    [ "`whoami`" != "root" ] && exec sudo -A ${0} ${@} 
    #!
    if [ -n "$DISPLAY" -o -n "$WAYLAND_DISPLAY" ] ; then
        case $script in
            poweroff)  exec wmpoweroff ;; 
            reboot) exec wmreboot ;;
        esac
    fi
#!
/etc/rc.d/rc.shutdown
#!
    case $script in
        poweroff) 
             if [ $lc_Can_Shutdown -eq 1 ]; then
              /bin/busybox poweroff
             else
              clear > /dev/console
              dialog --ok-label "Restart" --msgbox "Now save to turn off the COMPUTER" 5 43
              /bin/busybox reboot
             fi
        ;;
        reboot) /bin/busybox reboot ;;
        #!
    esac
#!
} 
export Sbr_Cbx_PN64_ReBoot
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Cbx_ReStart
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
#! ###_CBX_###  "Sbr_Cbx_ReStart" ##############################################
function Sbr_Cbx_ReStart() {   # ACTIVE   Group:  "Sbr_Cbx_"
    n=0
    #!
    lcMsgStr="ReStart"
    Sbr_ClearFlagsSystem  ""   
    #~ Sbr_Splash_PupHead
    sleep 1
    #! clear   #! Xterm debugging screen #! else repeated ReStart will stack up display. 
    #! This is "ReStart"   
    . ${0}      #: $ ZERO   # will run $0 / ReStart fresh .
     ${0}      #: $ ZERO   # will run $0 / ReStart fresh .
    #!
    #! ELSE, if BASH vs GTK conflict from main gui. 
    Sbr_FnNotFound "--${0} ReStart--"
    #!
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
    #!
} #
export -f Sbr_Cbx_ReStart
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Cbx_ReBoot
#(: called by: Simple, C3C, Reboot et al 
#(: param:
#(: purpose:
#(: calls:
#(: called by: C3C, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:  "PEX" distros might not handle "ReBoot / PowerOff" properly, 
#(:  therefodre Cbx_ReBoot should test if "PEX" flag, then call "ReStart" . 
#(:
#! ###_CBX_###  "Sbr_Cbx_ReBoot" ##############################################
function Sbr_Cbx_ReBoot() {   # ACTIVE  Simple ReBoot 
    n=0
    #! gcMgrDistroID in PexDevuan64, PexNoble64, PexTrixie64R . 
	#! PEX is Active, OS does NOT handle command !
    #! if [ "${gcSysChkPexFlg}" ] ; then PEX distro is Active, OS does NOT handle reboot !
    if [ "${gcSysChkPexFlg}" = "true" ]  ; then 
		n=0 #! PEX should only run ReStart
		Sbr_Splash_It "Cbx PEX = > ReSTART "  "yellow" "red" "5" #! -D!---
        #!
		Sbr_Cbx_ReStart
		#!
    else  #! assume common Puppy OS. 
		Sbr_Splash_It "Cbx S.I.M.P.L.E. _ReBoot "  "yellow" "red" "3" #! -D!---
		Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc.
		#! Sbr_Sys_SMP      #! Sbr_Sys_SMP  #! Save-2-Flash 
		#! Sbr_Sys_Set_PEX	 #! setup PEX, then ReBoot via wmreboot 
        ${gcDistroReboot}   #! possibly "'wmreboot'"  Distro may differ. 
    fi
    #!
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
    #! 
} #
export -f Sbr_Cbx_ReBoot
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Cbx_ReQuit
#(: called by: CBX_ReQuit Simple PowerOff
#(: param:
#(: purpose:
#(: calls:
#(: called by: Simple ReQuit on Main System Screen
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:  "PEX" distros do not handle "ReBoot / PowerOff" properly, 
#(:  therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart. 
#(: 
#! ###_CBX_###  "Sbr_Cbx_ReQuit" ##############################################
function Sbr_Cbx_ReQuit() {   # ACTIVE   Simple poweroff
    n=0
    #! gcMgrDistroID in PexDevuan64, PexNoble64, PexTrixie64R . 
	#! PEX is Active, OS does NOT handle command !
    #! if [ "${gcSysChkPexFlg}" ] ; then PEX distro is Active, OS does NOT handle ReQuit !
    if [ "${gcSysChkPexFlg}" = "true" ]  ; then 
		n=0
		Sbr_Splash_It "Cbx PEX ReQuit = > ReSTART "  "yellow" "red" "5" #! -D!---
		Sbr_Cbx_ReStart
		#(:  "PEX" distros do not handle "ReBoot / PowerOff / Halt" properly, 
		#(:  therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart, as work-around. 
	else
		Sbr_Splash_It "Cbx S.I.M.P.L.E. BASH wmpoweroff / rc.shutdown "  "yellow" "red" "5" #! -D!---
		Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc.
        #! Sbr_Sys_Set_PEX
		#! Sbr_Sys_SMP      #! Sbr_Sys_SMP  #! Save-2-Flash 
        #! what other call can there be ?
        wmpoweroff
        #! poweroff   #! /etc/rc.d/rc.shutdown	#! gae, 251202-2119
        #!
    fi
    #!
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
} #
export -f Sbr_Cbx_ReQuit
#!
#(:
#(: ================================================================
#(: fx Sbr_Cbx_RePowerOff
#(: called by: CBX_ReQuit Simple PowerOff
#(: param:
#(: purpose:
#(: calls:
#(: called by: Simple ReQuit on Main System Screen
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(: if PEX is Active, OS does NOT handle  "ReBoot / PowerOff / Halt" properly !
#(:  therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart. 
#(:
#! ###_CBX_###  "Sbr_Cbx_RePowerOff" ##############################################
function Sbr_Cbx_RePowerOff() {   # ACTIVE   Simple PowerOff
    n=0	
    #! gcMgrDistroID in PexDevuan64, PexNoble64, PexTrixie64R . 
	#! PEX is Active, OS does NOT handle command !
    #! if [ "${gcSysChkPexFlg}" ] ; then PEX distro is Active, OS does NOT handle poweroff !
    if [ "${gcSysChkPexFlg}" = "true" ]  ; then  
		n-0
		Sbr_Splash_It "Cbx PEX PowerOff = > ReSTART "  "yellow" "red" "5" #! -D!---
		Sbr_Cbx_ReStart
    else	#! PEX distro might hang on this, so must test for current OS = PEX
		Sbr_Splash_It "Cbx  S.I.M.P.L.E. BASH _PowerOff "  "yellow" "green" "1" #! -D!---
		Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc. 
        #! Sbr_Sys_Set_PEX
		#! Sbr_Sys_SMP      #! Sbr_Sys_SMP  #! Save-2-Flash 
        #!
        wmpoweroff   #! RePowerOFF___absolute_for_popping_stack___BASH_poweroff
        #!
    fi
    #!
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
    #!
} #
export -f Sbr_Cbx_RePowerOff
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Cbx_ReHalt
#(: called by: simple CBX_ReHalt
#(: param:
#(: purpose:
#(: calls:
#(: called by: Simple ReHalt on Main System Screen 
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(: if PEX is Active, OS does NOT handle  "ReBoot / PowerOff / Halt" properly !
#(:  therefodre Cbx_ReBoot should test for "PEX" flag, call ReStart. 
#(:
#! ###_CBX_###########################################################
function Sbr_Cbx_ReHalt() {   # ACTIVE  Simple Absolute KILL system
    #!
    n=0
    #!
    #! gcSysChkPexFlg controls PexDV64, PexN64, PexT64 . 
    #! if PEX is Active, OS does NOT handle ReBoot properly !  CBX should = > ReStart. 
    if [ "${gcSysChkPexFlg}" = "true" ] ; then  
		n-0
		Sbr_Splash_It "Cbx PEX ReSTART "  "yellow" "red" "5" #! -D!---
		Sbr_Cbx_ReStart
    else	#! PEX distro might hang on this, so must test for current OS = PEX
		Sbr_Splash_It "Cbx S.I.M.P.L.E. BASH _HALT "  "yellow" "green" "3" #! -D!---
		Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc.
        #! Sbr_Sys_Set_PEX
		#! Sbr_Sys_SMP      #! Sbr_Sys_SMP  #! Save-2-Flash 
        halt    #! may disable Computer Power-On electric switch, full Power-Off ! 
    fi
    #!
} #
export -f Sbr_Cbx_ReHalt
#!
#! ###_CBX_################################################
#! END:     CBx   #!
#! ###_CBX_################################################
#!
#!
#!
#!
#!
#!
#! #######################################################
#! BEGIN:     Miscelaneous SubRoutines 
#! #######################################################
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_SDA_Only
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
function Sbr_Sys_SDA_Only() {    # ACTIVE
    #! if [!SDA] then skip and restart
    #! if [KLM] then skip and restart
    #! Sbr_Sys_SDA_Only # control is test "SDA" && ReStart
       #! only SDA ! KLM must not write to /SDA/menu.lst 
    n=0
    #! Key Routine ! Check IF Hard-Drive Identifier 
    #! If KLM bootable USB
    #! if [ ! -f "/initrd/mnt/dev_save/MARK-${gcBootOsHd}" ] ; then  
    if [ -f "/initrd/mnt/dev_save/MARK-KLM" ] ; then  
        Sbr_Splash_It "= Full Menu only for Primary SDA =" "yellow" "red"  "3"         #! -D---
        #! if this is USB KLM 
        Sbr_Menu_KLM
        #! Write Menu.lst for KLM USB bootable drive.
        Sbr_Cbx_ReStart 1   ### Clean ReStart #  do not continue the called command.
    fi
    #! IF this is SDA, THEN OK to run 
    #! ---> now return back to the caller
    #!
} #
export -f Sbr_Sys_SDA_Only
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_KillProc
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Kill current Proc, stub , and restart
#(: calls: gxmessage, Sbr_Cbx_ReStart
#(: method: . 
#(: sends:
#(: rationale: Allows "killing" a <button> call for 'test' or 'demo' purposes.
#(:
#! ###########################################################
function Sbr_Sys_KillProc() { # ACTIVE
    #! permission control #! control is  Exit if in "Test Mode" or "PassWord Protected Mode" 
    n=0 # Allows to Skip a Proc , Important for use IF Test file is published as sample. 
    if [ ! "$gcSysKillProc" ] ; then  # sets up a Sbr_Button_Only as a "stub" .
        #! if "kill" 
        Sbr_Splash_It "! Kill Procss____STUB only --- ! ---____" "yellow" "red"  "5"         #! -D---
        Sbr_ClearFlagsSystem  ""    &&     sleep 1
        Sbr_Cbx_ReStart 1
    fi
} #
export -f Sbr_Sys_KillProc
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_SetVerDts
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
function Sbr_Sys_SetVerDts() {  # ACTIVE   in   main 
#!  in Main
#! requires gcSysDvar  Developers Version  Date-Time-Stamp
n=0    #: common "stub" so bare funxtion() will not fault during test/dev.
#! Not Used #!  calcs "now" dts 
export gcSysDvar="`date +%y-%m-%d--%H%M-%S`"
#!
#!  touch /0-MGR-LogIn-${gcSysDvar}  #! will clutter up the / dir
  touch /0-MGR-LogIn  	#! will overwrite the previous.
#!
#(: ====================================
#(: gcSysDtsNow   todo: 
#(:         ### Rationale: 
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(:       ### some Puppy OS default to GMT, we prefer Local time.
#(:         ### This is Attempt to generate a "NOW" (this-moment) date-time constant.
#(:         ### Date : grave-mark in date () !!!
#(:         ###  Dts="`date +%y%m%d-%H%M-%S`"
#(:         ### adust from default "z" time
#(:         ###     to local mid-america dts ( -5 hours ).
#(:         ###     Does not calc DayLightSavingsTime
#(:         ###     But still a consistent error day-to-day.
#(:     lcNowDts=""
#(:     lcNowDts="`date +%y%m%d%H%M-%S`"
#(:     lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
#(:     gcSysDtsNow="${lcNowDts}-local"
#(: ====================================
#(: date function is ticky. 
#(: ====================================
            #! #! todo:  Not yet used 
            #! lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
            #! gcSysDtsNow="${lcNowDts}"
            #! gcSysDtsNow-local="${lcNowDts}-local"
#!
#! Not Used 
#!  Prefix SubDir location of all Editing Routines .   This is the original Source code for MGR project, et al. 
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
#!
} #
export -f Sbr_Sys_SetVerDts
#!
#!
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Utl_Mandelbrot
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
#(: # Draw_Mandelbrot_Robert.sh
#(: # draw mandelbrot to terminal
#(: # very slow, 33 minutes, to terminal, runs OK !
#(:
#! ############################################################
function Sbr_Utl_Mandelbrot() {  # ACTIVE
    n=0 
    Sbr_Splash_It "_Sbr_Utl_Mandelbrot_()_
  should be run/viewed from Xterm
       may run 30 minutes   " "yellow" "red" "7"
    #!
    #! Must Match with Terminal Screen Size
    #! Required params:
    #! BAILOUT
    #! MAX_ITERATIONS
    #! 
    lnBAILOUT=16  # max loop was 16
    lnMAX_ITERATIONS=100    # 100 is ok for terminal screen.
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
    function sub_mandelbrot_main {  # ACTIVE
        #! mandelbrot sub-main
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
#! # below is call to the calculating mandelbrot main ()
sub_mandelbrot_main   # this is the calculating mandelbrot main ()
} # 
export -f Sbr_Utl_Mandelbrot
#! export -f sub_mandelbrot_iterate 
#! export -f sub_mandelbrot_main
#!
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Base64     Base64 Base-64 Base_64 Base 64
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
function Sbr_Dump_SRC_Base64() {  # ACTIVE
    #! calculates/restores     Base 64, Base_64, Base-64
    n=0
    echo "" 
    echo "=== Base64  cat /tmp/Base64-Encoded.txt ============"
    #! Display Information
    #! expects a plain-text file.
    #! Splash is 45 char long, then wraps.
    #! gxmessage is expands to 72++
lxDumpMsg="Usage: base64 [OPTION]... [FILE]
______________________________________________________________________
MUST USE Xterm to see this dump the calculated data .
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
or available locally via: info '(coreutils) base64 invocation')"
  gxmessage -name "Sbr_Dump_SRC_Base64_documentation"   -fg blue -bg lightyellow  -center  -wrap "${lxDumpMsg}"
    #!
    lcBase64fn="/tmp/box_help" 
    cat "$0" > "/tmp/box_help"
    #! Display Encoded
    lcBase64fnEncoded="/tmp/Base64-Encoded-`date +%y%m%d-%H%M-%S`.txt"
    base64 ${lcBase64fn} > ${lcBase64fnEncoded}
    gxmessage -title "SourceCode Encoded in Base64"  -name "-Encoded-Base64-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcBase64fnEncoded}
    #!
    #! backup copy + DTS  
    lcFnSrc="${lcBase64fnEncoded}"
    lcFnTrg="/root/my-applications" 
    cp -v ${lcFnSrc} ${lcFnTrg}
    #!
    echo "" && echo "=== Base64  cat //tmp/Base-64-Decoded.txt ============"
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
#!
#(:===========================================================
#! begin: Up Pmount       
#(:===========================================================
#(:
#(: ================================================================
#(: fx Sbr_MGR_pMount_One
#(: called by:   Sbr_MGR_pMount_All calls "Sbr_MGR_pMount_One"
#(: purpose:  pMOUNT  only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_MGR_pMount_One() {   # ACTIVE   called by below ...
    #! UpPmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    lcMsgStr="${1}:trg drive ID"
    gcActiveGui="1"
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Small splash 
/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border false  -close never -text "\
.            '${1}'                              "&
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
    kill ${GTKPIDPMNTsbr}  2>/dev/null    #! kill ${GTKPIDPMNTsbr} is split
fi
} #
export -f Sbr_MGR_pMount_One
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_MGR_pMount_All
#(: called from gui
#(: called by: E3R_Main_Int_Long_List    and gui-Up-MntInt
#(: method: code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sbr_MGR_pMount_One)
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(: calls Sbr_MGR_pMount_One
#! ############################################################
function Sbr_MGR_pMount_All() {   # ACTIVE    
    #! UpPmount Special
    n=0
    gcActiveGui="1"
    lcActiveMntId="P"   # Id    # Not Used
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---  Big Splash BackGround 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
   *.      P_Mount_All INTERNAL
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
#! Sbr_MGR_pMount_All
#! if -d /root then already mounted
#;;; multiple calls to subroutine , which runs a single "mount" routine
#;;; begin looping internal code 
#;;; DO NOT USE ON SDA1, because it is the primary drive. 
Sbr_MGR_pMount_One "sda2"  2>/dev/null
Sbr_MGR_pMount_One "sdb1"  2>/dev/null
Sbr_MGR_pMount_One "sdc1"  2>/dev/null
Sbr_MGR_pMount_One "sdd1"  2>/dev/null
Sbr_MGR_pMount_One "sde1"  2>/dev/null
Sbr_MGR_pMount_One "sdf1"  2>/dev/null
Sbr_MGR_pMount_One "sdg1"  2>/dev/null
Sbr_MGR_pMount_One "sdh1"  2>/dev/null
Sbr_MGR_pMount_One "sdi1"  2>/dev/null
Sbr_MGR_pMount_One "sdj1"  2>/dev/null
Sbr_MGR_pMount_One "sdk1"  2>/dev/null
Sbr_MGR_pMount_One "sdl1"  2>/dev/null
Sbr_MGR_pMount_One "sdm1"  2>/dev/null
Sbr_MGR_pMount_One "sdn1"  2>/dev/null
Sbr_MGR_pMount_One "sdo1"  2>/dev/null
Sbr_MGR_pMount_One "sdp1"  2>/dev/null
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if [ "$gcActiveGui" = "1" ] ; then 
    Sbr_Splash_It  "DONE : _pMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDPMNT1}   2>/dev/null   # background splash yel/red 
fi #
    #! utl Clear Restart
    Sbr_ClearFlagsSystem    #! so ReStart can run 
    Sbr_Cbx_ReStart   
} # 
export -f Sbr_MGR_pMount_All
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
#(:
#(: ================================================================
#(: fx Sbr_MGR_uMount_One
#(: called by:   ft(EXIT:guiUMntInt)  (each one)
#(: calls:
#(: purpose:  uMOUNT only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:    function "Sbr_MGR_uMount_All"  calls "Sbr_MGR_uMount_One"
#! ############################################################
function Sbr_MGR_uMount_One() {   # ACTIVE   called by next ...
    #! DnUmount ONE Special
    n=0
    lcParam1="${1}" # trg drive ID
    gcActiveGui="1"
    #!
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D--- Small Splash
/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border false  -close never -text "\
.            '${1}'                              "&
    RETVAL=$?
    GTKPIDUMNTsbr=$!
fi
        lcDirName="/root"
        if [ -d "${lcDirName}" ] ; then # IF target directory is real 
            umount -lv      /mnt/${1}
        else    # ELSE /root is the /root/home and cannot be unMounted !
            n="0"
        fi
if [ "$gcActiveGui" = "1" ] ; then 
       sleep 1
       kill ${GTKPIDUMNTsbr}  2>/dev/null
fi
} #
export -f Sbr_MGR_uMount_One
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_MGR_uMount_All
#(: calls: Sbr_MGR_uMount_One
#(: called from: Gui
#(: called by: E3R_Main_Int_Long_List    and gui-Up-MntInt
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:  DnUmount Special
#(: calls:
#(: method: calls internal script with lowercase HD names
#(: sends:
#(: rationale:
#(: note :
#(:
#(: calls Sbr_MGR_uMount_One with internal prep.
#(:
#! ############################################################
function Sbr_MGR_uMount_All() {   # ACTIVE
    #! DnUmount Special
    n=0
    gcMntAllLogP="/tmp/MGR_MntAllU.log "
    gcActiveGui="1"
if [ "$gcActiveGui" = "1" ] ; then 
    #! -D---   Big Splash BackGround
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
  *.         U_Mount_All_Internal
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
Sbr_MGR_uMount_One "sda2"  2>/dev/null
Sbr_MGR_uMount_One "sdb1"  2>/dev/null
Sbr_MGR_uMount_One "sdc1"  2>/dev/null
Sbr_MGR_uMount_One "sdd1"  2>/dev/null
Sbr_MGR_uMount_One "sde1"  2>/dev/null
Sbr_MGR_uMount_One "sdf1"  2>/dev/null
Sbr_MGR_uMount_One "sdg1"  2>/dev/null
Sbr_MGR_uMount_One "sdh1"  2>/dev/null
Sbr_MGR_uMount_One "sdi1"  2>/dev/null
Sbr_MGR_uMount_One "sdj1"  2>/dev/null
Sbr_MGR_uMount_One "sdk1"  2>/dev/null
Sbr_MGR_uMount_One "sdl1"  2>/dev/null
Sbr_MGR_uMount_One "sdm1"  2>/dev/null
Sbr_MGR_uMount_One "sdn1"  2>/dev/null
Sbr_MGR_uMount_One "sdo1"  2>/dev/null
Sbr_MGR_uMount_One "sdp1"  2>/dev/null
#;;; end looping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
if [ "$gcActiveGui" = "1" ] ; then  
    Sbr_Splash_It  "DONE : Sbr_MGR_uMount_All" "yellow" "red" "3"           #! -D---
    kill ${GTKPIDUMNT1}   2>/dev/null  
fi
} #
export -f Sbr_MGR_uMount_All
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
#! ############################################################
#! ### Start  Main  DUMPS #####################################
#! ############################################################
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_HLP 
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Help general
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message for '/tmp/box_help'"
#(:  close with "OK" works. 
#(: 
#! <b><span foreground='"'red'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
#! <b><span foreground='"'blue'"'>"Not intended to be a Turn-Key project."</span></b>
#(:
#! ### #########################################################
function Sbr_Dump_HLP() {   #: ACTIVE  
    #! echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
    n=0
    echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
<b><span foreground='"'red'"'>"${gcSysNameBase}"</span></b> is a general <b><span foreground='"'red'"'>'Menu Framework' </span></b>
    <span foreground='"'green'"'>"  Purpose : is to provide a '<b>'sand-box'</b>"</span>
    <span foreground='"'green'"'>"' for '<b>'Korn/BASH and GTK experiments'</b>'."</span>
    <span foreground='"'green'"'>"   and Allow-Flipping-between-'<b>'22-Puppy_Distros_!'</b>'"</span>
    <span foreground='"'green'"'>"   by rewriting part of menu.lst and rebooting"</span>
<b><span foreground='"'red'"'>"Special Features of ${gcSysNameBase}: "</span> <span foreground='"'green'"'></span></b>
    <span foreground='"'blue'"'>"has Multiple BASH and GTK Page Windows. ! "</span>
    <span foreground='purple'>       "#! to form a compact screens ."</span>
    <span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
    <span foreground='purple'>       "#! to eliminate dependence on system images ."</span>
    <span foreground='"'blue'"'>"has some Double-Click buttons ! "</span>
    <span foreground='purple'>       "#! to reduce accidental triggers."</span>
<span background='brown'><span foreground='lightyellow'> '===================================='</span></span>
<b><span background='lightyellow'><span foreground='blue'> 'MGR is a "Study" in BASH / GTK applications'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'>      not a "Turn-Key" app.'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> 'MGR provides switching control of 26+ Puppy Distros.'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> '   incl: BionicPup64, DebBookWorm64 '</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> '   incl: PexDevuan64, PexNoble64, PexTrixie64R. '</span></span></b>
<b><span background='brown'><span foreground='yellow'> '====================================' </span></span></b>
<span foreground='blue'></span>
<span foreground='red'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='red'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"#! Each OS is original as written by Mik01,PeaBee,etal ."</span>
<span foreground='"'green'"'>"______________________________"</span>
<b><span foreground='"'blue'"'>"buttons with Double-Click will trigger "</span></b>
<b><span foreground='"'blue'"'>"a large tear-drop shaped ICON."</span></b>
<b>:<span foreground='"'red'"'>"RED Border"</span>": tear-"<span foreground='"'yellow'"'>"YELLOW "</span>"-drop:"</b>
<b><span foreground='"'green'"'>"will pop-up in middle of screen"</span></b>
"--- "
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"--- "
<b><span foreground='"'green'"'>"___Tested across 22+ Puppy Distros______________________"</span></b>
<b><span foreground='"'red'"'>"BASH will always work, with a few quirks "</span></b>
<b><span foreground='"'red'"'>"but, GTK is sensitive to the theme settings/formatting"</span></b>
<b><span foreground='"'blue'"'>"#! for MGR with "Deep Thought" theme. "</span></b>
<b><span foreground='"'blue'"'>"#!      Screen : gcMrgGuiWid='1200'"</span></b>
<b><span foreground='"'blue'"'>"#! for MGR with 'Default' theme."</span></b>
<b><span foreground='"'blue'"'>"#!      Screen : gcMrgGuiWid='1100'"</span></b>
<b><span foreground='"'blue'"'>"__________________________________________"</span></b>
"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'blue'"'>"Authors note about ${gcSysNameBase}.sh coding :"</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"designed to prevent interaction "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"... between bash and gtkdialog "</span>
"--- "
<span foreground='"'green'"'>"${gcSysNameBase}.sh restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcSysNameBase}.sh requires 1 second to write embedded images"</span>
<span foreground='"'green'"'>" . . . . . . . writes all 43 images one time, at StartUp only."</span>
<span foreground='"'green'"'>" . . . . . . . into 13 KBytes in /tmp "</span>
"--- "
<span foreground='"'green'"'>"_________________________________________"</span>
<b><span foreground='"'purple'"'>" Running Tests on 23+ Puppy OS : "</span></b>
<span foreground='red'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='red'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"#! Each OS is original as written by Mik01,PeaBee,etc ."</span>
"---"
<span foreground='green'>"-------------------------------------"</span>
"--- iso list includes: "
<b><span foreground='"'red'"'>"${gcDistro01}"</span></b>
<b><span foreground='"'red'"'>"${gcDistro02}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro03}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro04}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro05}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro06}"</span></b>
<span foreground='"'blue'"'>"${gcDistro07}"</span>
<span foreground='"'blue'"'>"${gcDistro08}"</span>
<span foreground='"'blue'"'>"${gcDistro09}"</span>
<span foreground='"'blue'"'>"${gcDistro10}"</span>
<span foreground='"'blue'"'>"${gcDistro11}"</span>
<span foreground='"'blue'"'>"${gcDistro12}"</span>
<span foreground='"'blue'"'>"${gcDistro13}"</span>
<span foreground='"'blue'"'>"${gcDistro14}"</span>
<span foreground='"'blue'"'>"${gcDistro15}"</span>
<span foreground='"'blue'"'>"${gcDistro16}"</span>
<span foreground='"'blue'"'>"${gcDistro17}"</span>
<span foreground='"'blue'"'>"${gcDistro18}"</span>
<span foreground='"'blue'"'>"${gcDistro19}"</span>
<span foreground='"'blue'"'>"${gcDistro20}"</span>
<span foreground='"'blue'"'>"${gcDistro21}"</span>
<span foreground='"'blue'"'>"${gcDistro22}"</span>
<span foreground='"'blue'"'>"${gcDistro23}"</span>
<span foreground='"'blue'"'>"${gcDistro24}"</span>
<span foreground='"'blue'"'>"${gcDistro25}"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'darkred'"'>
This ${gcSysNameBase} project series is posted 
   on the Murga website 
   https://forum.puppylinux.com
<b><span foreground='"'red'"'> "'"Menu Framework"'" </span></b>
   in the 'utilities' .
This project is posted on my website:
   https://www.geocities.ws/glene77is/   
   under the LINUX button.</span>
<span foreground='"'green'"'>and on GitHub 
   https://github.com</span>
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
Use the Geany Execute function
<span foreground='"'green'"'>"'/usr/bin/xterm -e bash -c -e "/bin/sh %c" '"</span>
   to run the Geany script 'BASH-Terminal'
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
<span foreground='green'>"-------------------------------------"</span>
<span foreground='red'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='red'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='red'>"#! Each OS is original as written by Mik01,PeaBee,etc ."</span>
<span foreground='green'>"-------------------------------------"</span>
"--- "
<span foreground='blue'>"-------------------------------------"</span>
<span foreground='red'>"Message Box Routines used:  "</span>
<span foreground='green'>"#: Sbr_Box_Message :  "</span>
<span foreground='green'>"#: ... custom rewrite of gtkdialog Box_Help"</span>
<span foreground='green'>"#: ... used by 'HELP' , 'Distro', 'Proc', 'FAQ' "</span>
<span foreground='green'>"#: gxMessage : "</span>
<span foreground='green'>"#: ...    used by: PUP, GUI, SRC, IMG, UPL, SYS. "</span>
<span foreground='green'>"#: ...    accepts marked-up text . "</span>
<span foreground='green'>"#: ...    displays 45 char long, then wraps. "</span>
<span foreground='green'>"#: ...    line-length expands to 72++ = long-line !"</span>
"--- "
<span foreground='blue'>"-------------------------------------"</span>
"--- "
<b><span foreground='"'red'"'>"     ${gcZeroRun} "</span></b>
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
......................................................"\ >  /tmp/box_help
Sbr_Box_Message "=== HELP === 'Sbr_Box_Message ' > /tmp/box_help + Box_Message"
#! has markup
} # end
export -f Sbr_Dump_HLP
#!
#! ############################################################
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_FAQ
#(: called by:
#(: param:
#(: purpose:  Display FAQ via  direct link in Main_GUI , returns to same.
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note : requires /tmp/box_help
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:     close with "OK" works. 
#! ############################################################
function Sbr_Dump_FAQ() {   # ACTIVE
    n=0
    echo "\
<span background='brown'><span foreground='yellow'> '==========='</span></span>\
<span background='yellow'><span foreground='blue'> '      $gcSysNameBase FAQ    '</span></span>\
<span background='brown'><span foreground='yellow'> '============' </span></span>
<span foreground='green'>                     # Build: ${gcMgr_SysDOB} # </span> 
<span background='brown'><span foreground='lightyellow'> '===================================='</span></span>
<b><span background='lightyellow'><span foreground='blue'> 'MGR is a "Study" in BASH / GTK applications'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'>      not a "Turn-Key" app.'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> 'MGR provides switching control of 26+ Puppy Distros.'</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> '   incl: BionicPup64, DebBookWorm64 '</span></span></b>
<b><span background='lightyellow'><span foreground='blue'> '   incl: PexDevuan64, PexNoble64, PexTrixie64R. '</span></span></b>
<b><span background='brown'><span foreground='yellow'> '====================================' </span></span></b>
<span foreground='red'>"-------------------------------------"</span>
<span foreground='brown'>"#! Each Puppy OS is tested via its own original distro BASH ."</span>
<span foreground='brown'>"#! Each Puppy OS is tested via its own original distro GTK ."</span>
<span foreground='brown'>"#! Each Puppy OS is Original as written by Mik01, PeaBee, etc ."</span>
<span foreground='red'>"-------------------------------------"</span>
"---"
"--- iso list includes: "
<b><span foreground='"'red'"'>"${gcDistro01}"</span></b>
<b><span foreground='"'red'"'>"${gcDistro02}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro03}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro04}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro05}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro06}"</span></b>
<span foreground='"'blue'"'>"${gcDistro07}"</span>
<span foreground='"'blue'"'>"${gcDistro08}"</span>
<span foreground='"'blue'"'>"${gcDistro09}"</span>
<span foreground='"'blue'"'>"${gcDistro10}"</span>
<span foreground='"'blue'"'>"${gcDistro11}"</span>
<span foreground='"'blue'"'>"${gcDistro12}"</span>
<span foreground='"'blue'"'>"${gcDistro13}"</span>
<span foreground='"'blue'"'>"${gcDistro14}"</span>
<span foreground='"'blue'"'>"${gcDistro15}"</span>
<span foreground='"'blue'"'>"${gcDistro16}"</span>
<span foreground='"'blue'"'>"${gcDistro17}"</span>
<span foreground='"'blue'"'>"${gcDistro18}"</span>
<span foreground='"'blue'"'>"${gcDistro19}"</span>
<span foreground='"'blue'"'>"${gcDistro20}"</span>
<span foreground='"'blue'"'>"${gcDistro21}"</span>
<span foreground='"'blue'"'>"${gcDistro22}"</span>
<span foreground='"'blue'"'>"${gcDistro23}"</span>
<span foreground='"'blue'"'>"${gcDistro24}"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
<span foreground='"'darkblue'"'>\
    NOTE: Different "'"GTK Themes"'" 
    will alter font size and screen usage.
    for MGR with  "'"Default"'" theme. 
         Screen : "'"gcMrgGuiWid"'" = 1100 
    for MGR with "'"Deep-Thought"'" theme. 
         Screen : "'"gcMrgGuiWid"'" = 1200 
    more tests required to differentiate 
        various themes and screen dimensions for each Distro
        which alter font size and screen usage. 
</span>
"--- "
<span foreground='green'>"______________________________"</span>
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
    #(:  IF 'strict' lockfile block is written into a function ()
    #(:     ( which is a "sub-routine" )
    #(:     [which by definition is a sublevel in the stack],
    #(:  THEN 'exit' will only "pop" one level
    #(:     at the function () stack level,
    #(:     and will not 'quit' or 'halt' the PRG as desired.
    #(:
<b><span foreground='"'brown'"'>    "#: MGR.sh has a 'SOFT Lock' method "</span> </b>
    #(:     User is responsible for correcting 
    #(:     repeated runs of MGR.sh . 
    #(:  'soft' lock produces 'non-fatal' errors.  
    #(:
 #(: ------------------------------------------------
 #(:
    <span foreground='blue'>"  "</span> <span foreground='green'>". PET install not required"</span>
    <span foreground='blue'>"  "</span> <span foreground='green'>". . . . dependencies embedded or included."</span>
    <span foreground='blue'>"  "</span> <span foreground='green'>". just place downloaded scripts into /root/my-applications."</span>
    <span foreground='blue'>"  "</span> <span foreground='green'>". . . . check PATH."</span>
 #(: ------------------------------------------------
</span>
"--- "
<b><span foreground='"'red'"'>"     ${gcZeroRun} "</span></b>
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
..."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message ' > /tmp/box_help + Box_Message"
#! has markup
} #
export -f Sbr_Dump_FAQ
#!
#! ############################################################
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_SRC 
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
function Sbr_Dump_SRC() {   # ACTIVE  
    n=0
#! requires /tmp/box_help
lcFileGXmessage="/usr/bin/gxmessage"    # current target 
#! begin Source Header
lcMsgSrc="${0}" # "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"   # box_help is required by gtkdialog 
#! begin Source Body
cat ${0} > ${lcMsgTrg}     ### Sbr_Dump_SRC   /tmp/box_help ###
    #!
#! display SOURCE 
sleep 1
lcMsgStr="Dump_Source + ReStart"
gxmessage -title "${lcMsgStr}"  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg} 
#! gxmessage fntrg short
#!
Sbr_Cbx_ReStart 1
} #
export -f Sbr_Dump_SRC
#!
#! ############################################################
#!

#(:
#(: ================================================================
#(: fx Sbr_Dump_Author
#(: called by:
#(: param:
#(: purpose: splash Author Notes
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(: note:
#!  gx box Always Displayed 
function Sbr_Dump_Author() {
    n=0
    lcMsgStr1=""
    lcMsgStr2="$gcMsgStrwc lines::"
    lcMsgStr3="DOB:${gcMgr_SysDobNow}::"	
    lcMsgStr41="${gxMgrAuthorName1}"
    lcMsgStr42="${gxMgrAuthorName2}"
    lcMsgStr43="${gxMgrAuthorName3}"
    lcMsgStr51="${gxMgrAuthorAddress1}"
    lcMsgStr52="${gxMgrAuthorAddress2}"
    gxmessage -title "${0}"  -name "${0}" -font bold -fg yellow -bg darkred -center -wrap -border "
        ${lcMsgStr1}    ${lcMsgStr2}
		${lcMsgStr3}
		${lcMsgStr41}
		${lcMsgStr42}
		${lcMsgStr43}
		${lcMsgStr51}
		${lcMsgStr52}
        --------------"
} # end
export -f Sbr_Dump_Author				   
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_Sys
#(: called by:
#(: param:
#(: purpose: splash Dev Notes and test var
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(: note:
#(: Some Data is NOT PROVIDED in Puppy "DISTRO_SPECS" . 
#(:  example of data not provided : gcOsIso="iso-bionicpup64-8.0-uefi : 19 Feb" 
#(:  therefore "Sbr_Dump_Sys" cannot automatically present this "ISO" data. 
#(:  SINCE  Manager must run on "ALL"  Puppy Distro, 
#(:  THEN   this system identifying data is not provided directly. 
#! #####################################################

function Sbr_Dump_Sys() {   # ACTIVE
    n=0
export lcStrUpPop="# fx(Sbr_Dump_Sys) + ReStart 
   SrcName : ${gcMgrNameBase_All}       Number of Lines: ${gcMsgStrwc} 
   Location : /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.4c.sh
   Build from Wolf : ${gcMgrBuildFromWolf}
   Date-Version SysDOB: ${gcMgr_SysDOB}
* Author: 
* Glen.Ellis, Memphis, TN |.ResearchGate.Net,
* University-of-Tennessee,Memphis,TN.|.www.geocities/ws/glene77is
=======================================
PUP_HOME: ${PUP_HOME}
: ${PUPSAVE}
Save-Data-Name-Mount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
Src:  /sys/fs/aufs="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
Src:  /sys/fs/aufs=/initrd/mnt/dev_save/pup_UpupB64B-SDA/bionicpup64save-B64B
Loc:  /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.4c.sh
RamObj: ${gcPupRamObjMsg}  IP:${gxMgr_ipaddress} 
UUID:${gxMgr_uuid}:${gcMgr_SysDobNow}
=======================================
DISTRO-NAME:  ${DISTRO_NAME}       
DistroVersion: ${DISTRO_VERSION}
Puppy-SUBDIR: ${PSUBDIR}
Symbol: ${gcMgrDistroSymbol}
DistroKernel: ${gcMGRKernVer} 
DistroBuildWolf: ${gcMgrBuildFromWolf}
Distro_PuppyDate: ${DISTRO_PUPPYDATE}
Iso-file-Date: ${gcMgrIsoDate}  
=======================================
Mgr-Running: ${gcMgr_SysDob}
Mgr-Key-ID: ${gcMgrKey}
Mgr-BashPid: ${gcMgrBashPid} 
=======================================
#! * kernal config: `uname -a`    
#! * kernal name: `uname -s`  
#! * kernel release: `uname -r` 
#! * kernel verson  `uname -v` 
#! * system: machine:  `uname -m` 
#! * processor:             `uname -p`      
#! * platform:              `uname -i` 
#! * operating sys:         `uname -o` 
#!
*! gcMgr_SysDob = ${gcMgr_SysDOB}
*! gcMgrDevId = ${gcMgrDevId} 
*! gcSysDistroPuppySFS=${gcSysDistroPuppySFS}  
*! gcPupSfsFile=${gcPupSfsFile}
=======================================
#! Ram Obj Size Comparison
#! B32B           =  121 MB
#! B64B           =  184 MB
#! DBW64         =  150 MB  
#! PexDev64     =  159 MB
#! PexNobel64  =   85 MB
#! PexTrix64R   = 1238 MB 
#! F64 _96F       =  590 MB
#! 
======================================="
#!
echo "${lcStrUpPop}"  > /tmp/Mgr_Dump_Declare_Sys.txt 
sleep .1
lcMsgSrc="/tmp/Mgr_Dump_Declare_Sys.txt"
gxmessage -title "Dump Declare_Sys + ReStart" -name "Sbr_Dump_Declare_Sys  /tmp/Mgr_Dump_Declare-System.txt" -font bold -bg lightyellow -fg darkblue -center  -file "${lcMsgSrc}"
#! gxmessage fntrg short
#!
} # 
export -f Sbr_Dump_Sys
#! ############################################################
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_IMG
#(: called by:
#(: param:
#(: purpose: display all IMG code
#(: calls:
#(: method: gxmessage
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_IMG() {   # ACTIVE 
    #! Dump_Image   EmGa-Master-IMG.txt
    n=0
lcFileXmessage="/usr/bin/xmessage"
lcFileGXmessage="/usr/bin/gxmessage"
    #
lcMsgStr="# ===  Dump_IMG gxmessage + ReStart === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="EmGa-Master-IMG.txt"  
lcMsgTrg="/tmp/box_help"  
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" > ${lcMsgTrg}
echo "${gcSysDistroName} = textfile > cat + gxmessage" >> ${lcMsgTrg}    # preset First Line
echo "# running fx(Sbr_Dump_IMG) showing IMAGE code" >> ${lcMsgTrg}
echo "# Compiled: ${gcMgr_SysDob}" >> ${lcMsgTrg}
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
#!
sleep 1
cat /tmp/EmGa-Master-IMG.txt >> ${lcMsgTrg}     ### gxmessage pulls /tmp/box_help ###
lcFnTrg="/tmp/box_help"     # !  ${lcFnTrg}
gxmessage -title "Dump-Images + ReStart " -name "Sbr_Dump_IMG-" -font bold -bg lightyellow -fg darkblue -center  -file ${lcFnTrg}
#! gxmessage fntrg long
#! Sbr_Box_Message "=== XXXX === Sbr_Box_Message > /tmp/box_help + box_help"
#
} #
export -f Sbr_Dump_IMG
#! ############################################################
#!
#!
#!
#! ############################################################
#! ### Start  Additional Dumps ################################
#! ############################################################
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_TarGzN  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_TarGz  
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message for '/tmp/box_help'"
#(:
#! #######################################################
function Sbr_Dump_TarGzN() {   # ACTIVE  
    n=0
lcDumpString="
======== '${gcSysNameBase}' TarGz-Documention  ================================================================
*   ionice -c 1 tar ${TAROPT} -f ${destfile##*/} ${1##*/}/   --checkpoint=1000
* The command you provided is a Linux shell instruction designed to create a compressed archive 
    while prioritizing system resources.
* Command Breakdown
    ionice -c 1: Runs the command with 'Realtime' I/O scheduling [3]. 
    This gives tar first priority for disk access, which can speed up the backup  [2, 3].
* tar ${TAROPT}: Executes the tar utility using options 
    (like -c for create or -z for gzip) stored in the variable $TAROPT [1].
* -f ${destfile##*/}: Specifies the output filename. 
    The ${destfile##*/} syntax is a bash parameter expansion that removes everything up to the last slash, 
    ensuring the archive is created in the current directory regardless of the original path [4].
${1##*/}/: Specifies the source directory to archive. Like the destination, 
    it strips the path to use only the base folder name [4].
    --checkpoint=1000: Displays a progress message every 1,000 records processed [5]. 
Usage Recommendations
* Risk of High Priority: Using -c 1 (Realtime) is aggressive. 
    For background backups on a live server, consider ionice -c 3 (Idle) 
    to ensure the backup doesnt interfere with user applications [3].
* Variable Initialization: Ensure ${TAROPT} includes the -c (create) flag; 
    otherwise, the command will fail.
* Documentation: 
    Refer to the GNU Tar Manual for a full list of checkpoint styles 
    and the ionice man page for detailed I/O class explanations. 
* Sources:
    [1] GNU Tar: Operations  
    [2] Kernel.org: I/O Priority
    [3] Linux die.net: ionice(1) Manual Page
    [4] GNU Bash: Shell Parameter Expansion
    [5] GNU Tar: Checkpoints 
================================================================"
    #! -D---
echo "${lcDumpString}" > /tmp/box_help
sleep 1
lcDumpTitle="=== Sbr_Dump_TarGzN + ReStart ==="
lcFnTrg="/tmp/box_help"     # !  ${lcFnTrg}
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkblue -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
#!
} # end
export -f Sbr_Dump_TarGzN
#! ############################################################
#! 
#(:
#(: ================================================================
#(: fx Sbr_Dump_PrgN  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_PrgN  
#(: calls:
#(: method:  gxmessage
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Dump_PrgN() {   # ACTIVE  
    n=0
lcDumpString="
#(:	========
#(: '${gcSysNameBase}'  
#(:	MGR_Program_Notes.txt
#(:	========
#(:  as posted on Puppy Linux Forum.
#(:   ==============================================================================================
#(:   [] MGR is a 'Study' in BASH / GTK applications, not a 'Turn-Key' app.
#(:   [] MGR provides switching control of 26+ Puppy Distros during development.
#(:   []    for testing GTK code across many Puppy Linux Distros. 
#(:   []  Distros include BionicPup64, DBW64, PexDev64, PexN64, PTrixie64R. 
#(: 
#(:   [*] MGR is :
#(:   Written in BASH + GTK code.
#(:   Tested on 26 different Puppy Linux Distros. 
#(:		which are installed 'Frugal' and are active on my 2009 AMD 32/64 computer.
#(:   Each Distro is tested with the original BASH and original GTK,
#(:   . . . as published by PeaBee and Mik0 , the original authors, etc.
#(:
#(:   [*] MGR
#(:   Written in BASH + GTK code.
#(:   GTK 'Notebook' Screens : System, Menu-Select, BackUp, Doc-Help, Utility-Image
#(:   BASH coded 'pages' : System, Menu-Select, BackUp, Doc-Help, Utility-Image
#(:   where one < button 'BASH_IT' > flips the paging code from GTK to BASH and back.
#(:   Double-Click < button > coding on major program exiting funxtions. 
#(:   Embeded-Graphics < button > coding so no dependency on available system images.
#(:
#(:   [*] MGR has been a comparison of Korn Shell vs BASH code methods.
#(:   [*] MGR has been a special 'study' comparing BASH methods versus GTK methods ;
#(:      wherein, we have two embedded user-selectable program screen methods:
#(:      (1) GTK 'Notebook' Screens
#(:      (2) BASH coded 'page' screens
#(:   MGR runs without being 'dependent' on auxilliary programs.
#(:   No PET required, simply drop all scripts into /root/my-applications & set system 'PATH'
#(:      The subdir '/root/my-applications' created by the PUPPY system via 'init' and 'profile'.
#(:
#(: Menu selection process:
#(:   (1) gui <action> 'EXIT:ft(name)' on display screen. 
#(:   (2) gui 'fall-thru' to 'IF/FI' (at bottom of source code)
#(:   (3) 'IF/FI' calls to 'subroutines' (at top of source code) .
#(:
#(: note:
#(: Every process is called via gui  <button>  via  'Fall-Thru'  to  ['IF / FI']
#(: Standard Gui Button Call Method is TWO-STEP:
#(:  (1) gui-Buttons 'call' to a 'Fall-Thru' function written as 'IF/FI' 
#(:		(written in lower part of source code).
#(:  (2) 'IF/FI' functions then call regular subroutine function() 
#(:		(written at top of source code).
#(:
#(: EXAMPLE:  button 'MntAll' is <action>'EXIT:MNT+'</action>
#(: which will exit and fall-thru to 'EXIT:MNT+'
#(: which will then call 'function Sbr_MGR_pMount()' (written in top part of source).
#(: This is the Standard Method written into this Main Gui,
#(:   which allows parameters to be sent to complex sub-routines .
#(:   which avoids lack of parameter passing in the gui Button gtkdialog process.
#(:
#(:  GTK is sensitive to the 'screen theme'  and  'character font size' . 
#(:       each OS install might have special display pixel count, font size, etc. 
#(:       run gui test on each OS .  
#(:  GTK in each tested system is 'original' as distributed by PeeBee, and Mik0.
#(:  GTK main XML gui is dependent on system screen-size, theme , font size. 
#(:  Generally, the 'default' theme, and the 'default' character size works OK.
#(:
#(:   =============================================================================================="
#! -D---
echo "${lcDumpString}" > /tmp/box_help
sleep 1
lcDumpTitle="Dump Program Notes + ReStart" #! PrgN
lcFnTrg="/tmp/box_help"     # !  ${lcFnTrg}
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkred -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
#!
} # end
export -f Sbr_Dump_PrgN
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_BashQ  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_BashQ  
#(: calls:
#(: method:  gxmessage
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Dump_BashQ() {   # ACTIVE  
    n=0
lcDumpString="
#(:	========
#(: '${gcSysNameBase}'  
#(:	Bash_Quirks_Faq.txt
#(:	========
#(:	
#(: BASH stacking control quirk, and non-fatal error 
#(:    has been observed on some older computers (bios 2009).
#(:    and on some early Puppy Linux Distros. 
#(: BASH is based on a 'Menu Driven Design' 
#(:     as in 'Command-Line' methods combined in groups. 
#(: BASH is not 'Object Oriented'. 
#(:
#(: 
#(: ######################################################################
#(: Bash Quirks via Internet Search
#(: 
#(: Bash has several well-known quirks, many stemming from its origins 
#(: as a command-line interpreter that has evolved into a scripting language.
#(: 
#(: Key quirks involve variable handling, quoting, 
#(:      and the reliance on exit statuses for control flow. 
#(: 
#(: Variable Handling & Quoting
#(: 
#(:     No spaces around = in assignment: 'VARIABLE=value' works, 
#(:     but 'VARIABLE = value' is interpreted as running a command named VARIABLE 
#(:     with arguments = and value, not an assignment.
#(: 
#(: Unset variables: 
#(: By default, using an unset variable results in an empty string, 
#(: which can lead to dangerous outcomes, 
#(: such as 
#(:     rm -rf '$DIRECTORY/*' 
#(: becoming 
#(:     rm -rf /* 
#(: if DIRECTORY is unset. [ DO NOT PLAY with the 'rm' command ! ] 
#(: A single command can 'remove' the entire hard-drive  !!!. 
#(: This can be mitigated with set -u (or set -o nounset), 
#(: which causes the script to fail if an unset variable is used.
#(: 
#(: Quoting is crucial: Variables containing spaces or special characters 
#(: behave unexpectedly if unquoted. 
#(: Always double-quote variables '${myvar}' and ('$myvar')  and  ('${myvar}') 
#(: unless you specifically need unquoted word splitting or glob expansion.
#(: 
#(: Positional parameters (arguments): 
#(: Accessing arguments beyond the 9th requires braces, 
#(: e.g., ${10} instead of $10. $10 is interpreted as $1 followed by a 0.
#(: 
#(: Brace expansion: 
#(: The ${myvar}foo syntax is necessary to append text directly to a variable name 
#(: without Bash interpreting myvarfoo as the variable name itself. 
#(: This syntax also enables powerful features 
#(: like string replacement and substring extraction. 
#(: 
#(: Control Flow and Commands
#(: 
#(: Exit status defines 'true' and 'false': 
#(: In Bash, an exit status of 0 means success (true), 
#(: while any non-zero status indicates failure (false). 
#(: This is counter-intuitive for programmers coming from many other languages.
#(: * if conditions are commands: if statements evaluate the exit status of a command, 
#(: not a boolean value. if [[ ... ]]; 
#(: * then ... is the preferred syntax for comparisons 
#(: as [[ is a built-in shell command 
#(: that is less error-prone with spacing and special characters 
#(: than the external [ command utility.
#(: 
#
#(: set -e, set -u, set -o pipefail: 
#(: These are known as the 'unofficial strict mode' 
#(: and are essential for writing robust scripts.
#(:         set -e (errexit) exits immediately if any command fails.
#(:         set -u (nounset) exits on use of an unset variable.
#(:         set -o pipefail ensures that a pipe command fails 
#(:             if any command in the pipeline (not just the last one) fails.
#(: 
#(: Parsing ls output: 
#(: Never try to parse the output of 'ls' in a script. 
#(: Its output is intended for human readability 
#(: and can change depending on the context, leading to unreliable script behavior. 
#(: 
#(: Arithmetic 'Duck Typing' and silent reset: 
#(: If you try to perform arithmetic on a non-numeric string using 'let' or (( )), 
#(: the variable is often silently reset to 0 instead of throwing an error.
#(: BASH arithmetic utilizes a form of 'Duck Typing' 
#(: where variables are inherently strings, but are treated as integers 
#(: if they 'walk and quack' like numbers when used within a specific context. 
#(: Bash determines a variable's type dynamically at runtime based on its content 
#(: (i.e., whether it contains only digits) and the operation being performed. 
#(: (i.e., given var='10'   
#(: and then   ((var++))  
#(: and then   result is   var is treated as integer 11
#(: 
#(: Arithmetic context: 
#(: To perform calculations, you need specific syntax:
#(:   (( a++ )) for arithmetic operations within the script.
#(:   $(( 3 + 12 )) for command substitution (getting the result of a calculation).
#(: The external expr command also works 
#(: but requires careful escaping of special characters like *. 
#(: 
#(: ##########################################################
#(:  Note : 'O.O.P.'  [ Object Oriented Programming ]
#(:  BASH does NOT implement 'OOP'.
#(:  BASH does NOT bundle data (attributes) 
#(:      and behaviors (methods) together. 
#(:  BASH does not implement strict 'scope' nor 'inheritance'.
#(:  (gtk)dialog does NOT implement 'OOP'.
#(:
#(:  BASH is a very common 'Unix' derived Shell language ( *nix language ). 
#(:     and it's programming language is purely 'Procedural'
#(:     and focused on 'Command Line' execution.
#(:  BASH applications are 'Menu Driven'. 
#(:  BASH was built upon, derived from a long history of *nix languages; 
#(:     ie:   'sh', 'Tshell', 'Ashell', 'Kshell' , etc, 'shell' languages.
#(:
#(: Best Practices
#(: To avoid these quirks, use a linter like ShellCheck 
#(: which can automatically identify many common pitfalls and suggest fixes. 
#(: 
#(: ################################################################################"
#! -D---
echo "${lcDumpString}" > /tmp/box_help
sleep 1
lcDumpTitle="Dump Bash Quirks + ReStart"
lcFnTrg="/tmp/box_help"     # !  ${lcFnTrg}
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkblue -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
} # end
export -f Sbr_Dump_BashQ
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_OOP  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_OOP  
#(: calls:
#(: method:  gxmessage
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Dump_OOP() {   # ACTIVE  
    n=0
lcDumpString="
#(: #####################################################################
#(:
#(:  These 'OOP' Concepts are foreign to *nix Shell Languages:
#(:     Abstraction. Encapsulation. Inheritance, Polymorphism.
#(:
#(:		The concept of strict 'scope' or 'encapsulation' 
#(:        	(isolation of levels of process 'stack')
#(:		    is not implimented in BASH language. 
#(:
#(:		The concept of strict 'inheritance'
#(:        	(transfer of attributes & values as parent+child processes)
#(:		    is not implimented in BASH language. 
#(:
#(:         quoted/paraphased from 'hipersayanx.blogspot.com' ›
#(:         2012/12 › object-oriented-pr, 
#(:         and other sources dating from 1980+.
#(:
#(:   (OOP)  'O'bject 'O'riented 'P'rogramming
#(:     is a 'Programming Paradigm'
#(:  that represents the elements of a problem as entities
#(:  each having a set of properties and actions that it can execute.
#(:  If you use Bash to write very simple and short scripts,
#(:  procedural programming is just fine, you dont need more.
#(:  But if your program becomes more and more bigger,
#(:  a monster BASH system program (such as this MGR.sh) ,
#(:  then you need a better way to structure your program ...
#(:  Dec 22, 2012
#(:  quotes from 'hipersayanx.blogspot.com' ›
#(:     2012/12 › object-oriented-pr , 
#(:     and other sources dating from 1980.
#(:
#(:
#(: ################################################################################"
    
echo "${lcDumpString}" > /tmp/box_help
sleep 1
lcDumpTitle="Dump OOP + ReStart"
lcFnTrg="/tmp/box_help"     # !  ${lcFnTrg}
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkblue -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
} # end
export -f Sbr_Dump_BashQ
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_PUP
#(: called by: Main Gui
#(: param:
#(: purpose:  Display PUPSTATE via direct link in Main_GUI , returns to same.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT interpret markup text codes.
#(:     Method: cat ${lcMsgSrc} > ${lcMsgTrg} & xmessage
#(:
#! ############################################################
function Sbr_Dump_PUP() {    # ACTIVE
    n=0
lcMsgSrcDP="/etc/rc.d/PUPSTATE"
lcMsgTrgDP="/tmp/box_help"  # /tmp/MGR_PUPSTATE
#
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
    #!
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
echo "${lcMGR_dts}" >> ${lcMsgTrgDP}    #: add string to PUPSTATE Text Output
echo "=== {PUP+} ==============" >> ${lcMsgTrgDP}
sleep 1
 #!
lcDumpTitle="Dump_PUP +"
lcFnTrg="/tmp/box_help"
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkgreen -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
} #
export -f Sbr_Dump_PUP
#!
#! lcMGR_dts="=== MGR  NowDTS  `date +%y%m%d-%H%M-%S`"
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_GUI
#(: called by:
#(: param:
#(: purpose: splash GTK XML Dialog code 
#(: calls:
#(: method: gxmessage
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! ############################################################
function Sbr_Dump_GUI() {   # ACTIVE 
    #! called by ${MGR_Master_Main_GUI}
    n=0
lcFileGXmessage="/usr/bin/gxmessage"
   #
lcMsgStr="# ===  Dump_Master_Main_GUI gxmessage + ReStart  === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    #
lcMsgSrc="/tmp/EmGa-Master-GUI.txt"
lcMsgTrg="/tmp/box_help"
    #!
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
    #!
echo "# Compiled: ${gcMgr_SysDob}" >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_GUI " >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_Master_Main_GUI_XML " >> ${lcMsgTrg}
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
sleep 1     # wait for system 
lcMsgStr="Dump-Master-GUI + ReStart"
lcFnTrg="/tmp/box_help"
gxmessage -title ${lcMsgStr}  -name "-Master-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
#! gxmessage fntrg short
#
} #
export -f Sbr_Dump_GUI
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_Design  
#(: called by:  Main_GUI
#(: param:
#(: purpose:  MGR Sbr_Dump_Design  
#(: calls:
#(: method: gxmessage   /usr/bin/gxmessage 
#(: sends:
#(: rationale:
#(: note :gxmessage will contain wide text and scroll. 
#(:
#! ############################################################
function Sbr_Dump_Design() {   # ACTIVE  
    n=0
lcDumpString="
========
     '${gcSysNameBase}' Design-Documention 
========
--- 
MGR software has a Four Part Design . 
  1  = 'Intro', Setup  Var and Constants : BASH
  2  = 'SubRoutines' : BASH
. . . . which execute Tokens from GTK XML dialog
  3  = 'GTK XML Dialog' based on GTK 'notebook' methodology 
.. . . . =  Select <button> assigns token into GTK 'EXIT' var.
  4  = 'EXIT' var will Fall-Thru to 'if/fi' BASH routines to :
. . . . 'capture'  GTK <button>  Token value.  
. . . . 're-direct' process to Token SubRoutines above to execute selection. 
. ( note: this process keeps the GTK functions isolated from the BASH commands. 
.
PET install not required
. . . . dependencies embedded or included.
. just place downloaded scripts into /root/my-applications.
  . . . . check PATH.
  .
#(: ################################################################################"
    #! -D---
    #! Process 
echo "${lcDumpString}" > /tmp/box_help
sleep 1
lcDumpTitle="=== Dump Design + ReStart ==="
lcFnTrg="/tmp/box_help"
gxmessage -name "${lcDumpTitle}" -bg lightyellow  -fg darkblue -center -wrap -file "${lcFnTrg}" >/dev/console
#! gxmessage fntrg short
#!
} # end
export -f Sbr_Dump_Design
#! ############################################################
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_UPL     "User Popup Legal" by PeeBee
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
function Sbr_Dump_UPL() {   # ACTIVE
    n=0
lcStrUpPop="...  
DistroName: ${DISTRO_NAME}
VerDate: ${gcMgr_SysDob}
===========================================
Legal notice subroutine developed by GlenE77is
#
This program is free software; you can redistribute it
and/or modify it
under the terms of the GNU General Public License
as published by the Free Software Foundation.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
.....
"
    #! -D---
/usr/lib/gtkdialog/box_ok "=== Dump Legal + ReStart ===" ERROR "${lcStrUpPop}"
#! string echo  
} #
export -f Sbr_Dump_UPL
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_Imt     
#(: called by:
#(: param:
#(: purpose: splash  Puppy_Immutable
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(:
#! #####################################################
function Sbr_Dump_Imt() {   # ACTIVE
    n=0
lcStrImmutable="
Puppy Linux is often described as 'Naturally Immutable' 
    because of its unique frugal installation method. 
This is Unlike Traditional Distributions that install files 
    directly to a writable partition, 
Puppy Linux uses a layered filesystem 'Aufs or OverlayFS' 
    that stacks read-only system files with a writable user layer. 
How Immutability Works in Puppy
*** _Read-Only Core: The primary OS components are stored 
        in compressed, read-only SquashFS.sfs files. 
    _These files cannot be modified by apps or the user 
        during a session.
*** _The Persistence Layer: Changes you make 
        'settings, new apps' are stored 
        in a separate Pupsave folder or file. 
    _At boot, this layer is 'merged' on top of the read-only core.
*** _Session Management: 
    _You can choose to run in RAM-only mode PUPMODE 5, 
        where all changes exist only in memory. 
    _When you shut down, 
        Puppy asks if you want to save your changes; 
    _If you say 'No', the system returns 
        to its original, pristine state on the next boot.
*** _Recovery: If the system becomes unstable, 
        you can simply delete or rename the Pupsave file. 
    _This effectively 'factory resets' the OS 
        because the core SquashFS files remain untouched. 
"
#! -D---
/usr/lib/gtkdialog/box_ok "=== Dump Immutable + ReStart ===" error "${lcStrImmutable}"
#! string echo  
} #
export -f Sbr_Dump_Imt
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_Declare_Sys
#(: called by:
#(: param:
#(: purpose: splash System Notes
#(: calls:
#(: method: gtk box_ok / gxmessage
#(: sends:
#(: rationale:
#(: note:
#! #####################################################
function Sbr_Dump_Declare_Sys() {   # ACTIVE
    n=0
#! / tmp / Mgr_Dump_Declare_System.txt
#! declare sbr used at main ( ) 
#! Sbr_Dump_DeclareVar used after Sbr_Dump_Sys ( the "A" version ) 
#!
echo "================================ "   > /tmp/Mgr_Dump_Declare_Sys.txt  
echo "# fx( Sbr_Dump_Declare-Sys.txt )   Attributes and Values of all Variables ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
echo "# for " "${gcMgrNameBase_All}" " : ${gcMgrBashPid} :"  >> /tmp/Mgr_Dump_Declare_Sys.txt
echo "# for Build from Wolf " "${gcMgrBuildFromWolf}"         >> /tmp/Mgr_Dump_Declare_Sys.txt
#!
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt  
echo "# fx( uname )   ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
uname   >> /tmp/Mgr_Dump_Declare_System.txt
#!
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt  
echo "# fx( df )   ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
df      >> /tmp/Mgr_Dump_Declare_Sys.txt
#!
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt 
echo "# fx( free )   ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
free    >> /tmp/Mgr_Dump_Declare_Sys.txt
#!
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt 
echo "# fx( which )   ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
which   >> /tmp/Mgr_Dump_Declare_Sys.txt
#!
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt  
echo "# end: Dump_Declare_Sys.txt   ..."  >> /tmp/Mgr_Dump_Declare_Sys.txt
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Sys.txt
#!
lcMsgSrc="/tmp/Mgr_Dump_Declare_Sys.txt"
gxmessage -title "gxmessage Dump Declare_Sys + ReStart" -name "Sbr_Dump_Declare_Sys  /tmp/Mgr_Dump_Declare-System.txt" -font bold -bg lightyellow -fg darkblue -center  -file "${lcMsgSrc}"
#! gxmessage fntrg short
#!
} #  end
export -f Sbr_Dump_Declare_Sys
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Dump_Declare_Var
#(: called by:
#(: param:
#(: purpose: splash general var
#(: calls:
#(: method: gxmessage
#(: sends:
#(: rationale:
#(: note:
#! #####################################################
function Sbr_Dump_Declare_Var() {   # ACTIVE
    n=0
#!
echo "================================ "   > /tmp/Mgr_Dump_Declare_Var.txt  
echo "# begin : Dump_Declare_Var.txt   ..."  >> /tmp/Mgr_Dump_Declare_Var.txt
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Var.txt  
echo "# fx( Declare_Var )   ..."  >> /tmp/Mgr_Dump_Declare_Var.txt
echo "# for " "${gcMgrNameBase_All}" " : ${gcMgrBashPid} :"   >>/tmp/Mgr_Dump_Declare_Var.txt
echo "# for Build from Wolf " "${gcMgrBuildFromWolf}"         >> /tmp/Mgr_Dump_Declare_Var.txt
echo "================================ "   >> /tmp/Mgr_Dump_Declare_Var.txt  
#!
declare >> /tmp/Mgr_Dump_Declare_Var.txt
#!
lcMsgSrc="/tmp/Mgr_Dump_Declare_Var.txt"
gxmessage -title "gxmessage Dump Declare_Var + ReStart" -name "Sbr_Dump_Declare_Var  /tmp/Mgr_Dump_Declare-Var.txt" -font bold -bg lightyellow -fg darkblue -center  -file "${lcMsgSrc}"
#! gxmessage fntrg short
} # 
export -f Sbr_Dump_Declare_Var
#!
#!
#!
#(:
#(: ================================================================
#(: fx EXIT:Sbr_Dump_Path
#(: called by:
#(: param:
#(: purpose: splash Dev Notes and test var
#(: calls:
#(: method: gtk box_ok
#(: sends:
#(: rationale:
#(: note : line length < 62
#(: note:
#! #####################################################
function Sbr_Dump_Path() {   # ACTIVE
    n=0
echo "# fx( Sbr_Dump_Path )    ..."  > /tmp/box_help
echo "======= ii-in-path.sh === ls -simple ==="
IFS=':'
for ii in $PATH
do
        echo $ii    #! extra trace to terminal 
        lcMsgStr="${ii}"
        /bin/echo     "${lcMsgStr}" >> /tmp/box_help
done
Sbr_Box_Message "=== Dump_PATH ==='function Sbr_Dump_Path'===/tmp/box_help==="
#! message fntrg inherent in custom Box_Message
} # 
export -f Sbr_Dump_Path
#!
#! 
#(:
#(: ================================================================
#(: fx Sbr_Dxstro_Window   
#(: called by:  DOX_GUI
#(: param:
#(: purpose:  MGR Help general
#(: calls:
#(: method:  > /tmp/box_help & /usr/lib/gtkdialog/box_help
#(: sends:
#(: rationale:
#(: note :
#(:     gtkdialog/box_help will handle format and embedded color text codes.
#(:     xmessage will NOT handle format and color embedded text codes.
#(:     system gtkdialog "box_help" location is  '/usr/lib/gtkdialog/box_help'
#(:
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message  for '/tmp/box_help'"
#(:
#! ###    #! echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
#########################################################
function Sbr_Dxstro_Window () {   # ACTIVE  
    n=0
    echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Dxstro_List "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
<b><span foreground='"'red'"'>". . . . ${gcSysNameBase} 'Puppy Project Manager'"</span></b>
"--- "
<span foreground='"'green'"'>"____________________________________________"</span>
<b><span foreground='"'purple'"'>" Running Tests on 23+ Puppy OS,  "</span></b>
<span foreground='purple'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='purple'>"#! Each OS is tested via its own original distro GTK ."</span>
<span foreground='purple'>"#! Each OS is original as written by Mik01,PeaBee,etc ."</span>
"---"
"--- iso list includes: "
<b><span foreground='"'red'"'>"${gcDistro01}"</span></b>
<b><span foreground='"'red'"'>"${gcDistro02}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro03}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro04}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro05}"</span></b>
<b><span foreground='"'green'"'>"${gcDistro06}"</span></b>
<span foreground='"'blue'"'>"${gcDistro07}"</span>
<span foreground='"'blue'"'>"${gcDistro08}"</span>
<span foreground='"'blue'"'>"${gcDistro09}"</span>
<span foreground='"'blue'"'>"${gcDistro10}"</span>
<span foreground='"'blue'"'>"${gcDistro11}"</span>
<span foreground='"'blue'"'>"${gcDistro12}"</span>
<span foreground='"'blue'"'>"${gcDistro13}"</span>
<span foreground='"'blue'"'>"${gcDistro14}"</span>
<span foreground='"'blue'"'>"${gcDistro15}"</span>
<span foreground='"'blue'"'>"${gcDistro16}"</span>
<span foreground='"'blue'"'>"${gcDistro17}"</span>
<span foreground='"'blue'"'>"${gcDistro18}"</span>
<span foreground='"'blue'"'>"${gcDistro19}"</span>
<span foreground='"'blue'"'>"${gcDistro20}"</span>
<span foreground='"'blue'"'>"${gcDistro21}"</span>
<span foreground='"'blue'"'>"${gcDistro22}"</span>
<span foreground='"'blue'"'>"${gcDistro23}"</span>
<span foreground='"'blue'"'>"${gcDistro24}"</span>
<span foreground='"'blue'"'>"${gcDistro25}"</span>
<span foreground='"'green'"'>"____________________________________________"</span>
"--- "
......................................................"\
> /tmp/box_help
Sbr_Box_Message "=== Dxstro ==='function Sbr_Dxstro_Window'===/tmp/box_help==="
#! message fntrg inherent in custom Box_Message
#
} # end
export -f Sbr_Dxstro_Window
#!
#! ############################################################
#! ### END DUMPS ##############################################
#! ############################################################
#!
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_Sync
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
function Sbr_Sys_Sync() {   # NOT ACTIVE
#!
n=0
#!  clear lingering colors 
/bin/echo -en "\\033[0;39m"    #>/dev/console
/bin/echo -en "\\033[60G"      #>/dev/console
/bin/echo -en "\\033[1;33m"    #>/dev/console
/bin/echo -e  "\\033[0;39m"    #>/dev/console
#! 
if [ ! $1  ] ; then   # display
Sbr_Splash_It "< SYNC >  flush buffers" "orange" "purple" "1"    #! -D---
fi # end: [ $1 = "1" ]
#!
    sync    # # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'
#!
} #
export -f Sbr_Sys_Sync
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_PupState
#(: called by Main
#(: param
#(: purpose:
#(:    consolidation of PUPSTATE
#(:     control generation of local var
#(:     control configfile
#(: rationale:
#(:     Puppy writes the "state" variables into /etc/rc.d/PUPSTATE .
#(: sends:
#(: note:
#(:     dox for export
#(: export      varname
#(:     export -f   file or function
#(:     export -d   directory
#(:
#! ########################################################
function Sbr_Sys_PupState() {   # ACTIVE  #! could test for not 12 or not 13 !
    n=0
    lcVerDtsTmp="${gcMGRDob}"
    #
    #! already done at main () entry.
    #
    export gcMGRDob="${lcVerDtsTmp}"
    #
    export gcSysDistroLoc="${PDEV1}"    ### from PUPSTATE, from rc.sysinit.
    export gcZeroRun="$0"
    #! "BK ==============================================="
    export gcSysDistroVer="${PUPSFS}"
    export gcSysKernVer=${gcSysKernVer}
    export gcSysVer="${PUPSFS}" #: ${gcSysDistroVer}
    export gcPupSfsFile="`echo "$PUPSFS" | cut -f 3 -d ','`"
    export gcMGRDistroVer="${PUPSFS}"
    export gcMGRKernVer="`uname -r`"
    export lcPupMode=${PUPMODE}
    export lcPupHome=${PUP_HOME}
    export lcPupSave=${PUPSAVE}
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
    #!
    #! "top=RamObj ==============================================="
    #! dev: "calc" if [ zero ]  for "${lcPupRamObjMsg}"
    #! "gen=RamObj ==============================================="
        #! ------------------------------------
        aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
        read -r b ccc <<< "$aa" # --- saveDATA size calc
        #!
        export gcPupRamObjMsg="${b}MB"
        export gcPupRamObjMsgN="${b}"
        #!
        ### changed from leading grave [`] to enclosing double-apostrophe ["]
        ### FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '"
        ### export gcFreeRamNow="${FREERAM}"
        ### export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
    #! "bot=RamObj ==============================================="
    export gcPupSave="${PUPSAVE}"
    export gcMGR_LockFile="/tmp/MGR_LockFile"
    #!
    #!
} #
export -f Sbr_Sys_PupState
#!
#!
#(:
#!
#(:
#(: ================================================================
#(: fx Sbr_CBXAR3       # NOT ACTIVE  Check-Box "CBX"  
#(: called by: 
#(:     if [ "${EXIT}" == "CBXARS" ] 
#(:     || [ "${EXIT}" == "CBXARB" ] 
#(:     || [ "${EXIT}" == "CBXARQ" ] ; then
#(: param:  #(: purpose:    #(: calls:  #(: method: #(: sends:  #(: rationale:
#(: note :
#(:
#(: begin: ( EXIT:'CBX APPLY+')
#(: begin: check for "APPLY Checks" command   Check-Box "CBX"  # External calls
#(:  EXIT='APPLY_Checks_All_'
#(:  EXIT='CBXAR3') #(:  EXIT='CBXARS'  #(:  EXIT='CBXARB'  #(:  EXIT='CBXAPO'
#(: 
#!
#! Fall-Thru Method 
#!
#(:
#(: ========================================================================
#(: fx note: ( EXIT:'CBX_APPLY+')       #! ComboBox Not Used
#(: IF EXIT:CBXAR3   #! EXIT:CBXARS  #! EXIT:CBXARB #! EXIT:CBXARQ  
#(:  via ( EXIT:CBX_APPLY+ )
#(:     if [ "$EXIT" = "CBXARS" ] ; then ; n=0 ; fi   
#(: # CBX ARS, ARB, ARQ ComboBox
#! =========================================================================
#!
#! ===========================================================
#! begin :  Bak---   
#!  Sbr_BakOneArcDts
#!  Sbr_BakAllArcDts_One
#!  Sbr_BakAllArcDts
#! ===========================================================
#! 
#(:
#(: ================================================================
#(: fx Sbr_BakOneArcDts
#(: called by: Page "Main"
#(: param:
#(: purpose: Backup/Archive with DTS, only on /Dev /Edit sdir
#(:     only for "MGR" "Manager" Shell Script
#(: calls:
#(: method: pull from "EDIT" files.sh  
#(:     over into /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_
#(:     over into "/root/my-applications" ; which is included in Save2File scope. 
#(: sends:
#(:  rc.z_MGR##      #!  FnSrc = edited as standard Fn+NameBase+FnVer "MGR-12"
#(:  rc.z_MGR##-##   #!  FnTrg = OneDts has full Fn+NameBase+FnVer+VerExt  "MGR-12.2"
#(: rationale:
#(: note : BakAll for ONLY the curret 'MGR.sh' but previous/workup versions. 
#(:    into the /Edit_MGR/arc_Common_dts subdir 
#! ##########################################################
function Sbr_BakOneArcDts() {       # ACTIVE  
    #! [EXIT:guiMgrOneArcDts] [BakOne]
    #!
    #! ================ Not Req for "Bak One Dts "
     lcTargetSDbase="/mnt/home"
    #!
    #! pull from initial code : 
    lcSysFnPre="rc.z_"  #! his prefix will force independence from other applications.
    lcSysNameBase="${gcSysNameBase}"  # "MGR"         # ${gcSysNameBase}
    lcSysFnVer="-${gcMgrVer}"   # -10
    lcSysFnVerExt="${gcMgrVerExt}" #! pull rc.z_MGR.sh   only   #!"${gcMgrVerExt}"   # -10.0
    lcSysNameExt=".sh"
    #!               rc.z_        MGR             
    lcSysArcFnSrc="${lcSysFnPre}${lcSysNameBase}${lcSysFnVer}"
    #! pull from initial code : 
    #!   
    #! lcMgrRealFnSrc="`echo -n "$0" | cut -f 2 -d '/'`" 
    #! grRealFnsrc="`echo -n "$0" | cut -f -1 -d '/'`"   #  "./MGR-7.sh"
    #! used only in Sbr_BakOneArcDts
    #! *********************************************************
    #!
#! === MGR Arc+DTS === BackGround ============================
#!   Yellow / DarkRed     /mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
*.    EDIT version :   BakOne  pulls from "EDIT" Shell Script + DTS  
*.   ->  over into "/arc_Common_dts_" 
*.   
*.   
*.
*.
*.      Sbr_BakOneArcDts
*.
*.
*.
*.
*.   
*________________________________________________________________________________________" &
    pidx=$!
    GTKPIDmgrarcdtsA=$!
    sleep 1
    #!
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    #!
    #! === duplicate ============================================
    lcMgrArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"  # upupkk, upupbb, upupjj, upupmm+bw
    lcMgrArcDtsNow="`date +%y%m%d-%H%M-%S`" 
    #! Source is the current "active" MGR source code $0 . #! rc.z_MGR.sh #! 
    lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/${lcSysArcFnSrc}.sh"
    lcFnSrcB="${lcSysArcFnSrc}.sh"
    #! Target Repository of /Edit_MGR/arc_Common_dts_/arc_Common_10_dts_sh_/${lcSysArcFnSrc}-${lcMgrArcSubName}-${gcMgrVerExt}-${lcMgrArcDtsNow}.sh"
    #! KLM is   /mnt/sdc1 
    #! lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_/arc_Common_10_dts_sh_/${lcSysArcFnSrc}-${lcMgrArcSubName}-${gcMgrVerExt}-${lcMgrArcDtsNow}.sh"
    #! simplify to this on SDA1 : 
    lcFnTrgA="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_/${lcSysArcFnSrc}${gcMgrVerExt}-${lcMgrArcDtsNow}.sh"
    #! target on primary HardDrive for persistent record across all Distros.
    lcFnTrgB="/initrd/mnt/dev_save/CTB_Backup_/${lcFnSrcB}"
    #! 
    echo  "!:  ${lcSysArcFnSrc}"
    echo  "fr: ${lcFnSrc}"
    echo  "to A: ${lcFnTrgA}"
    echo  "to B: ${lcFnTrgB}"
     #!   Yellow / Blue
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
    Single MGR file _DTS backup
     from:   ${lcFnSrc}
     to A:   ${lcFnTrgA}
     to B:   ${lcFnTrgB}
  " &
    pidx=$!
    GTKPIDmgrarcdts=$!
    #!
    cp -v ${lcFnSrc} ${lcFnTrgA}
        sleep 1
    cp -v ${lcFnSrc} ${lcFnTrgB}
        sleep 1
    #!
    sleep 1
    kill ${GTKPIDmgrarcdtsA}   2>/dev/null   
    kill ${GTKPIDmgrarcdts}    2>/dev/null   
    #!
 } # 
export -f Sbr_BakOneArcDts
#! to do: find "$BACKUP_DIR" -type d -name "backup_*" -mtime +30 -exec rm -rf {} \;
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_BakAllArcDts_One
#(: called by: Sbr_BakAllArcDts
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:  Sbr_BakAllArcDts
#(: method: cp -v -u   in this Sbr . 
#(: method: 
#(: format: lcSysRealFnSrc=${lcSysArcFnSrc}    # will be "rc.z_"  and "BaseName" and  ".sh"
#(:        /mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-12.sh
#(:        do not automatically append a "Ver" nor "VerExt" 
#(:         some files do not have a version nor version extension. 
#(: sends:
#(: rationale:  replaces external rc.z_E3R.sh 
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(: Check-if  and  mkdir  "/root/my-applications" 
#(: created via "init" and "profile" 
#(: to do : "TOUCH" placed in main () 
#(:
#! #####################################################
function Sbr_BakAllArcDts_One() {    #  ACTIVE   
    #! called by: Sbr_BakAllArcDts  from list into /root/myapplications
    n=0 # [ BakAll ]
    #!
    #! param: SubDir ,  FileName    lcSysNameSD lcSysNameFN
    lcSysNameSD="${1}"
    lcSysFnPre="rc.z_"
    lcSysNameFN="${2}" 
    lcSysFnExt=".sh"
    #! lcSysArcFnSrc="${lcSysFnPre}${lcSysNameFN}"
    lcSysRealFnSrc="${lcSysFnPre}${lcSysNameFN}"
    #!  gcSysDevSubId  is  upupk64k, upupb64b, upupj64j, upupdbw64, else "..."
    lcSysArcSubName="${DISTRO_DB_SUBNAME}${gcMgrDevSubId}"  
    lcSysArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    #!
    #! format: lcSysRealFnSrc=${lcSysArcFnSrc}    # will be "rc.z_"  and "BaseName" and  ".sh"
    #!           /mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR-7.sh
    lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcSysNameSD}/${lcSysRealFnSrc}.sh"
    #!
    #! target root/my-applications   RA     is  RootApplicatons
    lcFnTrgRA="/root/my-applications/${lcSysRealFnSrc}.sh"
    #! target on primary HardDrive for persistent record across all Distros.
    lcFnTrgRB="/initrd/mnt/dev_save/CTB_Backup_/${lcSysRealFnSrc}.sh"
    #!
    if [ -f "${lcFnSrc}" ]  ; then 
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
  BakOne--- ${lcFnSrc} --- into ${lcFnTrgRA}/${lcFnTrgRB}" &
    pidx=$!
    GTKPIDmgrarcdtsB=$!
        echo "=== ${lcFnTrgRA} ======" 
        cp -v   ${lcFnSrc} ${lcFnTrgRA}
        #! "cp -v  "  is  faster  than  "cp -v -u   "   
        echo "=== ${lcFnTrgRB} ======" 
        cp -v   ${lcFnSrc} ${lcFnTrgRB}
        #! "cp -v  "  is  faster  than  "cp -v -u   "   
        sleep .2     #! major time eater
        kill ${GTKPIDmgrarcdtsB}   2>/dev/null   
    else
        Sbr_Splash_It "--- ERROR BakAll --- ${lcFnSrc} --- NOT FOUND --- " "yellow" "black" "7"       #! -D--- 
    fi
    #!
} # 
export -f Sbr_BakAllArcDts_One # called by: Sbr_BakAllArcDts
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_BakAllArcDts
#(: called by: Main GUI Fall-Thru
#(: calls: Sbr_BakAllArcDts_One
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: called by:
#(:     should be called by < BakAll-RS > < BakAll-RB > < BakAll-RQ >
#(: method: cp -v 
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#! =====================================
#!
#! #####################################################
function Sbr_BakAllArcDts() {    #  ACTIVE #! Sbr_BakAllArcDts_All
    #! called by < BakAll-RS > < BakAll-RB >
    n=0
    #! === Sbr_BakAllArcDts === into  /mnt/home/MGR-All-Arc-Dts_/MGR-ALL-Arc-Dts-flg.tst
    #! === "IF NOT FILE" CHECK    ;  THEN  make subdir and flag flg ===
     lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    lcTargetSDbase="/mnt/home"
    lcMgrArcDtsNow="`date +%y%m%d-%H%M-%S`"
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    #! -D---  ### BackGround ###
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true -close never -text "\
*.     Copy ALL major 'EDIT' scripts  + DTS  
*.     Multi:  MGR, + CTX, + et al, geany.config 
*.     /root/applications  
#.     /initrd/mnt/dev_save/CTB_Backup__
*.  
*.  
*.  
*.      Back-ALL-DTS
*.  
*.  
*.  
*.
*._____________________________________________________
" &    pidx=$!
    GTKPIDmgrarcdtsA=$!
    sleep 1
    #!     "BakAll-Arc-Dts_"     
     lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
     lcTargetSDbase="/mnt/home"
     lcMgrAllArcDtsSN="MGR-All-Arc-Dts_"  # used by Sbr_BakOneArcDts  and Sbr_BakAllArcDts
    #!
    lcFnTrg="/mnt/home/${lcMgrAllArcDtsSN}/rc.z_${lcMgrArcFnSrcFn}-${lcMgrArcSubName}-${lcMgrArcDtsNow}.sh"
    #!
    #! ===== Sbr_BakAllArcDts ==========================
    #! param:         SubDir , FileName ,   TargetSubdir 
    #! must prefix all file names with "rc.z_" and assume suffix is ".sh"
    #!
    lcMntHomeSubDir="/mnt/home/MGR-All-Arc-Dts_"
    lcTargetSD="/mnt/home/MGR-All-Arc-Dts_"
    #! -                  SDir     Fn           
    #!  These are Production Programs 
    Sbr_BakAllArcDts_One "MGR"    "MGR-5"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-6"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-7"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-8"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-9"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-10"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-11"       "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "MGR"    "MGR-12"       "${lcMntHomeSubDir}"
    #!
    #!  These are Production Programs 
    Sbr_BakAllArcDts_One "MCI"     "MCI"        "${lcMntHomeSubDir}"
    #!
    #! Sbr_BakAllArcDts_One "S2F"     "save2flash-top"  "${lcMntHomeSubDir}"
    #! Sbr_BakAllArcDts_One "S2F"     "sXf-top"           "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "S2F"     "save2flash-top"           "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "S2F"     "S-X-1F"         "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "S2F"     "S-X-3F"         "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "S2F"     "save2flash-top"         "${lcMntHomeSubDir}"
    #!
    Sbr_BakAllArcDts_One "CTX"     "CTX"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTX"     "CTY"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTU"     "CTU"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTA"     "CTA"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTB"     "CTB"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTA"     "CTA-SLX"    "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTB"     "CTB-SLX"    "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "CTB"     "CTB-5.2"    "${lcMntHomeSubDir}"
    #! PCB Pup Cold Backup via GlenE77is
    Sbr_BakAllArcDts_One "PCB"     "PCB-ion"        "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "PCB"     "PCB-ion-Xterm"  "${lcMntHomeSubDir}"
    #! TXN_EXE via GlenE77is
    #! Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_CALL"  "${lcMntHomeSubDir}"
    #! Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_EXE"  "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_EXE-9"   "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_EXE-10"   "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_EXE-11"   "${lcMntHomeSubDir}"
    Sbr_BakAllArcDts_One "TXN"     "TXN_RUN_EXE-12"   "${lcMntHomeSubDir}"
    #!
    Sbr_BakAllArcDts_One "BIS"     "BIS"   "${lcMntHomeSubDir}"
    #! #! GTK_Toggle via GlenE77is  #! toggle used in MGR-9, but NOT in MGR-11 !
    #! Sbr_BakAllArcDts_One "GTK"     "GTK_Toggle_Menu" "${lcMntHomeSubDir}"
    #! Sbr_BakAllArcDts_One "GTK"     "Button_Rounded" "${lcMntHomeSubDir}"
    #! /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/GTK_Toggle_Menu.sh in MGR-9 , but NOT in MGR-11 .
    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
    #! === geany.conf Special Hard Code Arc+DTS =========================
    lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`"
    lcSysArcFnSrc="geany.conf"
    lcFnSrc="/root/.config/geany/geany.conf"
    lcFnTrg="/initrd/mnt/dev_save/CTB_Backup_/${lcSysArcFnSrc}"
    #!
    cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    lcFnTrg="/root/my-applications/${lcFnSrc}"
    #! lcFnTrgRB="/initrd/mnt/dev_save/CTB_Backup_/${lcSysArcFnSrc}"
    cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    #! ==================================================================
    #!
    #! ==================================================================
    #! /menu.lst current code.  because code may be modified 
    lcFnSrcBase="menu.lst"
    lcFnSrc="/mnt/home/${lcFnSrcBase}"
    lcFnTrg="/root/my-applications/${lcFnSrcBase}"
    #!
    cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    #! =====================================================
    #! /ETC/rc.d/rc.shutdown    because code may be modified 
    lcFnSrcBase="rc.shutdown"
    lcFnSrc="/etc/rc.d/rc.shutdown"
    lcFnTrg="/root/my-applications/${lcFnSrcBase}"
    #!
    cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    #! =====================================================
    #! /ETC/rc.d/rc.sysinit    because code may be modified 
    lcFnSrcBase="rc.sysinit"
    lcFnSrc="/etc/rc.d/rc.sysinit"
    lcFnTrg="/root/my-applications/${lcFnSrcBase}"
    #!
    cp -v   ${lcFnSrc} ${lcFnTrg}
    #!
    #! =====================================================
    #! on return, then Sbr_Cbx_ReStart 1  ??? or return control 
    sleep .9
    kill ${GTKPIDmgrarcdtsA}    2>/dev/null      # main
    #!
    #! fi # end: guiMgrAllArcDts
} # end  
export -f Sbr_BakAllArcDts
#!
#!
#! end :  Bak---   BakAll   BakOne
#! end :  Bak---   BakAll   BakOne
#! end :  Bak---   BakAll   BakOne
#!
#!
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_LockFile
#(: called by: Main GUI Fall-Thru
#(: calls: 
#(: param:
#(: purpose: 
#(: called by: 
#(: method: 
#(:     MGR must not "lock-out" a user, so build "Soft-Lock".
#(: sends:
#(: Rationale: Lock-File "Soft" Version
#(:     MGR is a Master Conrol program.
#(:     MGR must have a 'LockFile' to control for "Run-Twice".
#(: note : 
#(:     fx "LockFile" not written as a "function" LockFile subroutine .
#(:     IF previous lockfile is found, THEN throw a flag, cleanup, continue. 
#(:     called by: main () as "in-line code" ,
#(:        so that "exit 0" is immediate, from top of "0" empty stack.
#(:     purpose: provides a "Soft-Lock" method.  IF error, THEN continue .
#(:     CLEAR this lockfile at end of "QUIT", bottom of code, natural clear.
#(: NOTE: 
#(: This is the main () stack level, and 'exit' will drop out of prg.
#(: but,
#(: IF 'Lock-File found' 
#(: THEN check/test is inside a subroutine,
#(: THEREFORE 'exit 1' will only exit up to the previous stack level
#(:    and will not exit program. This is Insufficient Action. 
#(: THEREFORE must pass back a RETVAL flag of '1' to trigger another 'exit'
#(: Note: This is a BASH system stack '0' concern,
#(:     Controlled by manually placing 'Check Lock-Flag' at stack base level '0'.
#(:     A fix could be to call Sbr_Cbx_ReStart, but that interferes with client usage. 
#(:     Soft-Lock is better/compromise solution. 
#!
function Sbr_Sys_LockFile() {
#(: ======================================================
#(: begin LOCK-FILE
#(: ======================================================
#(:
#! begin lock-file section ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    #(: generate the name of the 'lock-file' in 'export' section.
    n=0
    if [ -f "${gcMGR_LockFile}" ]; then      #: this is Main () lockfile
        lcMsgStr=" Error: Soft LockFile Control
          !!! MGR_Running_Already !!!
          ... (1) Quit MGR program
          ... (2) Clear Running MGR window
          ... (3) Re-Start MGR program
          ... (4) however, always, MGR program will continue (Soft Lock)
        #(: IF Hard-Lock code, THEN  ${gcMGR_LockFile} can prevent re-running program.
        #(: IF Soft-Lock  code, THEN  program allows Continue through a non-fatal error. 
        #(: ideally,
        #(: user will clear lingering lockfile, manually, immediately, 
        #(: then restart program."
        xmessage  -name 'MGR_Soft-Lock-'  -timeout 1  -center   -fg yellow  -bg brown  "${lcMsgStr}"
        #(: Note on "Lock-File" method at end of source code.
        #(:
    else
        n=0
        #! lcMsgStr=" =  Lock File Not Found  :[ -f ${gcMGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
    fi
    #!
    #(: ->->-> begin set lock-file
    #(: Always !
    #(: so Otherwise , SET the lock-file, during this program run.
    touch "${gcMGR_LockFile}"   # Always refresh ! for "Soft Lock" 
    #(: clear this lockfile at end of "QUIT", bottom of code, natural clear.
    #! end: Sbr_LockFile
    #(:
    #(: 
    #! #####################################################
    #(:
} # end Sbr_Sys_LockFile
export -f Sbr_Sys_LockFile
#! ######################################################
#!
#(:
#(: ================================================================
#(: fx Sbr_Sys_CheckMode
#(: called by:  main ()
#(: param:
#(: purpose:  
#(: Check for installed System Mode
#(:      if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then # frugal install
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#!
function Sbr_Sys_CheckMode() {
#!
n=0
#! Check for installed System Mode
#(: function if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then # frugal install
        MODE="`grep PUPMODE /etc/rc.d/PUPSTATE | cut -f 2 -d "="`"
            if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
                n=0 #! initial "Running" splash, yellow/black, quick  !
            else 
                lcMsgStr="ERROR:    MODE is not FRUGAL mode '12' or '13' " 
                lcDialogColor="  -fg black -bg red  "
                #! rolling splash "ERROR"
                Sbr_Splash_It " $lcMsgStr " "red" "blue" "2"   #! -D---
                #! exit 1		#! CheckMode
            fi
        #! return
} # end Sbr_Sys_CheckMode() 
export -f Sbr_Sys_CheckMode
#!
#!
#(: === Sbr_CDW_EGI_CheckIF covers this. ===============================
#(: old MGR flipped between Long Image Format and Short Image Format.
#(:
#(: if [ ! -f ${gcEmGaImgFnTrgTxtMaster} ] ; then 
#(:
#(: IF/fi   (MGR_Master_GUI=)   #: A
#(: called by: main program via fall-thru
#(: param: only the Fall-Thru <ACTION> sub-name .
#(: purpose: Master gtkdialog XML Menu structure.
#(: calls:
#(:    every thing via gui buttons to [ gui fall-thru "IF/ ft(name) /FI" ]
#(:
#(: method:
#(:   (1) gui <action> "EXIT:ft(name)"
#(:   (2) 'gui fall-thru to "IF/ ft(name) /FI" (at bottom of source code)
#(:   (3) If/Fi calls to "Sbr_subroutines"    (at top of source code) .
#(:
#(: sends: "EXIT" = choice
#(: rationale:
#(: note :
#(:     this width=1500 works good on UpupBB. Other Distro may require adjustment or default theme.
#(:
#(: note:
#(: Standard Gui Button Call Method is TWO-STEP:
#(:  (1) gui-Buttons "call" to a "Fall-Thru function written as ft("IF/FI") (in lower part of source).
#(:  (2) "IF/FI" functions then call regular subroutine function() (at top of code).
#(: EXAMPLE:  button "MntAll" is <action>'EXIT:MNT+'</action>
#(: which will exit and fall-thru to "ft( 'EXIT:MNT+' )"
#(: which will then call "function Sbr_MGR_pMount()" (written in top part of source).
#(: This is the Standard Method written into this Main Gui,
#(:   which allows parameters to be sent to complex sub-routines .
#(:   which avoids overwriting parameter passing in the gui Button gtkdialog process.
#(:  problem: in some Puppy OS, 
#(:     each time the Main Gui XML is run, 
#(:     there is a delay ??? until Main Gui <button> are 'active'. 
#(:           may be dependent on "re-sizing" each element of gui.
#(:  GTK is sensitive to the "theme"  and  "character size" , therefore "resizing". 
#(:       cause: each OS install might have special display pixel count, font size, etc. 
#(:       run gui test on each OS:__________Menu # __Distro Sub Name  
#(: 
#(: GTK main XML gui is dependent on system screen-size, theme , font size. 
#(: Generally, the"default" theme, and the "default" character size works OK.
#(:
#(: begin: Test before possible ReStart 
#(:    so MGR is initialized without duplicate loading of images to /tmp .
#(:     must be via if [ ! -f file ] , then touch or load again. 
#(:
#! ===========================================================================    
#! covered via "Sbr_CDW_EGI_CheckIF"
function Sbr_Sys_Check_Image() {    #! NOT ACTIVE
if [ ! -f ${gcEmGaImgFnTrgTxtMaster} ] ; then   # NO flag " gcEmGaImgFnTrgTxtMaster " 
    #!      so, this is a First-Time-Run  and  Requires TOUCH Flag and ReStart.
    lcMsgStr="->->->=== First Time Run === Images ReLoad required ==="     
    #! Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    Sbr_Splash_It ${lcMsgStr} "orange" "purple" "3"    #! -D---
    #! Given: not file, Then: touch one. 
    #! Generate a ReStart Message for First Time Run .  ??? MGR_ReStart_flg ???
    #! TOUCH EmGaImg FnTrgTxt Master
    touch ${gcEmGaImgFnTrgTxtMaster}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart 1  # no wait # ReStart so GEANY is initialized proper.
else #! this is NOT a First-Time-Run, 
     #! we have Image Files, or we have flag " gcEmGaImgFnTrgTxtMaster "  
     #! therefore Do Not Re-Load.
    lcMsgStr="->->->=== No Images Re-Load Required ==="
    Sbr_Splash_It ${lcMsgStr} "orange" "purple" "3"    #! -D---
    #! sleep .3
fi #
}
export -f Sbr_Sys_Check_Image
########################################################
#!
#####################################  PXB-ion  #######################################
##################################### Execution #######################################
#!
#(: ================================================================
#(: fx Sbr_PXB_SMP			 #! ACTIVE   
#(: called by: 
#(: param:
#(: purpose: 
#(: calls:
#(: method: 
#(: sends:
#(: rationale:
#! #################################################################################
function Sbr_PXB_SMP() {    #! Active
    n=0
    Sbr_Sys_SMP #! Standardized Call to SMP 
} # end: Sbr_PXB_SMP
export -f Sbr_PXB_SMP
#!
#!
#(: ==================================================================
#(: fx  PXB_Splash_It    # ACTIVE  #  copy from "CTB" "MCI" "MGR" 
#(: Standard Splash : param "Str" "fg" "bg" "sleep" "opt"
#(: called by:  
#(:     PXB_Splash_It "${lcMsgStr}" "yellow" "purple" "3" "" & sleep 1
#(: param:  "Str" "fg" "bg" "sleep" "opt"
#(: purpose: Standard MGR Splash
#(: method:  /usr/lib/gtkdialog/box_splash
#(: sends:
#(: rationale:
#(: note : if "opt" is ""  then  splash will linger until kill ! 
#(:
function PXB_Splash_It() {   #! ACTIVE 
	#!  Standard Sbr_Splash_It : param "Str" "fg" "bg" "sleep" "opt"
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
	#! test for Param is Sleep 
	if [ ! $4 ] ; then  # Sleep safe default
		lcMsgSlp="1"  # < 1  usually does not make it to the screen, timing issues. 
	fi
	#! test for NoParam is Sleep quick
	if [ "0" -eq $4 ] ; then  # Sleep quick
		lcMsgSlp=".5"  # < .5  usually does not make it to the screen, timing issues. 
	fi   #! else keep the sleep param as sent originally 
		#! -D---
	/usr/lib/gtkdialog/box_splash -fg ${lcMsgColorFg} -bg ${lcMsgColorBg} -border true  -close never -text "${lcMsgStr}     " &
		RETVAL=$?
		PXBPID_Splash_It=$!
		sleep ${lcMsgSlp}
	#!   if NOT $5 flag, then KILL.  This is Normal.
	if [ ! $5 ] ; then  #! IF   " No Option #5 " ;   THEN   kill pid now. 
		kill ${PXBPID_Splash_It}  #! now !
	fi    
	} #
	export -f PXB_Splash_It
	#!
    #!
#(: ==================================================================
#(: fx   PXB_Splash_Wait_mow    # ACTIVE
#(: Standard Splash : param "Str" "fg" "bg" "sleep" "opt"
#(: called by:  
#(: param:  "Str" "fg" "bg" "sleep" "opt"
#(: purpose: Standard MGR Splash
#(: method:  /usr/lib/gtkdialog/box_splash
#(: sends:
#(: rationale:
#(: note : if "opt" is ""  then  splash will linger until kill ! 
#(:
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
function PXB_Splash_Wait_mow() {   #! Big MAIN splash # ACTIVE : auth is "mow9032" : 
    #! "mow9032" code generates Splash, with lingering. 
    #! PXB_Splash_Wait_mow "${lcMsgStr}" #  will kill ${GcPidSplashWait}  later
    #!_____________________________________________________________________
    /usr/lib/gtkdialog/box_splash -fg ${2} -bg ${3} -border true -close never \
    -text "
    ${1}   
    .                          " &
    #! will wait for TarOpt RunTime process, then kill. 
    export GcPidSplashWait=$!
    } # end: PXB_Splash_Wait_mow
    export -f PXB_Splash_Wait_mow
#!
#!
#!
#(: ==================================================================
#(: fx(PXB_CleanUp)    # ACTIVE
#(: Standard Splash : param "Str" "fg" "bg" "sleep" "opt"
function PXB_CleanUp() {    # ACTIVE
    n=0
    rm -f /tmp/gtkdialog_splash_border.svg
    rm -f /tmp/gtkdialog_splash_bg.svg
    rm -f /tmp/gtkdialog_splash_bg.svg
    rm -f /tmp/snapmergepuppy-error
    rm -f /tmp/flagnextpassthru
} # end: fx(PXB_CleanUp)
export -f PXB_CleanUp
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; begin: TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; begin: TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;; begin: TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
#(: ==================================================================
#(: fx(PXB_TarGzBackIt)    # ACTIVE
#! REQUIRED: === PXB_TarGzBackIt ========================================================
#! PXB_TarGzBackIt  # $PBKP_PUPSAVE_PATH $PXB_BackUp_PATH
function PXB_TarGzBackIt() {   
    n=0
        #! TarGzBackIt has 3 'cd' :
        #! *cd #1 save original subdir :
        #!       ${CWDIR} 
        #! *cd #2   TarGz runs from /subdir/saveFILE 
        #!       ${1%/*} is target dest subdir /saveFILE 
        #! *cd #3 restore original subdir :
        #!       ${CWDIR} 
    #! sequence of these modules is critical in order to provide req var for splash !
    echo ""
    echo "(TarGz)" && echo ""
    #! original PHB Calc PBKP_MBrequired()  # saveDATA fileSIZE  via $1 [$PBKP_PUPSAVE_PATH]
	pxba=$(du -c -m -s "$1")   
    #! -c = --total, -m = --block-size=1m, -s = --summarize
	read -r pxbab pxba <<< "$pxba"
    #! RAM space required is size of Src_DATA  entity. 
    lcMBreq="${pxbab}"
	#! === Time Length of TarGz process = 2.6GHz == depends on processor speed ==="
    let  lcTimeReq32="${lcMBreq} / 3"  
    let  lcTimeReq64="${lcMBreq} / 6"  
    #!
    #! awk $NF prints only the last column in a record
	destfile=".${2}"/"`expr "${1}" | awk -F / '{print $NF}'`"-${gcPXBBackUpId}-`date +%y%m%d_%H%M.%S`
    #! $NF refers to the last field in a given record
        echo  "=== $destfile ==="
        #! >>> CD <<<
        CWDIR=$PWD      # save "P"rocess "W"orking "D"irectory /root  (optional)
        echo "### (TarGz) save 'home dir' PWD is ${PWD} === "   && echo " "  
        #!
        sync    # now run sync
        #!
#! =====================================================================
        #! >>> CD <<< 
        cd ${1%/*}  
        echo "###_CD_### (TarGz) running on /saveDATA  ${1%/*} === "  && echo " "  #! change dir to  "/saveDATA"  
		#! Tar-Var-Set loading 
    
        TAROPT="-z"
        TAREXT='.tar.gz'
        TAROPT="-c -z --checkpoint=1000" 
        destfile=${destfile}${TAREXT} 
        echo ": PXB_Splash_Wait_mow (${gcPXBRunId}) :  "
        #! sequence of these modules is critical in order to provide req var for splash !
        #! Splash_Wait is from "mow" , and splash stays on screen until Tar.Gz is done. 
        #!
        PXB_Splash_Wait_mow "(${gcPXBRunId}__${gcPxbSysDevDob})) 
  .
  .        Pup-COLD-Backup
  .
  .         PCB_External
  .     ' ionice -c 1 tar -c -z  '   
  .
  .   --- Creating   Tar.Gz  ---
  .   --- SaveDATA size: ${lcMBreq} MB
  .   --- Please Wait ---
  .   --- ... ${lcTimeReq32} seconds on 32bit
  .   --- ... ${lcTimeReq64} seconds on 64bit
  .
  . Source: 
  ${gcPXBSave} 
  .  
  . Target: (into same subdir as Source)
        ${destfile##*/}
  .  "  "yellow" "purple"
#!
    destfile=${destfile}  
    sourcefile=${1##*/}
#!     flock -xn 200 ${gcPXBSave}
#! Lock eXclusive prior to Tar Gz
if [ 1 -eq 0 ] ; then  
   (
   flock -xn 200   "/initrd/mnt/dev_save/pup_UpupB32B-SDA/upupbbsave-B32B/"
   trap 'rm /var/lock/lockfile' 0
   RETVAL=$?
   if [ $RETVAL -eq 1 ] ; then
   echo $RETVAL
   exit 1
   else
   echo "sleeping"
   sleep 10
   fi
   ) 200>/var/lo  
fi
#!
#!;;; ionnice -c 1  realtime is best for security     
#!;;; ionnice -c 2  best effort  
#=== ionice TarGz ======================================================================
    ionice -c 1 tar ${TAROPT} -f ${destfile##*/} ${1##*/}/   --checkpoint=1000
#=== ionice TarGz ======================================================================
#!;;; ionnice -c 1  realtime is best for security     
#!;;; ionnice -c 2  best effort  
    #=== CD 
    #!
    cd "$CWDIR"  # change dir back to original   (not required) 
    echo "###_CD_### (TarGz) restore 'home dir' $CWDIR ===" && echo ""
    RETVAL=$?
    sleep 3
    kill ${GcPidSplashWait}   # Big TarOpt Background Splash   
#!
} #
export -f PXB_TarGzBackIt
#! ;;; end TarGzBackIt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(:
#(: ================================================================
#(: fx Sbr_PXB_Chk_PEX  #!  ACTIVE
#(: called by:
#(: param:
#(: purpose: copied from PEX iso distros. 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : in PEX distros, 
#(:      /usr/bin/save2flash can cause fault on reboot, poweroff. 
#(:
function Sbr_PXB_Chk_PEX() { 
n=0
lcMsgStr="  Notice: 
   (Pup-Cold-BackUp:PCB)+(PEX:EXTron) 
        === (${gcPXBRunId}
      ionice -c 1 snapmergepuppy  ()
         "
    echo "${lcMsgStr}"
    PXB_Splash_It "${lcMsgStr}" "yellow" "purple" "3" "" & sleep 1
        #! #! Top Splash
#! begin === PEX === SnapMergePuppy Control ===========================
. /etc/rc.d/PUPSTATE
#! copy from pup_PEX-Dev64 
if [ $PUPMODE -ne 13 ] ; then
	echo "save2flash: Wrong PUPMODE ($PUPMODE)"
fi
#!
#! copy from pup_PEX-Dev64 	#! Sbr_PXB_Chk_PEX
if pidof -s X Xorg `cat /etc/windowmanager 2>/dev/null` >/dev/null 2>&1 ; then
	if [ -z "$DISPLAY" ] ; then
		export DISPLAY=':0'
	fi
	if [ -z "$WAYLAND_DISPLAY" ] ; then		#! Sbr_PXB_Chk_PEX
		export WAYLAND_DISPLAY='wayland-0'
	fi
	if [ -z "$XDG_RUNTIME_DIR" ] ; then
		export XDG_RUNTIME_DIR='/tmp/runtime-root'
	fi
fi
#!
#! copy from pup_PEX-Dev64 
if pidof snapmergepuppy 2>/dev/null ; then
	echo "pidof snapmergepuppy is active:  is already running before !"
	exit 1		#! PEX
fi
#!
#! copy from pup_PEX-Dev64 
if [ "$1" = "pup_event" ] ; then
	RUNPS="`busybox ps`"
	#some apps should not be disturbed by this background stuff... from old safe2flash
	if [ "`echo "$RUNPS" | grep -w -E 'make|cc|gcc|imake|cmake|new2dir|xorriso|xorrecord|xine|gxine|petget|wget|axel|dotpup|mplayer|gmplayer|gcurl|gimv|burniso2cd|growisofs|cdrecord|pcdripper|xfmedia|xmms|ripoff|pdvdrsab|pburn|mhwaveedit|installpkg\.sh|downloadpkgs\.sh|removepreview\.sh'`" != "" ] ; then
		n=0
		exit 1		#! PEX
	fi
fi
#!
#! === end === PEX =====================================================
} #!
export -f Sbr_PXB_Chk_PEX
#!
#! end: Sbr_PXB_INT SubRoutines #####################3
#! #######################################################################3
#(:
#(: ================================================================
#(: fx Sbr_PXB_INT    #!  MAIN Pup Cold Backup INTERNAL   #! ACTIVE
#(: called by:
#(: param:
#(: purpose:    MAIN "PCB" program "INTernal" in "MGR" 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
function Sbr_PXB_INT() { 
n=0    
########################################
export gcPxbSysDevDob="260128-0030"    #! added: puppex-dev64 ___ Pup-EXon-Dev64 code.
########################################
#
echo "(=== running:  $0   Puppy-Linux  PCB-ion === ionice -c 1 ===)"
#
#==============
. /etc/rc.d/PUPSTATE
#==============
#!
export gcPXBId="pcb"     # not used to build "destfile" 
export gcPXBBackUpId="PCB" # label the TarGz Output File 
export gcPXBRunId="PCB-ion"     # Label the Project 
#==============
export gcPXBRunVer="-ion"     #  may update this "version label"                 # Not Used
export gcPXBRunFn="PCB-${gcPXBRunVer}"     # ${gcPXBRunFn}  used in main gui     # Not Used
#==============
export gcPXBSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
#==============
#! expand PATH
PATH=$PATH:/usr/lib/gtkdialog/:/root/my-applications/ 
#==============
lcMsgStr="
   === MAIN(PXB) (${gcPXBRunId}) ===
          BackUp 
          PCB-ion 
 "
/usr/lib/gtkdialog/box_splash -fg yellow -bg purple -border true -close never -text "${lcMsgStr}" & sleep 2
export GcPidSplashA=$!  #! First Splash will wait for  kill ${GcPidSplashA} 
#!
echo "( main ) ==="  # > /dev/console
. /etc/rc.d/PUPSTATE
export PUPMODE
#! --- Frugal only --- first possible check
case $PUPMODE in
	12|13) ok=1 ;;  
	*) ERRORMSG="only (12|13)" #! assigned
    ;;
esac
#!
PXB_CleanUp     #! test for causing lingering string.
#!
export gcSaveDataName="`echo $PUPSAVE | cut -f 3 -d ","`"    
#! if [ ! -e "/mnt/home${gcSaveDataName}" ]; then   # Error Trapped 
    #! ERRORMSG="Fatal Error: Pupsave Backup 
    #! '/mnt/home${gcSaveDataName}' does not exist!"
	#! /usr/lib/gtkdialog/box_ok "Pupsave Backup" error "'$ERRORMSG}'"   ### ShowError
    #! XPID=$!; sleep 3; kill ${XPID}       
	#! PXB_CleanUp
#! fi
#------------------------------------------------------------------------
#! Case ERRORMSG catch-all
if [ "$ERRORMSG" ] ; then
	PXB_CleanUp
	echo "$ERRORMSG"
	ERRORMSG="<b><span foreground='"'red'"'>${ERRORMSG}</span></b>" #! assigned
fi # end: if [ "$ERRORMSG" ] 
#--------------------------------------------------------------------
export PBKP_PUPSAVE_PATH="/mnt/home${gcSaveDataName}"
#! export PBKP_PUPSAVE_NAME="${gcSaveDataName##*/}" #${SF##*/} = basename $SF  #! err
echo "(Gui) ==="  # > /dev/console
#! ==========================================================================================
#! FALL-THRU ;;; MAIN GUI was originally in this code paragraph  ;;; 
#!  EXIT="PCB_Back_It" ;;; default < button > as if a Gui <button> Selection had been made ! 
#! #! subroutine "PXB_TarGzBackIt" RUNs on 'SaveDATA DIRECTORY' and 'saveDATA File.4fx'  
#! ==========================================================================================
echo "(Main) ==="  # > /dev/console
#!
#! begin === ionice === S2F + PEX =====================================================
. /etc/rc.d/PUPSTATE
#!
#! ======================== Not Used 
#! Sbr_PXB_Chk_PEX      #! for standard call process
#! ======================== Not Used 
#!
kill ${GcPidSplashA}  #! First Splash at top of PXB screen
#!
#! ========================
Sbr_PXB_SMP     #! will bounce to Sbr_Sys_SMP for standard call process. 
#! ========================
        #!
    #!
#! end === ionice === S2F + PEX =====================================================
#! === call call call =================================================
PXB_TarGzBackIt "$PBKP_PUPSAVE_PATH" "$PCB-BackUp_Path" 
#! === call call call =================================================
    #!
    PXB_Splash_Wait_mow "(${gcPXBRunId}__${gcPxbSysDevDob})) 
  .
  .            PCB-ion
  .            BackUp
  .           Completed
  .
  .  "  "yellow" "purple"
sleep 2
    kill ${GcPidSplashWait0}
    sleep .1
    kill ${GTKPID_Splash_It} #! ? from Tar.Gz 
    sleep .1
    kill ${GcPidSplashWait} #! 2 Big TarOpt Background Splash
    sleep .1
    #!
    lcMsgStr="=== (Cleanup) ==="
    echo "${lcMsgStr}"
    PXB_Splash_It "${lcMsgStr}" "yellow" "purple" "2" 
#! ================================
    #! Fall-Thru Trapped EXIT
    kill ${GTKPIDmgrarcdtsB}   2>/dev/null   
    #!
    PXB_CleanUp
    #! the main targz output is in a previous Xterm buffer, and is retained by Xterm. 
    #! Just scroll up via mouse.
    #!
    #! ############################################################################
    #! special for PXB Internal , call MGR subroutines to Clear and ReStart MGR.
    #! Sbr_ClearFlagsSystem 0       # clear lockfile so that MGR ReStart can run.
    #! Sbr_Cbx_ReStart 1            # display and no wait
    #! ############################################################################
    #!
} #! 
export -f Sbr_PXB_INT
#!
#!
### END of Source Code #################################################
#(:
#(: ================================================================
#(: fx Sbr_Sample_Not_Used    #!  
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
function Sbr_Sample_Not_Used() {    #! NOT ACTIVE
    gxmessage -bo -c -tim 5 -fn 'bold 10' -bg '#285577' -fg '#FFF' -bu '' $'\n\n  A buttonless gxmessage  \n\n'
    #! gxmessage special
    lcMsgStr="=== ${gcMgrKey}==="
    gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#285577' -fg '#FFF' -bu '' $'\n\n  "'${lcMsgStr}'"  '
    lcMsgStr="=== PID: ${gcMgrBashPid}==="
    gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#285577' -fg '#FFF' -bu '' $'\n\n  "'${lcMsgStr}'"  '
    lcMsgStr="=== ${LOGNAME}==="
    gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#285577' -fg '#FFF' -bu '' $'\n\n  "'${lcMsgStr}'"  '
} # end
export -f Sbr_Sample_Not_Used
#!
#!
#
#!##################################
#! function fx Sbr_Ask4Word ()
#Barry Kauler 2011, GPL3 (/usr/share/doc/legal)
#specified in /etc/sudoers or /etc/sudo.conf, gui-helper for sudo. (path compiled-in to my sudo PET)
#! 
### END ### Bottom of "function" SubRoutines ()  
###
#!
#!
#!
#!
#! ############################################################################################################
#! ############################################################################################################
#! ######   start  M.A.I.N.(.).  main() system() ##############################################################
#! ############################################################################################################
#! ############################################################################################################
#!
#####################################   main()  #######################################
#####################################   main()  #######################################
#####################################   main()  #######################################
#!
#! #########################################################################
#! #########################################################################
#!
#!  ## all "function ( )"  SubRoutines are  moved to top of code
#!
#(: ## all "GTK EXIT:" Fall-Thru to "if/fi" modules which are at bottom of code
#(:       all "if/fi" call up to SubRoutines in standard BASH method. 
#(: 
#(: ## this enables the  "Fall-Thru" / "Bounce-Up"  method .
#(:
#(: ## this isolates GTK code from BASH code, so no interaction 
#(:     between GTK language and BASH language ( OOP interaction ). 
#(:
#! #########################################################################
#! #########################################################################
#!
#!
#!
#!
#! === MAIN( ) === SYSTEM( )=================================================
#!
#! =====================================================
#! ### begin: main () : Fall-Thru  "initz" 
#! =====================================================
#! purpose: CLEAR all Xterm trace / history
#! USED ONLY during development , to flow back the Terminal History for tracing. 
#!
    #! here:  setup/prep System values.  
    #! This is prep for  "Sbr_Dump_Sys()" , requires system command "declare" . 
    #! Some Puppy Distro Do Not Have a System Command "declare" ! 
    #!~ echo "ls -lah /dev/console" > /sys-lah.txt
    #!~ ls -lah /dev/console >> /sys-lah.txt
    #!~ # utilities - get list of all processes, except transport (ntfs-3g, nbd-client)
    #!~ all_processes_except_transport() {
        #!~ $BB ps | $BB sed -e '/ntfs-3g/ d; /nbd-client/ d; /posixovl/ d; s/^ *//; s/ .*//' | $BB sort -rn
    #!~ echo $BB
    #!~ }
	#!~ for PID in $*; do
		#!~ case $PID in
			#!~ 1|$$) ;; # echo , but do not kill init or own process 
			#!~ *) $BB  ;;
		#!~ esac
	#!~ done
#!
#! === Terminal Screen Only === MAIN () RUNNING Terminal Quick Splash/NoWait ===. 
/bin/echo -e "\\033[5G\\033[1;31m"***"\\033[1;33m"=== ${gcMgrKey}==="\\033[1;31m"***"\\033[0;39m" #! terminal 
/bin/echo -e "\\033[20G\\033[1;32m"***"\\033[1;32m"=== ${gcMgrBashPid}==="\\033[1;32m"***"\\033[0;39m" #! terminal 
/bin/echo -e "\\033[20G\\033[1;33m"***"\\033[1;31m"=== ${LOGNAME}==="\\033[1;33m"***"\\033[0;39m" #! terminal 
echo " "
#!
Sbr_Sys_SetVerDts 	#!  this call should be first  / in main 
#!
Sbr_Sys_CheckMode
#!
rm -f ${gcEmGaImgFnTrgTxtMaster}    #! trigger "reload" of fresh images by culling master from /tmp  
#! 
#!
#! --- MAIN () 
. /etc/rc.d/PUPSTATE
export PUPMODE
#!
#!
Sbr_Sys_PupState   ### Gather the "state" variables from OS
#!
Sbr_Sys_Case_PupMode
#!
Sbr_Sys_CalcRamObj      #! may write alternate version 
#!
Sbr_Sys_LockFile    ### install "Soft" lock, "notify" but allow user to "continue" . 
#!
Sbr_CDW_EGI_CheckIF     # Check Graphic Images " gcEmGaImgFnTrgTxtMaster "   
#!
#!
#!=====================================================
#! ### begin Fall-Thru  "initz" 
#!=====================================================
#!
#!
#! --- MAIN () 
#! 
#!
#! --- MAIN () 
#!
#!
#! --- MAIN () 
#! Find and verify path of currently mounted saveDATA entity. Could be "/saveDATA" or "saveDATA.4fs" . 
#! But, if saveDATA does not exist, then this system will not run, will not get here !
#! export gcSaveDataName="`echo $PUPSAVE | cut -f 3 -d ","`"    
#! if [ ! -e "/mnt/home${gcSaveDataName}" ]; then   # Error is Trapped 
    #! /usr/lib/gtkdialog/box_ok "Pupsave Backup" error "'/mnt/home${gcSaveDataName}' does not exist!"   ### ShowError
    #! #! XPID=$!; sleep 3; kill ${XPID}       
    #! Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
#! fi
#!
#! --- MAIN () 
#! Case ERRORMSG catch-all from INIT processes 
if [ "$ERRORMSG" ] ; then
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run cleanly.
    echo "$ERRORMSG Catch All"
    /usr/lib/gtkdialog/box_ok "ERROR" error "'$ERRORMSG_:_Catch_ALL_"   ### ShowError String
    #! XPID=$!; sleep 3; kill ${XPID}       
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
fi # end: if [ "$ERRORMSG" ] 
#--------------------------------------------------------------------
export PBKP_PUPSAVE_PATH="/mnt/home${gcSaveDataName}"
#!
#!=====================================================
#! ### end: Fall-Thru  "initz" 
#!=====================================================
#! ====================================================================
#! FALL-THRU ;;; STANDARD RUN
#! ====================================================================
#!  MAIN GUI was originally in this code paragraph  
#! as if a Gui <button> Selection had been made ! 
#! ====================================================================
#! FALL-THRU ;;; STANDARD RUN
#! ====================================================================
#! ###########################################################################
#! ## top SystemGui  ### MainInit ### INIT Start  #############################
#! ###########################################################################
            #! NOTES:  about  System GUI dimensions:
            #! assumes this default setting at Main Gui : which must be set "literally" ( not ${var} ) !
            #! assumes     width-request="980"
            #! assumes     height-request="750"
            #! === Pre-Set =====================================================
            #! <window dimensions depend on specific Puppy Distro, and user selected GTK Theme, and selected CharSize. 
            #! These data are with theme="default", charsize="128", as supplied with each Puppy Distro OS "original". 
            #!
            #! Note: Version_6.  all above were developed and tested in V.6, very wide System Gui. Adjustments were needed. 
            #! Note: Version_7.  all were tested again in V.7, compact/consolidated System Gui, much better.  
            #! Note: Version_8.  all were tested again in V.8, compact/consolidated System Gui, passed OK.  
            #! Note: Version_9.  all were tested again in V.9,  compact/Toggled  GTK System Gui, passed OK.  
            #! Note: Version_10. all were tested again in V.10, compact/NoteBook GTK System Gui, passed OK.  
            #! Note: Version_11. all were tested again in V.11, NoteBook+BASH System Gui, passed OK.  
            #!
            #! Theme and Alpha-Size and Screen-size are controlling variables. 
            #! <window dimensions must be coded as: >
            #! export lcGuiWindowTitleMain="'${lcGuiWindowTitle}'" 
            #!
#!
#!
#! FALL-THRU ;;; STANDARD RUN
#!
#! 
#! ###########################################################################
#! ## MainGui ### Dialog BEGIN ### NoteBook SystemGui ### 
#! ###########################################################################
#! Primary "Window" title                   # Active    gui frame inner-title
#! Secondary "Frame" title embeds OK.
export lcGuiFrameTitle=" ${gcMgrNameBaseAllve}  v:${gcMgr_SysDOB}:  ${gcMgrDevDesc} : "    
#!
export gcToolTipText="'::${gcMgrDistroSymbol}:${DISTRO_VERSION}_:${gcMgr_SysDob}
_:RamObj=${gcPupRamObjMsg}
_:B=:${gcSysChkBtnFlg}_:M=${gcSysChkMnxFlg}_:P=${gcSysChkPexFlg}_:T=${gcSysChkTtlFlg}::'" 
export gcMgrSysTitle=""
export gcMgrMnxTitle="'---"'"_${gcMgrDistroSymbol}"'"____Current_Active____"'"MENU"'"_Will_Over_Write_Existing_"'"menu.lst"'"_---'"
export gcMgrBackTitle=""
export gcMgrDoxTitle=""
export gcMgrUtilTitle=""
#!
#! standard width-request : aprox.  
#!      v9:     B32B="1150"     B64B="1400"
#!      v10:    B32B="1250"     B64B="1250"
#! each Distro may have a special width-request for main dialog window "width" . 
#!
#! Puppy Linux GTK assumes these screen setting at Main Gui via CASE... 
#! testing / assigning done beginning near top of Source arox Line 286 
#!      "Sbr_Case_Distro_Name"
#!      "Sbr_Match_NoteBook_Gui_Position"
#!
#!   gcMrg adjust may not be used as dev continues. 
#!
#!   width is ACTIVE with extra quote marks:
#!      Set this way:     width-request="'${gcMrgGuiWid}'"
#!
#! special <window dimension code notes: 
#! each Distro GTK may have a special width-request for main dialog <window 
#!      and dependent on user installed/selected GTK theme. 
#!    width-request="'${gcMrgGuiWid}'"	#! Slacko-64 has no control.
#!    height-request="'${gcMrgGuiHgt}'"	#! Slacko-64 has no control.
#!	  window-position="1"  #! middle of screen #! except Slacko-64. 
#!
#!  These are previous 'normal' settings for the GTK window.  Not Active. 
    #! width-request="'${gcMrgGuiWid}'"     #! Active in <window main gui. 
    #! height-request="'${gcMrgGuiHgt}'"    #! Not Used #! <vseparator is sufficient 
    #! window-position="1" 
    #! space-expand="false" 
    #! border-width="3"
    #! resizable="true" 
#! ### MAIN GUI ###
#! main_notebook MASTER GUI 
export  System_GUI_Dialog='
<window  title="_'${gcMgrNameBase_All}...${gcMgr_SysDob}...Primary-GTK-GUI...'"
    window-position="1" 
    space-expand="false" 
    border-width="3"
    resizable="true" 
>  
<vbox>
    <text visible="0" editable="false" use-markup="true" xalign=".5"  <height-request="13" >
            <label>"'^^^_'${lcGuiWindowTitle}'^^^'"</label> </text>
<button visible="1"  Note="'Top_of_NoteBook_Screen'"  
tooltip-text="\
#. - - - - - - - - - - - - - - - - - - -
      Manager  =   ReStart
*.
*.  This is LINUX, 
*.     this is a Free OPEN SOURCE SYSTEM, 
*.     so READ the code and Learn !
" <height-request="27">
    <label>"'_!_ReStart_!_'"</label>
        <action>'EXIT:guiSimReStart'</action>   </button>
<button visible="1"   width-request="45" height-request="45"  size="medium"  weight="bold" 
   tooltip-text="" 
    has-focus="false"  xalign=".5" >
    <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>45</width><height>45</height>
        <label> "'${lcGuiFrameTitle}'"  </label> 
        <action function="'launch'">msg_DC_Quick_window</action> <action function="'closewindow'">msg_DC_Quick_window</action>
        <action>'0-EXIT:DoNothing:InfoBar:'</action>   </button>
    <hseparator width-request="1"></hseparator>
    <hseparator width-request="10"></hseparator>
    <vseparator height-request="1" > </vseparator>
    <text visible="1" height-request="3" xalign=".5">
    <label>"'========================================================'"</label></text>
<vbox visible="1">
<hbox  note="Begin:NoteBook.where.does.hbox.end?" >
        <hseparator width-request="1"></hseparator> 
<notebook labels="|  {System}  |  {Menu}  |  {BackUp}  |  {Dox}  |  {Util}  |" >
<text visible="false"> 
<label>"'##############################_Begin:_===_NoteBook_===################################'"</label> </text> 
    <vbox visible="1">
        <text visible="0"> 
        <label>
        "'###_1_#####_NoteBook_System-###_NoteBookSystemMenu_###_systemmenu_#######'"
        </label> </text> 
        <vseparator height-request="12"></vseparator>
        <button  use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
            tooltip-text="':${gcToolTipText}:'">
            <input file>"'/tmp/EmGr-img-button-system.svg'"</input>
            <label> "" </label><action>'0---button-system-svg'</action>  </button>
        <vseparator height-request="11"></vseparator>

        <hbox homogeneous="true"><hbox>
            <button tooltip-text="'aaa'" >
                <input file> "'/tmp/EmGr-img-lightbulb.svg'"</input><width>44</width><height>44</height>
                 <label>"''"</label> <action>'0'</action> </button>
            <button visible="1"   tooltip-text="''" >
                <label> "  '!===-MGR-12-Tool-Tip-===!'  " </label> 
                <action function="'launch'">msg_DC_M12_window</action>
                <action>'-MGR-12-Tool-Tip'</action> </button>
            <button tooltip-text="'xxx'" >
                <input file> "'/tmp/EmGr-img-lightbulb.svg'"</input><width>44</width><height>44</height>
                 <label>"''"</label> <action>'0'</action> </button>
        </hbox></hbox>
    
        <hseparator width-request="1"></hseparator> 
        <vseparator height-request="15"></vseparator>
            <text visible="1"   editable="false" use-markup="true" xalign=".5"> 
        <label> "<span  color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"'>'"ooo-"'</span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"  ${gcMgrVerTitle} "'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"'>'-ooo'</span>" 
            </label> </text>
          <hseparator width-request="22"></hseparator>
        <vseparator height-request="11"></vseparator>
        
        <hbox homogeneous="'${gcSysChkTtlFlg}'" >
        <hbox visible="1">
          <hseparator  visible="1" height-request="3" width-request="55"></hseparator>
            <text visible="1" use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorgrn'"'> <b>'${gcMgrDistroSymbol}:'</b> </span>" </label> </text>
            <text visible="0" xalign=".5"> <label> ':' </label></text>
            <text use-markup="true" xalign=".5">
                <label> "<span color='"'$lcGuiColorred'"'> <b>'${DISTRO_NAME}'</b> </span>" </label> </text>
            <text xalign=".5">  <label> ':!:' </label></text>
            <text use-markup="true" xalign=".5">
                <label>"<span color='"'$lcGuiColorblu'"'><b>':V:${gcSysDistroVersion}'</b> </span>" </label> </text>
            <text xalign=".5">  <label> ':' </label></text>
            <text  visible="1" use-markup="true" xalign=".5">
                <label>"<span color='"'$lcGuiColorgrn'"'><b>':K:${gcMGRKernVer}'</b> </span>" </label> </text>
            <text xalign=".5">  <label> ':' </label></text>
            <text visible="1" use-markup="true" width-request="42" x="NoteBook">
                <label>"<span color='"'$lcGuiColorbrn'"'><b>'${gcPupRamObjMsg0}'</b></span>"</label></text>
            <text  visible="0" use-markup="true" width-request="12" xalign=".5">
                <label> "<span color='"'$lcGuiColorbrn'"'><b>':Pex:${gcSysChkPexFlg}'</b></span>"</label></text>
        <hseparator  visible="1" height-request="1" width-request="55"></hseparator>
        </hbox>
        </hbox>
          <vseparator height-request="23"></vseparator>
           <hbox space="2" homogeneous="true">
               <hseparator height-request="3" width-request="40"></hseparator>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action> </button>
            <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>
            <button has-focus="false" height-request="13"  xalign=".5"  tooltip-text="" >
                <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                <label> "" </label><action>0</action></button>
           <hseparator height-request="3" width-request="88"></hseparator>
        </hbox>
        <vseparator height-request="23" > </vseparator>
         <hseparator width-request="1"></hseparator> 
        <text visible="0">  <label>"_Single-Click_"</label> </text> 
        <hseparator width-request="1"></hseparator> 
        <hbox homogeneous="true">
        <hbox>
            <hseparator width-request="22"></hseparator>
            <button has-focus="false" height-request="22"  xalign=".5"> 
                 <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
               <label>"''"</label><action>'0-Check'</action> </button>
           <button has-focus="false" height-request="22"  xalign=".5">   
               <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"15"</width><height>"15"</height>
                <label>"''"</label><action>'0-Apple'</action>   </button>
        <vbox>
           <hbox homogeneous="true">
            <button  visible="1"   tooltip-text="EXIT:guiMgrOneArcDts" gtk-apply="true" has-focus="false" >  
                <label> "'{{===-ONE-'" </label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMgrOneArcDts'</action>         </button>
            <button  visible="1" tooltip-text="" has-focus="true" height-request="32"> 
               <label>"'{{-One-PCB-All-}}'"</label>
                    <action function="'launch'">msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
               <action>'EXIT:guiArcOnePxbAll'</action> </button>
            <button  visible="1"   tooltip-text="EXIT:guiMgrAllArcDts" gtk-apply="true" has-focus="false" >
                <label> "'-ALL-===}}'" </label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMgrAllArcDts'</action>   </button>
           </hbox>

           <hbox homogeneous="true">
            <button visible="1"  tooltip-text="EXIT:guiPXB_ion_ReStart" has-focus="false" height-request="31"  xalign=".5" > 
                <label> "'{{-PCB-RS-}}'" </label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiPXB_ion_RS'</action>   </button>
            </hbox>
            <hbox homogeneous="true">
                <button visible="1"  tooltip-text="EXIT:guiPXB_ion_R-PowerOffS" has-focus="false" height-request="31"  xalign=".5" > 
                    <label> "'{{-PCB-RP-}}'" </label>
                        <action function="'launch'">msg_DC_Quick_window</action>
                        <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB_ion_RP'</action>   </button>
            </hbox>
        </vbox>
            <button has-focus="false" height-request="22"  xalign=".5">
               <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"15"</width><height>"15"</height>
               <label>"''"</label><action>'0-Apple'</action>   </button>
           <button has-focus="false" height-request="22"  xalign=".5">
               <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
               <label>"''"</label><action>'0-Check'</action>   </button>
            <hseparator width-request="22"></hseparator>
        </hbox>
        </hbox>
        
        <vseparator  visible="1" height-request="22" > </vseparator>
    </vbox>  
    <vbox  visible="1" homogeneous="0">
        <text visible="0"> 
            <label>"'###_2_############_NoteBook_Menu-###_NoteBookPageMenu_###_pagemenu_##############'"</label> </text> 
        <vseparator height-request="7"></vseparator>
        <button use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
            tooltip-text="':${gcToolTipText}:'" >
            <input file>"'/tmp/EmGr-img-button-menu.svg'"</input>
            <label> "" </label><action>'0---button-menu-svg'</action>  </button>
        <button visible="1" homogeneous="true" height-request="28" xalign=".5"  
            tooltip-text="" >
            <label> "'---_${gcMgrDistroSymbol}____New_Active_MENU_Will_Over_Write_Existing_menu.lst_---'" </label>
            <action>'0---Will_Over_Write_Existing_System_Menu'</action>  </button>
            <vseparator height-request="1"></vseparator>
 
        <vbox>
            <vseparator height-request="12"></vseparator>
            <hbox visible="true" homogeneous="true"><hbox>
                <button tooltip-text="''" >
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>22</width><height>22</height>
                     <label>"''"</label> <action>'0'</action> </button>
                <button visible="0" tooltip-text="''" >
                    <input file> "'/tmp/EmGr-img-lightbulb.svg'"</input><width>22</width><height>22</height>
                     <label>"''"</label> <action>'0'</action> </button>
                <hseparator width-request="62"></hseparator> 

                <button tooltip-text="'EXIT:ARB_B32B__Pex=${gcSysChkPexFlg}:'" tooltip-text="''"> 
                    <label>"'-B32B-!'"</label>
                    <input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input> <width>44</width><height>44</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_B32B'</action>  </button>

                <hseparator width-request="22"></hseparator>

                <button tooltip-text="'EXIT:ARB_B64B__Pex=${gcSysChkPexFlg}:'" tooltip-text="''"> 
                    <label>"'-B64B-!'"</label>
                    <input file>"'/tmp/EmGr-img-Check-90-bluXyel.svg'"</input> <width>64</width><height>64</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_B64B'</action>  </button>

                <hseparator width-request="62"></hseparator> 
                <button  visible="0" tooltip-text="''" >
                    <input file> "'/tmp/EmGr-img-lightbulb.svg'"</input><width>22</width><height>22</height>
                     <label>"''"</label> <action>'0'</action> </button>
                <button tooltip-text="''" >
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>22</width><height>22</height>
                     <label>"''"</label> <action>'0'</action> </button>
            </hbox></hbox>

            <vseparator height-request="11"></vseparator>

            <hbox homogeneous="true"><hbox>

                <hseparator width-request="1"></hseparator> 

                <button visible="1" tooltip-text="'Check-90-redXyel'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>33</width><height>33</height>
                        <label>"''"</label> 
                    <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>    </button>

                <hseparator width-request="12"></hseparator> 

                <button tooltip-text="'EXIT:ARB_DBW640__DebBookWorm64-v10.0.12_date:251001_:Pex=${gcSysChkPexFlg}:'" > 
                        <label>"'_DebBW-640_'" </label>
                        <input file> "'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>33</width><height>33</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_DBW640'</action>  </button>

                <hseparator width-request="4"></hseparator> 

						<hbox visible="1">
						<button tooltip-text="'EXIT:ARB_PDV640__Pup-EXTon-Devuan-64_:Pex=${gcSysChkPexFlg}:'" > 
						<label>"'_PEX-Dev64_'" </label>
							<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input>
							<width>15</width><height>15</height>
							<action function="'launch'">     msg_DC_Quick_window</action>
							<action function="'closewindow'">msg_DC_Quick_window</action>
							<action>'EXIT:ARB_PDV640'</action>  </button>
						<hseparator width-request="1"></hseparator> 
						<button tooltip-text="'EXIT:ARB_PN640__Pup-EXTon-NOBLE-64_:Pex=${gcSysChkPexFlg}:'" > 
							<label>"'_PEX-Noble-64_'" </label>
							<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input>
							<width>15</width><height>15</height>
							<action function="'launch'">     msg_DC_Quick_window</action>
							<action function="'closewindow'">msg_DC_Quick_window</action>
							<action>'EXIT:ARB_PN640'</action>  </button>
						<hseparator width-request="1"></hseparator> 
						</hbox>
						
                <button  tooltip-text="'EXIT:ARB__Trx64R-Retro_trixie_:Pex=${gcSysChkPexFlg}:'" > 
                <label>"'_PEX-Trixie-64R'"</label>
                    <input file> "'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>33</width><height>33</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_Trx64R'</action>  </button>

                <hseparator width-request="12"></hseparator> 

               <button tooltip-text="'Check-90-redXyel'" >
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> 
                    <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>     </button>

                <hseparator width-request="2"></hseparator> 

			</hbox></hbox>

            <vseparator height-request="22"></vseparator>

            <hbox visible="true" homogeneous="true"><hbox>

                <button tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label>
                    <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>

                <button tooltip-text="'EXIT:ARB_T-6'"> 
                    <label>"'T-60-'"</label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">    msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_T-6'</action>  </button>

                <button tooltip-text="'EXIT:ARB_N32N'"> 
                    <label>"'N32N-'" </label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_N32N'</action>  </button>

                <button tooltip-text="'EXIT:ARB_N64N'"> 
                    <label>"'N64N-'" </label>
                    <input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_N64N'</action>  </button>

                <button tooltip-text="'EXIT:ARB_F32F'"> 
                    <label>"'F32F_'"</label>
					<input file> "'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_F32F'</action>  </button>

                <button tooltip-text="'EXIT:ARB_F64-96F'"> 
                    <label>"'F64-96F_'"</label>
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>26</width><height>26</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_F64-96F'</action>  </button>

                <button tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> 
                    <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>

            </hbox></hbox>

            <hbox visible="true" homogeneous="true"><hbox>

                <button tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label>
                    <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>

                <button visible="1" tooltip-text="'EXIT:ARB_DBW32'"> 
                    <label>"'DBW32-'"</label>
					<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_DBW32'</action>  </button>

                <button tooltip-text="'EXIT:ARB_PDV640__Pup-EXTon-Devuan-64_:Pex=${gcSysChkPexFlg}:'" > 
                    <label>"'_P-Dev64_'" </label>
					<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_PDV640'</action>  </button>

                <button tooltip-text="'EXIT:ARB_PN640__Pup-EXTon-NOBLE-64_:Pex=${gcSysChkPexFlg}:'" > 
					<label>"'_P-Noble-64_'" </label>
					<input file> "'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_PN640'</action>  </button>

                <button tooltip-text="'check-Big_90'" >
                    <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> 
                    <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
                    <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>

            </hbox></hbox>

            <vseparator height-request="22"></vseparator>

            <hbox homogeneous="true"><hbox>

            <button visible="1" tooltip-text="'check-90-bluXred'" >
                <input file>"'/tmp/EmGr-img-Check-90-bluXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> 
               <action function="'launch'">     msg_DC_Check_90_Big_bluXred_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_bluXred_window</action>    </button>

            <hseparator width-request="2"></hseparator> 

            <button tooltip-text="'EXIT:ARB_KLM1__[Boot]_+Jump_to_KLM1_'" > 
                <label>"'_KLM1_'" </label>
                <input file> "'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>25</width><height>25</height>
                <action function="'launch'">     msg_DC_Quick_window</action>
                <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:ARB_KLM1'</action>   </button> 

            <hseparator width-request="2"></hseparator> 

                <button tooltip-text="'EXIT:ARB_ORG__+ReStart'"> 
                    <label>"'genORG-'" </label>
                    <input file stock="gtk-no"></input><width>7</width><height>7</height>   
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:ARB_ORG'</action>  </button>

            <hseparator width-request="2"></hseparator> 

            <button tooltip-text="'EXIT:ARB_KLM2__[Boot]_+Jump_to_KLM2_'" > 
                <label>"'_KLM2_'" </label>
                <input file> "'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>25</width><height>25</height>
                <action function="'launch'">     msg_DC_Quick_window</action>
                <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:ARB_KLM2'</action>  </button>

            <hseparator width-request="2"></hseparator> 

            <button visible="1" tooltip-text="'check-90-bluXred'" >
                <input file>"'/tmp/EmGr-img-Check-90-bluXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label>
               <action function="'launch'">     msg_DC_Check_90_Big_bluXred_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_bluXred_window</action>    </button>
            </hbox></hbox>

            <vseparator height-request="2"></vseparator>

            <hbox homogeneous="true"><hbox>
            <button   visible="1"   tooltip-text="'EXIT:guiMCI' < MCI > Instructional 
                Embedded Graphics Sample Project  
                * Requires /root/my-applications/rc.z_CTB-SLX.sh" has-focus="false" height-request="7"> 
                <label> "MCI note:" </label> 
                       <action>'top-guiMCI'</action>       </button>
                <button  visible="1"  gtk-apply="true" has-focus="false" > 
                    <label> " { 'MCI_Project_Instructional-Ext' }  " </label>
                <input file> "'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>11</width><height>11</height>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiMCI'</action>      </button>
            </hbox></hbox>
            <vseparator height-request="2"></vseparator>
        </vbox>
    </vbox>
    <vbox>
        <text visible="false"> 
            <label>"'###_3_##############_NoteBook_BackUp_###_pagebackup_########################'"</label> </text> 
            <vseparator height-request="3"></vseparator>
            <button visible="0" use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
                tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-button-back.svg'"</input>
                <label> "" </label><action>'0---button-back'</action>  </button>
            <vseparator height-request="1"></vseparator>
            <vseparator height-request="1"></vseparator> 
        <button use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
            tooltip-text="':${gcToolTipText}:'" >
            <input file>"'/tmp/EmGr-img-button-back.svg'"</input>
            <label> "" </label><action>'0---button-back-svg'</action>  </button>
        <hseparator width-request="12"></hseparator> 
            <button visible="0"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>15</width><height>15</height>
                <label> "  '===!-_BackUp-Tool-Tip_-!==='  " </label> 
                <action function="'launch'">msg_DC_MainBackUpToolTip_window</action>
                <action>'0-Main_BackUpToolTip'</action> </button>
            <vseparator height-request="33"></vseparator> 
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="1"></hseparator> 
                <button visible="1"  tooltip-text="EXIT:guiPXB-RS"  
                    has-focus="true"  >
                    <input file> "'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>33</width><height>33</height>
                    <label>"'_PXB_RS_'"</label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RS'</action>   </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="'${gcSysChkBtnFlg}'"  tooltip-text="EXIT:guiPXB-RB"  
                    has-focus="true"  >
                    <input file> "'/tmp/EmGr-img-hash-red.xpm'"</input><width>33</width><height>33</height>
                    <label>"'_PXB_RB_'"</label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RB'</action>   </button>
                <hseparator width-request="1"></hseparator> 
                <button visible="'${gcSysChkBtnFlg}'"   tooltip-text="EXIT:guiPXB-RQ"  
                    has-focus="true" >
                    <input file> "'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>33</width><height>33</height>
                    <label>"'_PXB_PO_'"</label>
                    <action function="'launch'">     msg_DC_Quick_window</action>
                    <action function="'closewindow'">msg_DC_Quick_window</action>
                    <action>'EXIT:guiPXB-RQ'</action>   </button>
              <hseparator width-request="1"></hseparator> 
            </hbox></hbox>
            <vseparator height-request="33"></vseparator> 
            <hbox homogeneous="true"><hbox>

            <button visible="'${gcMgrButSLX}'" tooltip-text="" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "'-SLX-Tool-Tip-'" </label> 
                <action function="'launch'">msg_DC_SLX_window</action>
                <action>'0-SLX-Tool-Tip'</action> </button>

            <button visible="'${gcMgrButSLX}'"   tooltip-text="Backup_with_Scan_for_ALL_HardDrives
              Requires /root/my-applications/rc.z_CTB-SLX.sh " >
                   <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label>"'_CT-B_SLX_'"</label>
                   <action function="'launch'">     msg_DC_Quick_window</action>
                   <action function="'closewindow'">msg_DC_Quick_window</action>
                   <action>'EXIT:guiCTBSLX'</action> </button>

            </hbox></hbox>
            
            <vseparator  visible="1" height-request="33" > </vseparator>
            <hbox visible="1" homogeneous="false">
            <hbox homogeneous="false">
                <hseparator width-request="110"></hseparator>
                    <checkbox  active="'$CbxB1'">  <label>'BakOne'</label>   </checkbox>
                    <checkbox  active="'$CbxPxb'">  <label>'{PXB}'</label>   </checkbox>
                    <checkbox  active="'$CbxB2'">  <label>'BakAll'</label>   </checkbox>
                    <checkbox  active="'$CbxRs'">  <label>'ReStart'</label>  </checkbox>
                    <checkbox  active="'$CbxRb'">  <label>'ReBoot'</label>   </checkbox>  
                    <checkbox  active="'$CbxRq'">  <label>'ReQuit'</label>   </checkbox>
                <hseparator width-request="60"></hseparator>
            </hbox>
                <hseparator width-request="170"></hseparator>
            </hbox>
            <vseparator  visible="1" height-request="1" > </vseparator>
            <hbox homogeneous="true">
                <button visible="1" tooltip-text="EXIT:CbxApply_ComboBoxes_Developmental_" >
                   <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>"15"</width><height>"15"</height>
                   <label> '_Execute-Combo-Boxes'  </label>
                   <action>'0-EXIT:CbxApply'</action>
                    </button>
            </hbox>
            <vseparator  visible="1" height-request="33" > </vseparator>
            <button   visible="0"   tooltip-text="''"  width-request="55"  height-request="11"> <label> "" </label> 
                        <input file stock="gtk-ok"></input><width>11</width><height>11</height>   
                       <action>'0-top-C3C'</action>       </button>
            <hbox homogeneous="true">
                <button visible="1"   tooltip-text="''" >
                <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>30</width><height>30</height>
                <label> "  '===!-C3C-Tool-Tip-!==='  " </label> 
                <action function="'launch'">msg_DC_C3C_window</action>
                <action>'0-C3C-Tool-Tip'</action> </button>
            </hbox>
            <hbox homogeneous="true"><hbox>
                <button visible="1" tooltip-text="EXIT:C3CS2F:ReStart_always" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReStart'"  </label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                   <action>'EXIT:C3CS2FRS'</action> </button>
                <button visible="'${gcSysChkBtnFlg}'"  tooltip-text="EXIT:C3CS2F:ReBoot" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReBoot'"  </label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                   <action>'EXIT:C3CS2FRB'</action> </button>
                <button visible="'${gcSysChkBtnFlg}'" tooltip-text="EXIT:C3CS2F:ReQuit" >
                   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>"25"</width><height>"25"</height>
                   <label> "'_Clear_C3C+S2F+ReQuit'"  </label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                   <action>'EXIT:C3CS2FRQ'</action> </button>
            </hbox></hbox>
            <vseparator height-request="3"></vseparator> 
   
    </vbox>
    <vbox>
        <text visible="false"> 
            <label>"'###_4_##############_NoteBook_Dox_###_pagedox_#########################'"</label> </text> 
        <vseparator height-request="22"></vseparator>
        <button use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
            tooltip-text="':${gcToolTipText}:'">
            <input file>"'/tmp/EmGr-img-button-dox.svg'"</input>
            <label> "" </label><action>'0---button-dox-svg'</action>  </button>
        <vseparator height-request="4"></vseparator>
        <text visible="0">   <label>"'###_Single-Click_###'"</label> </text> 
        <vseparator height-request="1"></vseparator>
            <hbox homogeneous="true">
                <hseparator width-request="3"></hseparator>
                <button visible="1" tooltip-text="'===-EXIT:guiDumpHLP-==='  <HELP dump>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>45</width><height>35</height>
                    <label>"'HELP_'" </label>
                    <action>'Sbr_Dump_HLP'</action> </button>
                <hseparator width-request="3"></hseparator>
                <button visible="1" tooltip-text="'EXIT:guiDumpAuthor'  < Display Devloper SysProc >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Author_'" </label>
                    <action>'EXIT:guiDumpAuthor'</action> </button>
                <hseparator width-request="3"></hseparator>
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpFAQ-==='  <FAQ dump>" has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>45</width><height>35</height>
                    <label> "'Faq_'" </label>
                    <action>'Sbr_Dump_FAQ'</action> </button>
                <hseparator width-request="3"></hseparator>
            </hbox>
        <vseparator height-request="1"></vseparator>
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="10"></hseparator>
               <button visible="1" tooltip-text="'EXIT:guiDumpSrc'  < Display Devloper Source >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>37</width><height>37</height>
                    <label>"'Dump_Source_Code_' "</label>
                    <action>'EXIT:guiDumpSrc'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'EXIT:guiDumpSys'  < Display Devloper SysProc >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "  'Dump_Sys_'  " </label>
                    <action>'EXIT:guiDumpSys'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'EXIT:guiDumpImg'  < Display Devloper Source >"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>37</width><height>37</height>
                    <label>"'Dump_Source_Image_' "</label>
                    <action>'EXIT:guiDumpImg'</action> </button>
                <hseparator width-request="10"></hseparator>
            </hbox></hbox>
            <vseparator height-request="1"></vseparator>
            <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height><action>"P3-spacer"</action> </button>
            <vseparator height-request="3" > </vseparator>
            <vbox visible="true">
            <hbox homogeneous="true"><hbox>
            <hseparator width-request="10"></hseparator>
            <button visible="1"  tooltip-text="'===-EXIT:guiDumpDesign-==='  <Design_dump>"  has-focus="false">
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>45</width><height>35</height>
                <label> "'Dump_Design' " </label>
                <action>'EXIT:guiDumpDesign'</action> </button>
            <hseparator width-request="10"></hseparator>
            <button visible="1" tooltip-text="'===-EXIT:guiDumpUPL-===' Legal_Dump  < Phil PeaBee >"  has-focus="false">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                <label> "'Dump_UPL' " </label>
                <action>'EXIT:guiDumpUPL'</action>   </button>
            <hseparator width-request="7"></hseparator> 
            <button visible="1" tooltip-text="'===-EXIT:guiDumpImt-==='  < Puppy_Immutable_Dump: Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Immutable'" </label>
                    <action>'EXIT:guiDumpImt'</action>   </button>
            <hseparator width-request="10"></hseparator>
            </hbox></hbox>
            </vbox>
            <vbox>
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="10"></hseparator>
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpTarGzN-==='  <Note_BASHN>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'TarGz_Notes' " </label>
                    <action>'EXIT:guiDumpTarGzN'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpPrgN-==='  <Note_BASHN>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Program_Notes' " </label>
                    <action>'EXIT:guiDumpPrgN'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1"  tooltip-text="'===-EXIT:guiDumpBashQ-==='  <Note_BASHQ>"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'BASH_Quirks' " </label>
                    <action>'EXIT:guiDumpBashQ'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'===-EXIT:guiDumpPUP-==='  < PupState >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_PUP' " </label>
                    <action>'EXIT:guiDumpPUP'</action>   </button>
                <hseparator width-request="10"></hseparator>
            </hbox></hbox>
            </vbox>
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'===-EXIT:guiDumpOOP-==='  < PupState >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_OOP' " </label>
                    <action>'EXIT:guiDumpOOP'</action>   </button>
                <hseparator width-request="10"></hseparator>
                <button  tooltip-text="'=-EXIT:guiDumpPath='"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label>"'Dump_Path' "</label>	
                    <action>'EXIT:guiDumpPath'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'===-EXIT:guiDumpDeclareSys-==='"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Declare_Sys' " </label>
                    <action>'EXIT:guiDumpDeclareSys'</action>   </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'===-EXIT:guiDumpDeclareVar-==='"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Declare_Var' " </label>
                    <action>'EXIT:guiDumpDeclareVar'</action>   </button>
                <hseparator width-request="10"></hseparator>
            </hbox></hbox>    
            <hbox homogeneous="true"><hbox>
                <hseparator width-request="10"></hseparator>
                <button visible="1"    tooltip-text="'===-EXIT:guiMandelbrot-==='   "   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                    <label>"'Mandelbrot' "</label>  
                    <action>'EXIT:guiMandelbrot'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button    tooltip-text="'===-EXIT:guiBase64__Sbr_Base64-==='"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_Src-Base64' " </label>    
                    <action>'EXIT:guiSrcBase64'</action> </button>
                <hseparator visible="0" width-request="10"></hseparator>
                <button visible="0" tooltip-text="'===-EXIT:guiDumpGXM-==='  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                    <label> "'Dump_GXM' " </label>
                    <action>'EXIT:guiDumpGXM'</action>   </button>
                <hseparator width-request="10"></hseparator>
                <button  tooltip-text="'=-EXIT:_DISTRO_guiBackGround-=':only-launch, only PageDOX, 250"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
                    <label>"'Distro-List' "</label>	
                    <action>'EXIT:gui_Dxstro_Window'</action> </button>
                <hseparator width-request="10"></hseparator>
                <button visible="1" tooltip-text="'=-EXIT:guiAudio_for_StartUpSound+LogInDts-='"   has-focus="false">
                    <input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>22</width><height>22</height>
<label>
"'Start'
'Audio'
'Sound_' "
</label>    
                    <action>'EXIT:guiAudio'</action> 
                    </button>
                </hbox></hbox>
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="10"></hseparator>
            <button>  <label>" 'https://github.com' "</label>
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
                <action function="closewindow">msg_DC_LxgenDox_window_0</action>    </button>
            <hseparator width-request="10"></hseparator>
            <button visible="0">  <label>" 'https://github.com' "</label>
                <action function="closewindow">msg_DC_LxgenDox_window_0</action>    </button>
            <hseparator width-request="10"></hseparator>
        </hbox></hbox>
        <button><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>5</height>
            <action>"'P3-spacer'"</action> </button>
        <hseparator width-request="20"></hseparator>
    </vbox>
    <vbox> 
        <text visible="false"> 
            <label>"'###_5_##############_NoteBook_Util_###_pageutil_#########################'"</label> </text> 
        <vseparator height-request="1"></vseparator>
        <button use-markup="true" has-focus="false" height-request="55" width-request="50" xalign=".5"  
            tooltip-text="':${gcToolTipText}:'">
            <input file>"'/tmp/EmGr-img-button-util.svg'"</input>
            <label> "" </label><action>'0---button-util-svg'</action>  </button>
        <text visible="0">   <label>"'###_Single-Click_###'"</label> </text> 
        <vseparator height-request="1"></vseparator>
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="12"></hseparator>


            <button visible="1" tooltip-text="">
                <input file>"'/tmp/EmGr-img-lightbulb.svg'"</input><width>33</width><height>33</height>   
                <action>'0'</action>  
                </button>

            <button visible="1" tooltip-text="">
                <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>35</width><height>35</height>   
                <label>'-S2F-1-'</label>
                    <action function="'launch'">msg_DC_Quick_windowS</action><action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>'EXIT:gui_S2F1'</action>  
                </button>
            <hseparator width-request="12"></hseparator>
            <button visible="1" tooltip-text="gparted">
                <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>35</width><height>35</height>   
                <label>'{Gparted}'</label>
                <action function="'launch'">msg_DC_Quick_window</action>
                <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'gparted'</action>  </button>
            <hseparator width-request="12"></hseparator>
            <button visible="0" tooltip-text="calendar">
                <input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>35</width><height>35</height>   
                <label>'{Calendar}'</label>
                <action function="'launch'">msg_DC_Quick_window</action>
                <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'Sbr_Sys_Calendar'</action>  </button>
            <hseparator visible="0" width-request="12"></hseparator>
            <button    tooltip-text="">
                <input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>35</width><height>35</height>   
                <label>'-S2F-3-'</label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>'EXIT:gui_S2F3'</action>  </button>
            <hseparator width-request="12"></hseparator>

            <hseparator width-request="1"></hseparator>

            <button  visible="1"   tooltip-text="0_fall-thru in Xterm">
                <label>"'T0'"</label>
                <action>'EXIT:"T0"'</action>  </button>

            <button  visible="1"   tooltip-text="'A'">
                <label>"'TA'"</label>
                <action>'EXIT:"TA"'</action>  </button>

            <button  visible="1"   tooltip-text="'B'">
                <label>"'TB'"</label>
                <action>'EXIT:"TB"'</action>  </button>

            <button  visible="1"   tooltip-text="'C'">
                <label>"'TC'"</label>
                <action>'EXIT:"TC"'</action>  </button>

            <button  visible="1"   tooltip-text="'D'">
                <label>"'TD'"</label>
                <action>'EXIT:"TD"'</action>  </button>

            <button  visible="1"   tooltip-text="'X'">
                <label>"'TX'"</label>
                <action>'EXIT:"TX"'</action>  </button>

            <hseparator   width-request="12"></hseparator>
            <button    tooltip-text="_Halt_Caution ! ! !
              EXTon Distros can lock_PowerUp-Switch_...">
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>35</width><height>35</height>   
                <label>'{!-HALT-!}'</label>
                <action function="'launch'">msg_DC_Quick_window</action>
                <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'halt'</action>  </button>
            <hseparator width-request="12"></hseparator>
        </hbox></hbox>

					<hbox homogeneous="true"  visible="0" > <hbox  visible="0"  >
					<button   visible="1"   tooltip-text="'EXIT:guiMCI' < MCI > Instructional 
						Embedded Graphics Sample Project  
						* Requires /root/my-applications/rc.z_CTB-SLX.sh" has-focus="false" height-request="11"> 
						<label> "MCI note:" </label> 
							   <action>'top-guiMCI'</action>       </button>
						<button  visible="1"  gtk-apply="true" has-focus="false" > 
							<label> " { 'MCI_Project_Instructional-Ext' }  " </label>
						<input file> "'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>25</width><height>25</height>
							<action function="'launch'">     msg_DC_Quick_window</action>
							<action function="'closewindow'">msg_DC_Quick_window</action>
							<action>'EXIT:guiMCI'</action>      </button>
					</hbox></hbox>

        <vseparator visible="1" height-request="3" > </vseparator>
        
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="12"></hseparator>
            <button visible="1">  <label>" '/Edit' "</label>
                <action>0-/initrd/mnt/dev_save/MY_/usr-share/My_Dev_</action>    </button>
                
            <hseparator width-request="12"></hseparator>
            <button visible="1"  tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-ROX-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>rox '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-pcman-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>pcmanfm '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-spacefm-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>spacefm '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_'</action></button>
            <hseparator width-request="12"></hseparator>
		</hbox></hbox>
        
        <hbox homogeneous="true"><hbox>
            <button visible="1">  <label>" '/SDA' "</label>
                <action>0-/initrd/mnt/dev_save/MY_/usr-share/My_Dev_</action>    </button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"  tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-ROX-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>rox '/initrd/mnt/dev_save/'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-pcman-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>pcmanfm '/initrd/mnt/dev_save/'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-spacefm-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>spacefm '/initrd/mnt/dev_save/'</action></button>
            <hseparator width-request="12"></hseparator>
		</hbox></hbox>
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="12"></hseparator>
            <button visible="1">  <label>" '/Root' "</label>
                <action>0-/Root</action>    </button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"    tooltip-text="" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-ROX-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>rox '/root'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/root" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-pcman-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>pcmanfm '/root'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/root" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-spacefm-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>spacefm '/root'</action></button>
            <hseparator width-request="12"></hseparator>
 		</hbox></hbox>
 
        <hbox homogeneous="true"><hbox>
            <hseparator width-request="12"></hseparator>
            <button visible="1">  <label>"  '/'   "</label>
                <action>0-/</action>    </button>
            <hseparator width-request="12"></hseparator>
            <button visible="1" tooltip-text="" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-ROX-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>rox '/'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/root" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-pcman-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>pcmanfm '/'</action></button>
            <hseparator width-request="12"></hseparator>
            <button visible="1"   tooltip-text="/root" >
                <input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>12</width>  <height>12</height>
                <label> "'{-spacefm-}'" </label>
                <action function="'launch'">msg_DC_Quick_windowS</action>
                <action function="'closewindow'">msg_DC_Quick_windowS</action>
                <action>spacefm '/'</action></button>
            <hseparator width-request="12"></hseparator>
 		</hbox></hbox>
        <vseparator visible="1" height-request="3" > </vseparator>
                     
        <vseparator  visible="1" height-request="11" > </vseparator>
        <button visible="0" label="" has-focus="false" height-request="11"> 
            <action>'top-image-lib'</action> </button>
        <hbox homogeneous="true"> <hbox>
            <hseparator width-request="23" > </hseparator>
            <button label="'-Image-Library-'" visible="1" height-request="1"> <action>lxAction:spacer</action> </button>
            <hseparator width-request="23" > </hseparator>
            <button label="'-QuitExit-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'Quit-Red'" >   <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label> <action>"'apple:0'"</action> </button>
            <button     tooltip-text="'Quit-grnnnn'" ><input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:1'"</action> </button>
            <button     tooltip-text="'Quit-yelnnn'" ><input file>"'/tmp/EmGr-img-quit-yelnnn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:2'"</action> </button>
            <hseparator width-request="27" > </hseparator>
            <button label="'-Apples-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:3'"</action> </button>
            <button     tooltip-text="'apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:4'"</action> </button>
            <button     tooltip-text="'apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:5'"</action> </button>
            <button     tooltip-text="'apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'apple:6'"</action> </button>
            <hseparator width-request="23" > </hseparator>
        </hbox> </hbox>
        <hbox homogeneous="true"> <hbox>
            <hseparator width-request="23" > </hseparator>
            <button label="'-Hash-'" has-focus="false" height-request="5"> <action>"'Hash:0'"</action> </button>
            <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:1'"</action> </button>
            <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:2'"</action> </button>
            <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>25</width><height>25</height>
                <label> "''" </label>
                <action>"'Hash:3'"</action> </button>
            <hseparator width-request="67" > </hseparator>
            <button label="'-Jugs-'" has-focus="false" height-request="25"> <action>lxAction:spacer</action> </button>
            <button     tooltip-text="'jug-blu0yel'" >   <input file>"'/tmp/EmGr-img-jug-blu0yel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label> <action>"'jug:1'"</action> </button>
            <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:2'"</action> </button>
            <button     tooltip-text="'jug-redxyel'" >   <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:3'"</action> </button>
            <button     tooltip-text="'jug-redxgrn'" >   <input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:4'"</action> </button>
            <button     tooltip-text="'jug-grnxred'" >   <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:5'"</action> </button>
            <button     tooltip-text="'jug-yelxred'" >   <input file>"'/tmp/EmGr-img-jug-yelxred.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:6'"</action> </button>
            <button     tooltip-text="'jug-redxblu'" >   <input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>25</width><height>25</height>
                <label> "''" </label><action>"'jug:7'"</action> </button>
            <hseparator width-request="23" > </hseparator>
        </hbox> </hbox>
        <hbox visible="1" homogeneous="true"> <hbox>
            <hseparator width-request="23" > </hseparator>
            <button label="'-Check-90-'" has-focus="false" height-request="15"> <action>"'Check:90:0'"</action> </button>
            <button visible="1" tooltip-text="'5.check-90-redXyel'" ><input file>"'/tmp/EmGr-img-Check-90-redXyel.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-redXyel'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_redXyel_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_redXyel_window</action>    </button>
            <button visible="1" tooltip-text="'1.check-90-oraXblu'" ><input file>"'/tmp/EmGr-img-Check-90-oraXblu.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-oraXblu'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_oraXblu_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_oraXblu_window</action>    </button>
            <button visible="1" tooltip-text="'2.check-90-bluXora'" ><input file>"'/tmp/EmGr-img-Check-90-bluXora.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-bluXora'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_bluXora_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_bluXora_window</action>    </button>
            <button visible="1" tooltip-text="'3.check-90-redXblu'" ><input file>"'/tmp/EmGr-img-Check-90-redXblu.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-redXblu_'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_redXblu_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_redXblu_window</action>    </button>
            <button visible="1" tooltip-text="'4.check-90-grnXred'" ><input file>"'/tmp/EmGr-img-Check-90-grnXred.svg'"</input><width>33</width><height>33</height>
                    <label>"''"</label> <action>'0-select-Check-90-grnXred'</action> 
               <action function="'launch'">     msg_DC_Check_90_Big_grnXred_window</action>
               <action function="'closewindow'">msg_DC_Check_90_Big_grnXred_window</action>    </button>
          <hseparator width-request="13" > </hseparator>
            <button label="'-Mark-'" has-focus="false" height-request="15"> <action>'0-Check-Mark-B'</action> </button>
            <button     tooltip-text="'Check-111-redXblu'" ><input file>"'/tmp/EmGr-img-Check-111-bluXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'0-Check-B81'"</action> </button>
             <button    tooltip-text="'Check-111-redXgrn'" ><input file>"'/tmp/EmGr-img-Check-111-grnXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'0-Check-B82'"</action> </button>
            <button     tooltip-text="'Check-111redXyel'" ><input file>"'/tmp/EmGr-img-Check-111-yelXred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label> <action>"'0-Check-B83'"</action> </button>
            <hseparator width-request="13" > </hseparator>
            <button label="'-Check-'" has-focus="false" height-request="15"> <action>'0-Check-Mark-S'</action> </button>
             <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check-S13'"</action> </button>
            <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check-S14'"</action> </button>
            <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>33</width><height>33</height>
                <label> "''" </label><action>"'0-Check-S15'"</action> </button>
            <hseparator width-request="23" > </hseparator>
        </hbox> </hbox>
</vbox>
</'notebook'>
    </hbox>
    </vbox>
<text visible="false"> 
<label>"'####################_End_NoteBook_############################'"</label> </text> 
        <hseparator width-request="3"></hseparator> 
        <button  visible="0" has-focus="false" height-request="3"  xalign=".5"  tooltip-text="" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>3</width>  <height>3</height>
            <label> "" </label><action>0:bot</action></button>
	<vbox>
        <hseparator width-request="1"></hseparator> 

        <text visible="true">   <label>"'###_DOUBLE-Click_###'"</label> </text> 
        <text visible="true">   <label>" '.###_NoteBook_###.'"</label><width>7</width><height>7</height> </text> 

        <hseparator width-request="1"></hseparator> 
   	<vseparator  visible="1" height-request="1"> </vseparator>
        <hbox visible="0">   <text> <label>"'########################'"</label> </text>   </hbox>
        <hbox visible="0">   <text> <label>"'---_SIMPLE_---'"</label> </text>   </hbox>
        <vseparator  visible="1" height-request="3" > </vseparator>
	<hbox homogeneous="true"><hbox>
             <hseparator width-request="33"></hseparator>
            <button visible="${gcSysChkMnxFlg}"  tooltip-text="S.I.M.P.L.E._guiSimReStart"> 
                <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>15</width>  <height>15</height>
                <label>'_ReStart_'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReStart'</action>   </button>
    
             <hseparator width-request="33"></hseparator>
            <button  tooltip-text="'Double-Click-Program_EXIT_'" > 
                <input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>35</width>  <height>35</height>
                <label>'!_EXIT_!'</label> 
                <action function="'launch'">msg_DC_Quick_window</action>  <action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiMainQUIT'</action>    </button>
            <hseparator width-request="33"></hseparator>
            <button tooltip-text="'Enable_BASH_It_'" has-focus="false" width-request="0"  height-request="0" xalign=".5"  >
                <input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>35</width><height>35</height>   
                <label>'_Bash_It_'</label>
                <action function="'launch'">msg_DC_LxgenSystem_window_0</action> 
                <action function="'closewindow'">msg_DC_LxgenSystem_window_0</action>
                <action>'EXIT:guiSimReStart'</action> </button>
             <hseparator width-request="33"></hseparator>
            <button  visible="${gcSysChkMnxFlg}" tooltip-text="S.I.M.P.L.E.__guiSimReBoot">    
                <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>15</width>  <height>15</height>
                <label>'_ReBoot_'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimReBoot'</action> </button>
             <hseparator width-request="33"></hseparator>
            <button  visible="${gcSysChkMnxFlg}" alt="${gcSysChkMnxFlg}" tooltip-text="S.I.M.P.L.E.__guiSimReBoot">    
                <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>15</width>  <height>15</height>
                <label>'_PowerOff_'</label>
                <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>'EXIT:guiSimRePowerOff'</action> </button>
             <hseparator width-request="33"></hseparator>
	</hbox></hbox>
    </vbox>
    <vseparator  visible="1" height-request="15" > </vseparator>
    
</vbox>
       <vseparator  visible="1" height-request="37" > </vseparator>
</window>'
#!
#! ###########################################################################
#! ## bot SystemGui  ### MainGUI ### Dialog END  #############################
#! ###########################################################################
#!
lcEmGrGuiFnTrg="/tmp/EmGa-Master-GUI.txt"   # BUILD master GUI IMG.txt, for "DUMP" .
echo "${MGR_Master_MAIN_GUI_Dialog}" >> ${lcEmGrGuiFnTrg}
echo "###_end_of_Master_Main_XML_Graphical_User_Interface_Code ############ " >> ${lcEmGrGuiFnTrg}   # title for "Dump" to screen
#
eval "`gtkdialog --center -p System_GUI_Dialog`" 
#(: end: SystemGui eval ===========================================
 
#! ##  bot SystemGui ### INIT ####################################
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
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
#!   function EXIT:??????????  
#!
#! begin: regular "function"
#! Each regular "function" has a header that begins with label like this:
#!      function Sbr_??????????() {  
#!          n="0"
#!      } end 
#! end: regular "function"
#!
#!
#!
#!
#! ###########################################################
#! ###########################################################
#! ### BEGIN IF EXIT Fall-Thru ###############################
#!
#! Fall-Thru Method  ===> Local Fall Thru IF/FI 
#! redirects to Sbr_routines
#!
#! ###########################################################
#! ###########################################################
#! ###########################################################
#!
#(: ================================================================
#(: fx IF EXIT:guiCTASLX   # ACTIVE
#(: called by: 
#(: param:
#(: purpose: Cold Tar Backup Auto version
#(: calls: 
#(: method:  Scan List of HD 
#(: sends:
#(: rationale:
#(: note :  
#! ################################################################
if [ "$EXIT" = "guiCTASLX" ] ; then   # NOT ACTIVE 
    n=0
    #!
    Sbr_Splash_It ".
    .---!!! calling  CTA SLX_!!!---
    ." "yellow" "purple" "3"       #! -D---
    lcFnTrg="/root/my-applications/rc.z_CTA-SLX.sh"
    if [ -f "${lcFnTrg}" ] ; then 
        /root/my-applications/rc.z_CTA-SLX.sh
    else
    Sbr_Splash_It ".
    .---!!! File Not Found: /root/my-applications/rc.z_CTA-SLX.sh_!!!---
    ." "yellow" "red" "3"       #! -D---
    fi    
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run cleanly.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end guiCTASLX 
#!
#(: ================================================================
#(: fx IF EXIT:guiCTBSLX   # ACTIVE
#(: called by: 
#(: param:
#(: purpose: Cold Tar Backup Basic version
#(: calls: 
#(: method:  Scan List of HD 
#(: sends:
#(: rationale:
#(: note :  #! Page BackUp <Button "Ctb-SLX" declared/assigned 
#(:     to control Backup file  <button> "rc.z_CTB_SLX"  
#! ################################################################
if [ "$EXIT" = "guiCTBSLX" ] ; then   # ACTIVE NoteBook Required File
    n=0
    #!
    lcFnTrg=${gcMgrButslxBFn}    #! "/root/my-applications/rc.z_CTB-SLX.sh"
    Sbr_Splash_It ".
    .---!!! calling  CTB SLX_!!! BackUp ACTIVE --- 
    . ${lcFnTrg} 
    . external  program 
    .                 " "yellow" "purple" "3"       #! -D---
    #! if exist FN done at top of SRC and <button is controlled on screen.  
    #! if [ -f "${gcMgrButslxBFn}" ] ; then 
        ${gcMgrButslxBFn}
        #! /root/my-applications/rc.z_CTB-SLX.sh
    #! else
    #! Sbr_Splash_It ".
    #! .---!!! File Not Installed: ${${gcMgrButslxBFn}}_!!!---
    #! ." "yellow" "red" "3"       #! -D---
    #! fi    
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end guiCTBSLX 
#!
#(:
#(: ================================================================
#(: fx IF EXIT:gui_S2F1   # ACTIVE
#(: called by: 
#(: param:
#(: purpose: Save 2 File 
#(: calls: 
#(: method:
#(: sends:
#(: rationale:
#(: note :  
#! ################################################################
if [ "$EXIT" = "gui_S2F1" ] ; then   # ACTIVE 
    n=0
    #!
   #!  Sbr_Splash_It ".
   #!  .---!!! calling  Sbr_PXB + ReStart  !!!---
   #!  ." "yellow" "purple" "2"       #! -D---
    #!
    Sbr_S2F1
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end "guiPXB_ion_RS" 
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:gui_S2F3   # ACTIVE
#(: called by: 
#(: param:
#(: purpose: Save 2 File 
#(: calls: 
#(: method:
#(: sends:
#(: rationale:
#(: note :  
#! ################################################################
if [ "$EXIT" = "gui_S2F3" ] ; then   # ACTIVE 
    n=0
    #!
    #! Sbr_Splash_It ".
    #! .---!!! calling  Sbr_S2F3 + ReStart  !!!---." "yellow" "purple" "2"       #! -D---
    #!
    Sbr_S2F3
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end 
#(:
#(: ================================================================
#(: fx IF EXIT:Check-Box   # Active   Check-Box "CBX"  # External calls
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
### EXIT="CBXAPPLY+" triggers running all "checked" selections .
###
#!
#(:
#(: ================================================================
#(: fx IF EXIT:C3CS2FRS   fx EXIT:C3CS2FRB   fx EXIT:C3CS2FRQ      # Active   
#(: called by: page BackUp
#(: param:
#(: purpose:  Clear Several Large Cache data which linger and hog RAM.
#(: calls:
#(: method:
#(:     Clear 3 Cache, as many as located, 
#(:     via Fast Direct Calls
#(:     Literal Spell-Out locations
#! purpose: Clear Several Large Cache data which linger 
#!
#(: sends:
#(: rationale:
#(: note :
#(:
#!
#! ====================================================================================================
if [ $EXIT ] && \
[ "$EXIT" = "C3CS2FRS" ] \
|| [ "$EXIT" = "C3CS2FRB" ] \
|| [ "$EXIT" = "C3CS2FRQ" ] ; then     
        #!
        #! files/subdir to be C3C Cleaned Out will vary Distro-to-Distro .
        #! files/subdir to be C3C Cleaned Out will vary Browser-to-Browser .
        #!
        #! ======================================================
        Sbr_Splash_It "= begin CBXC3C =" "yellow" "blue" "3"        #! -D---
        n=0
        Sbr_Sys_KillProc   # check for KillProc flag up.
        #!
        #!  ========================================
        lcMsgStr="=== C3C" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
        n=0
        #! 
        #!=== Literal rm -fr  $lcFileSrc for each target ===============
        ### Cache ### FireFox 
        lcFileSrc="/root/.cache/mozilla/firefox/"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It ".cache = rm -fr  $lcFileSrc" "yellow" "green" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        ### Cache ### FireFox 
        lcFileSrc="/root/.cache/mozilla/firefox"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It ".cache = rm -fr  $lcFileSrc" "yellow" "green" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        ### Cache ### Mozilla 
        lcFileSrc="/root/.cache/mozilla"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It ".cache = rm -fr  $lcFileSrc" "yellow" "green" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### Cache ### LIGHT
        lcFileSrc="/root/.light/light/Light.default"
        lcFileSrc="/root/.cache/light/"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It ".cache = rm -fr  $lcFileSrc" "yellow" "green" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### Cache ### Moonchild Productions   Pale Moon     ## must insert "?" 
        lcFileSrc="/root/.cache/moonchild?productions/pale?moon/"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It ".cache = rm -fr  $lcFileSrc" "yellow" "green" "2"    #! -D---
        sleep .1
        rm -fr  ${lcFileSrc}
        #!
        #!==============================================
        ### Cache ###
        lcFileSrc="/root/.cache/event-sound/*"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### Cache ###
        lcFileSrc="/root/.cache/mesa_shader_cache/*"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### Cache ###
        lcFileSrc="/root/.cache/event-sound-cache*"
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
        #!==============================================
        ### CUPS ###
        ###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/cache/cups".
        lcFileSrc="/var/cache/cups/*"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### CUPS ###
        ###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp/*".
        lcFileSrc="/var/spool/cups/tmp/*"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #!==============================================
        ### CUPS ###
        ###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/*".
        lcFileSrc="/var/spool/cups/*"
        echo "===> execute: rm -fr  $lcFileSrc"
        Sbr_Splash_It "= rm -fr  $lcFileSrc" "orange" "purple" "2"    #! -D---
        sleep .1
        rm -fr  $lcFileSrc
        #!
        #! ==== DONE ===============================
        Sbr_Splash_It "=== Save to Flash =============" "yellow" "blue" "3"       #! -D---
        Sbr_Sys_SMP  #! Save2Flash  #! Sbr_Sys_SMP  
        Sbr_Splash_It "====== DONE C3C ======" "yellow" "blue" "3"       #! -D---
        #! ===================================
        #!
    #!
    if [ "$EXIT" = "C3CS2FRS" ]  ; then  #! ReStart
           Sbr_Cbx_ReStart 1     #! Sbr_CBX_ReStart DONE === C3C #! 251010-0644, gae
    fi
    #!
    if [ "$EXIT" = "C3CS2FRB" ]  ; then  #! ReBoot
           Sbr_Cbx_ReBoot 1  	#! Sbr_CBX_ReBoot DONE === C3C #! 251010-0644, gae
    fi
    #!
    if [ "$EXIT" = "C3CS2FRQ" ]   ; then  #! Quit
           Sbr_Cbx_ReQuit 1     #! Sbr_CBX_ReQUIT PowerOff DONE === C3C #! 251010-0644, gae
    fi
    #!
fi
#!
#! =======================================================
#! end: BakAll Ending Routines: "BakAll" ReStart / ReBoot 
#! =======================================================
#!
#!
#!
#! =====================================================================
#! begin: #1 Column  CBX, OneArcDts, AllArcDts , E3R, 
#! =====================================================================
                
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiPXB_ion_RS   # ACTIVE on MAIN and System Page   {{-PXB-}}
#(: called by: Page "Main" and "System" 
#(: param:
#(: purpose: Backup/Archive with DTS 
#(: calls: Pup Cold Backup  INTernal  as  "Sbr_PXB_INT"
#(: method:
#(: sends:
#(: rationale:
#(: note :  
#! ################################################################
if [ "$EXIT" = "guiPXB_ion_RS" ] ; then   # ACTIVE on NoteBook System Page
    n=0
    #!
    Sbr_Splash_It ".
    .---!!! calling  Sbr_PXB + ReStart  !!!---
    ." "yellow" "purple" "2"       #! -D---
    #!
    Sbr_PXB_INT     #! Active PupColdBackup from System Page to ReStart
    #!

    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end "guiPXB_ion_RS" 
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiPXB_ion_RP   # ACTIVE on MAIN and System Page   {{-PXB-}}
#(: called by: Page "Main" and "System" 
#(: param:
#(: purpose: Backup/Archive with DTS 
#(: calls: Pup Cold Backup  INTernal  as  "Sbr_PXB_INT"
#(: method:
#(: sends:
#(: rationale:
#(: note :  
#! ################################################################
if [ "$EXIT" = "guiPXB_ion_RP" ] ; then   # ACTIVE on NoteBook System Page
    n=0
    #!
    Sbr_Splash_It ".
    .---!!! calling  Sbr_PXB + PowerOff  !!!---
    ." "yellow" "purple" "2"       #! -D---
    #!
    Sbr_BakOneArcDts
    #!
    Sbr_PXB_INT    #! Active PupColdBackup from System Page 
    #!
    Sbr_BakAllArcDts
    #! 
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_RePowerOff 1    # display and no wait
fi # end "guiPXB_ion_RQ" 
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiArcOnePxbAll
#(: called by: Page "Main" , Page System
#(: param:
#(: purpose: Backup/Archive with DTS, only ONE "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :  Check If "EDIT" script available. 
#(:
#! #########################################################
if [ "$EXIT" = "guiArcOnePxbAll" ] ; then   # MGR One Arc Dts 
    n=0
    #!
    Sbr_BakOneArcDts
    #!
    Sbr_PXB_INT    #! Active PupColdBackup from System Page 
    #!
    Sbr_BakAllArcDts
    #!
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end [ "$EXIT" = "guiArcOnePxbAll" ]
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiMgrOneArcDts
#(: called by: Page "Main" , Page System
#(: param:
#(: purpose: Backup/Archive with DTS, only ONE "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :  Check If "EDIT" script available. 
#(:
#! #########################################################
if [ "$EXIT" = "guiMgrOneArcDts" ] ; then   # MGR One Arc Dts 
    n=0
    Sbr_BakOneArcDts
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReStart 1    # display and no wait
fi # end [ "$EXIT" = "guiMgrOneArcDts" ]
#!
#(:
#(: ================================================================
#(: fx guiMgrAllArcDts
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : todo: IF find /dir, else, mkdir /dir, touch flag file. 
#(:
#! fx EXIT:guiMgrAllArcDts  
#! #########################################################
if [ "$EXIT" = "guiMgrAllArcDts" ] ; then   # MGR All Arc Dts 
    n=0
    Sbr_Splash_It "--- gui_Mgr_All_Arc_Dts ---" "yellow" "purple" "1"       #! -D---
    Sbr_BakAllArcDts       # Quick Short BackUp version 
    Sbr_Cbx_ReStart 1 
fi # end [ "$EXIT" = "guiMgrAllArcDts" ]
#!
#!
#!
#!
#!
#! Fall-Thru Method 
#!
#!
#! #########################################################
#! begin: #1 Page DOX Misc and TEST
#! #########################################################
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiAudio
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
if [ "$EXIT" = 'guiAudio' ] ; then  # Run Audio Startup Music 
    n=0
    Sbr_Splash_It  "mpv ===guiAudio StartUp-Sound" "yellow" "purple" "1"
    #!
    #! B5B mpv
        mpv  /usr/share/audio/bark.au &
        mpv  /usr/share/audio/2barks.wav &
        sleep 3
        mpv /usr/share/audio/sys-chime.mp3 &
    #!
    #! B32B mplayer
        mplayer /usr/share/audio/bark.au &
        mplayer /usr/share/audio/2barks.wav &
        sleep 3
        mplayer /usr/share/audio/bell.wav    #!
    #!
    Sbr_Cbx_ReStart 1
    #!
fi # end: "$EXIT" = 'guiAudio'
#!
#(:
#(: ================================================================
#(: fx IF EXIT:gui-Up-MntInt 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sbr_MGR_pMount_All)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
if [ "$EXIT" = "gui-Up-MntInt" ]  ; then    # ACTIVE
    n=0
    Sbr_Sys_KillProc    # gui-Up-MntInt
    Sbr_MGR_pMount_All "1"  ### Sbr -> internal
    #! utl Mount Clear Restart
    Sbr_ClearFlagsSystem    #! so ReStart can run 
    Sbr_Cbx_ReStart 1  
fi # end: EXIT:gui-Up-MntInt (main)
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:gui-Dn-MntInt 
#(: called by: GUI button
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls: fx(Sbr_MGR_uMount_All)
#(: method: calls internal script
#(: sends:
#(: rationale:
#(: note :
#(:
#! #########################################################
if [ "$EXIT" = "gui-Dn-MntInt" ]  ; then    # ACTIVE
    n=0
    Sbr_Sys_KillProc    # gui-Dn-MntInt
    Sbr_MGR_uMount_All "1" ### Sbr -> internal
    #! utl Mount Clear Restart
    Sbr_ClearFlagsSystem    #! so ReStart can run 
    Sbr_Cbx_ReStart 1  
fi # end: EXIT:gui-Dn-MntInt (main)
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
#(:
#(: ================================================================
#(: fx IF  EXIT:guiS2F1_MI 
#(: called by: Main GUI button  "_S2F1-MI_"
#(: method: Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Internal Call for /rc.z_S2F-1.sh
#(: calls:
#(: method: calls code from /rc.z_S2F-1.sh,  copied internal
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################################
#!
#(:
#(: ================================================================
#(: fx IF  EXIT:guiS2F3_MI 
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
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiMCI   
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
if [ "$EXIT" = "guiMCI" ] ; then    # Run  M.C.I. project EXT  ACTIVE
    n=0
    Sbr_Splash_It "--- Run {RA}  MCI Sample Project  ---" "yellow" "purple" "3"       #! -D---
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    lcFnRun="/root/my-applications/rc.z_MCI.sh"
    [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1    # no wait
fi # end: EXIT:guiMCI
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ########################################################
#! === begin: pageDOX === DUMP =================== 
#! ########################################################
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpHLP
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup HELP Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ########################################################
if [ "$EXIT" = "guiDumpHLP" ] ; then   
    echo "--- HELP --- Dump_HELP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP   # MGR_Help_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpDesign
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Proc Source Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##########################################################
if [ "$EXIT" = "guiDumpDesign" ] ; then   
    echo "--- Program Design Method ---"
    n=0
    Sbr_Dump_Design   
    Sbr_Cbx_ReStart 1  
fi  # end: EXIT:guiDumpPUP
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpFAQ
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
if [ "$EXIT" = "guiDumpFAQ" ] ; then   
    echo "--- FAQ --- Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ    # MGR_Faq_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpPUP
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup Source Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##############################################################
if [ "$EXIT" = "guiDumpPUP" ] ; then   
    echo "--- Dump/Display Pup State Code ---"
    n=0
    lcMsgStr="--- guiDump---PUP_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "1"  
    Sbr_Dump_PUP    # MGR_Pup_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpOOP
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: dump/display Pup Source Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##############################################################
if [ "$EXIT" = "guiDumpOOP" ] ; then   
    echo "--- Dump/Display OOP ---"
    n=0
    lcMsgStr="--- guiDump---OOP_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "1"  
    Sbr_Dump_OOP    # MGR_Pup_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpOOP
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpSrc
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Src Code
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
if [ "$EXIT" = "guiDumpSrc" ] ; then   
    n=0
    lcMsgStr="--- guiDump---SRC_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "1"  
    Sbr_Dump_SRC   # MGR_Src_Box    ### local function name
    Sbr_Cbx_ReStart 1  # must ReStart else will drop out
fi # end: EXIT:guiDumpSRC
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpGUI
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
if [ "$EXIT" = "guiDumpGUI" ] ; then   
    n=0
    lcMsgStr="--- guiDump---GUI_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_GUI    # MGR_Src_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpImg
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
if [ "$EXIT" = "guiDumpImg" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Img_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_IMG    # MGR_Src_Box    ### local function name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpIMG
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpTarGzN
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display BASH Notes 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpTarGzN" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Tar Gz_Notes---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_TarGzN    # 
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpPrgN
#!
#!
#(: =======================================================
#(: fx IF EXIT:guiDumpDesign
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Design Method .
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpDesign" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Design_ ---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Design    
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDesign
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpPrgN
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display BASH Notes 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpPrgN" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Program_Notes---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_PrgN    # 
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpPrgN
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpBashQ
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display BASH Quirks 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpBashQ" ] ; then   
    n=0
    lcMsgStr="--- guiDump---BASH_Quirks---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_BashQ    # 
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpBASH
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpUPL
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Legal Notes and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpUPL" ] ; then   
    n=0
    lcMsgStr="--- guiDump---UPL_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_UPL    # MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpUPL
#!

#(:
#(: ================================================================
#(: fx EXIT:guiDumpImt
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Puppy Immutable 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpImt" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Immutable_---"

    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  

    Sbr_Dump_Imt   

    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpImt
#!

#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpGXM
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display gxmessage special and test var.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpGXM" ] ; then   #  Dump "gxmessage"  ACTIVE
    n=0
    lcMsgStr="--- guiDump---GXM_---"
     gxmessage -bo -c -tim 3 -fn 'bold 40' -bg '#285577' -fg '#FFF' -bu '' $'\n\n  A buttonless gxmessage  \n\n'
     lcMsgStr="=== ${gcMgrKey}==="
     gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#F85577' -fg '#5555FF' -bu '' $'\n\n  "'${lcMsgStr}'"  '
     lcMsgStr="=== PID: ${gcMgrBashPid}==="
     gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#28F577' -fg '#FFF' -bu '' $'\n\n  "'${lcMsgStr}'"  '
     lcMsgStr="=== ${LOGNAME}==="
     gxmessage -bo -c -tim 3 -fn 'bold 10' -bg '#2855F7' -fg '#FF5555' -bu '' $'\n\n  "'${lcMsgStr}'"  '
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGXM
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpAuthor
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Author Notes 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpAuthor" ] ; then   
    n=0
    lcMsgStr="--- guiDump---Author_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Author    #! bounce up to SubRoutines 
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpAuthor
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpSys
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
if [ "$EXIT" = "guiDumpSys" ] ; then   
    n=0
    lcMsgStr="--- guiDump---SYS_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Sys    #! bounce up to SubRoutines 
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSys
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpDeclareSys
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Declare System control var
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpDeclareSys" ] ; then   
    n=0
    lcMsgStr="--- guiDump---DECLARE_System ---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Declare_Sys
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDeclareSys
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpDeclareVar
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Declare 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpDeclareVar" ] ; then   
    n=0
    lcMsgStr="--- guiDump---DECLARE_Var_System ---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Declare_Var
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDeclareVar
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiDumpPath
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: display Show_in_Path 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################
if [ "$EXIT" = "guiDumpPath" ] ; then   
    n=0
    lcMsgStr="--- guiDump---PATH_---"
    Sbr_Splash_It ">.>.> ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dump_Path
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpPath
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:gui_Dxstro_window
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
if [ "$EXIT" = "gui_Dxstro_Window" ] ; then   #  Dump DistroList  ACTIVE
    n=0
    lcMsgStr="--- gui_Dxstro_Window_---"
    Sbr_Splash_It "=== ${lcMsgStr}" "green" "yellow" "2"  
    Sbr_Dxstro_Window
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDxstro_window
#!
#!
#! 
#! ########################################################
#! === end: pageDOX === DUMP =================== 
#! ########################################################
#!
#!
#!
#! ###########################################################
#! begin: Special
#! ###########################################################
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiSrcBase64
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################
if [ "$EXIT" = 'guiSrcBase64' ] ; then n=0  ;
    n=0
    Sbr_Sys_KillProc  # Base64 , ReStart
    Sbr_Dump_SRC_Base64
    Sbr_Cbx_ReStart 1   ### display
fi # end: "$EXIT" = 'guiSrcBase64'
#(!
#(:
#(: ================================================================
#(: fx IF EXIT:guiMandelbrot
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
if [ "$EXIT" = 'guiMandelbrot' ] ; then n=0  ;
    n=0
    Sbr_Sys_KillProc
    Sbr_Utl_Mandelbrot  # build text Graphic, very slow build, in Xterm only. 
    Sbr_Cbx_ReStart 1 
fi # end: "$EXIT" = 'guiMandelbrot'
#!
#!
#!
#! #######################################################################
#! end: Special 
#! #######################################################################
#!
#!
#!
#!
#(:
#(: ================================================================
#(: fx EXIT:guiCTX  # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : Group of CTX buttons on Page Utility Page3
#(:    {} Standard "MAIN" external calls 
#! #####################################################
if [ "$EXIT" = "guiCTX" ] ; then   #  NOT ACTIVE   
    n=0 
    Sbr_Splash_It "XXX EXIT:guiCTX " "yellow" "purple" "3"  
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run. todo: call CTB-SL
        gcRootApps="/root/my-applications/"
        gcMntHomeMyUsrDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/"
        lcFnRunBaseSd="CTX"
        lcFnRunBaseFn="CTX"
        lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    
        #!  here, testing default for /Dev/Edit  "CTX" 
        if [ -f "${lcFnRun}" ] ; then     # ${lcFnRunBase}    
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
                #! here, else testing application subdir  /root/my-applications/rc.z_???.sh
                lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
                lcFnRun="/root/my-applications/rc.z_PCB-ion.sh"
                if [ -f "$lcFnRun" ] ; then     # ${lcFnRunBase}
                    [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
                else
                    Sbr_FnNotFound "${lcFnRun}"
                fi
         fi
        Sbr_Cbx_ReStart 1    # no wait # OK to use here --- CTB ---
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
fi # end: EXIT:guiCTX
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiCTASLX    #! Not ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Control ColdTarBackup "Automatic" 
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###3#################################################
if [ "$EXIT" = "guiCTASLX" ] ; then   #! CTA  # Not ACTIVE
    n=0
    echo "--- guiCTA Cold Tar Backup Automatic ---"
    Sbr_Splash_It "XXX EXIT:guiCTASLX" "yellow" "purple" "3"  
    #!
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
        gcRootApps="/root/my-applications/"
        gcMntHomeMyUsrDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/"
    lcFnRunBaseSd="CTA"
    lcFnRunBaseFn="CTA"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    
    #!  here, testing  for default  /Dev/Edit
    if [ -f "$lcFnRun" ] ; then     # ${lcFnRunBase}    
        [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        #! else, here testing for production subdir  /root/my-applications/rc.z_???.sh
        lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
        if [ -f "$lcFnRun" ] ; then     # ${lcFnRunBase}
            [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
        else
            Sbr_FnNotFound "${lcFnRun}"
        fi
    fi
    Sbr_Cbx_ReStart 1    # no wait # OK to use here --- CTB ---
    EXIT="" 
    #!   ### force "Fall Thru" if BASH call fails
fi # end: EXIT:guiCTA
#!
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiCTB52     # CTB-5.2 # NOT ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Control ColdTarBackup "Basic" v.5.2
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #############################################################
if [ "$EXIT" = "guiCTB52" ] ; then   # External 'CTB'  # NOT ACTIVE
    n=0
    Sbr_Splash_It "XXX EXIT:guiCTB-SL " "yellow" "purple" "3"  
    Sbr_Sys_KillProc  
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
        gcRootApps="/root/my-applications/"
        gcMntHomeMyUsrDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/"
    lcFnRunBaseSd="CTB"
    lcFnRunBaseFn="CTB-5.2"
    lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"    
    Sbr_Splash_It "${lcFnRun}" "yellow" "purple" "3"  
            #! else, here, testing for production   /root/my-applications/rc.z_???.sh
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then     # ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                Sbr_FnNotFound "${lcFnRun}"
            fi
        Sbr_Cbx_ReStart 1    
        EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
fi # end: EXIT:guiCTB52
#!
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiCTA-SL     # Not ACTIVE
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Control ColdTarBackup "A" Scan for All HardDrives
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##########################################################
if [ "$EXIT" = "guiCTA-SL" ] ; then   #! CTB-SL   # NOT ACTIVE
    n=0
    Sbr_Splash_It "EXIT:guiCTB-SL-4 " "yellow" "purple" "3"  
    Sbr_Sys_KillProc  
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTA-SL.sh"
        gcRootApps="/root/my-applications/"
        gcMntHomeMyUsrDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/"
    lcFnRunBaseSd="CTA"
    lcFnRunBaseFn="CTA-SL"
    lcFnRun="${gcMntHomeMyUsrDev}EDIT_${lcFnRunBaseSd}/rc.z_${lcFnRunBaseFn}.sh"    #!  here, testing  for /Dev/Edit
            lcFnRun="${gcRootApps}rc.z_${lcFnRunBaseFn}.sh"  
            if [ -f "$lcFnRun" ] ; then     # ${lcFnRunBase}
                [ -f "${lcFnRun}" ]  &&  ${lcFnRun}
            else
                Sbr_FnNotFound "${lcFnRun}"
            fi
        Sbr_Cbx_ReStart 1    # no wait # OK to use here --- CTB ---
        EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
fi # end: EXIT:guiCTA-SL    #! CTB-SL   # NOT ACTIVE
#(: ================================================================
#!
#!
#(:
#(: ================================================================
#(: fx IF [ EXIT:guiPXB-RS ] [ EXIT:guiPXB-RB ][ EXIT:guiPXB-RQ ] 	#! ACTIVE  
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: control PXB / PCB / PupColdBackup
#(: calls:
#(: method: calls "PXB" internal , not "rc.z_CTA.sh" external 
#(: sends:
#(: rationale:
#(: note :   
#(: call these two functions are via "{{-One-PCB-All-}}"
#(:     Sbr_BakOneArcDts
#(:     Sbr_BakAllArcDts
#(: Cold Tar (Auto) BackUp : CTA +  ReStart, ReBoot, PowerOff
#(:     RS, RB, PO are calls to external programs. 
#(:     "PO" Power-Off is handled via "RQ" 'ReQuit'  
#(:     ReBoot and PowerOff are normally disabled. 
#(:     controlled via gcSysChkMnxFlg 
#! #################################################################################
if [ "$EXIT" = "guiPXB-RS" ] || [ "$EXIT" = "guiPXB-RB" ] || [ "$EXIT" = "guiPXB-RQ" ] ; then   
    n=0
    Sbr_Splash_It "=== ${EXIT} ===" "yellow" "green" "3"  
        Sbr_Sys_KillProc  
        Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
        #!
		Sbr_PXB_INT		#! "PupColdBackup" "Internal"  ::: todo: PXB_INT ? control BtnFlg 
        #!
		#! Sbr_Sys_Set_PEX, handled in Sbr_Cbx_Reboot, ReQuit, PowerOff
        #!
    #!### #1 ### PXB ReStart ###################################
    if [ "$EXIT" = "guiPXB-RS" ] ; then            
        Sbr_Cbx_ReStart 1   
        EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
    fi
    #!### #2 ### PXB ReBoot ###################################
    if [ "$EXIT" = "guiPXB-RB" ] ; then   
        Sbr_Cbx_ReBoot 1        #! if [ ! ${gcSysChkBtnFlg} ] ; then 	#! Button is Active
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
   fi
    #!### #5 ### PXB ReQuit ###################################
    if [ "$EXIT" = "guiPXB-RQ" ] ; then   
        Sbr_Cbx_ReQuit 1       #! if [ ! ${gcSysChkBtnFlg} ] ; then 	#! Button is Active
		EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
    fi
    #!
fi # end: EXIT:guiPXB-RS, guiCTA-RB, guiCTA-RQ   #! ReStart vs ReBoot vs RePowerOff 
#!
#!
		#! EXIT="" 
        #!   ### force "Fall Thru" if BASH call fails
        #! exit 1      #! ## "exit 1' , error  
        #!  should terminate this program quietly, at "this stack level" . 
#!
#!
#!
#!
#!   Fall-Thru Method 
#!
#!
#!
#!
#! ============================================================
#! begin: ;;;  Simple Exit   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! === ReStart === ReBoot === PowerOff === Halt ===============
#!
#(:
#(: ================================================================
#(: fx EXIT:guiSimReStart
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Simple ReStart Program $0
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
if [ "$EXIT" = "guiSimReStart" ]  ; then  
    n=0
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1   # = guiSimReStart
    EXIT="" ### force "Fall Thru" if BASH call fails
    exit 1      #! ## "exit 1' , error  
    #!  should terminate this program quietly, at "this stack level" . 
fi  #  guiSimReStart
#!
#!
#(:
#(: ================================================================
#(: fx EXIT:guiSimReBoot
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:   Simple ReBoot
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! =================================================
if [ "$EXIT" = "guiSimReBoot" ]  ; then
    n=0
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReBoot 1        #! if [ ! ${gcSysChkBtnFlg} ] ; then 	#! Button is Active
    EXIT="" ### force "Fall Thru" if BASH call fails
    exit 1      #! ## "exit 1' , error  
    #!  should terminate this program quietly, at "this stack level" . 
fi # guiSimReBoot
#!
#!
#(:
#(: ================================================================
#(: fx EXIT:guiSimRePowerOff
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:   Simple WarmPowerOff
#(: method:
#(: sends:
#(: rationale:
#(: note :  
#(:
#! =================================================
if [ "$EXIT" = "guiSimRePowerOff" ] ; then
    n=0
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that PowerOff can run.
    Sbr_Cbx_RePowerOff 1        #! if [ ! ${gcSysChkBtnFlg} ] ; then 	#! Button is Active
    EXIT="" ### force "Fall Thru" if BASH call fails
    exit 1      #! ## "exit 1' , error  
    #!  should terminate this program quietly, at "this stack level" . 
fi # guiSimRePowerOff
#!
#(:
#(: ================================================================
#(: fx EXIT:guiSimHalt
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Simple Halt
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#!=========================================
if [ "$EXIT" = "guiSimHalt" ] ; then   #  
    n=0
    Sbr_Splash_It "!!!_ S.I.M.P.L.E.__Halt_ !!!" "yellow" "purple" "3" #! -D---  
    Sbr_ClearFlagsSystem 0      ### clear lockfile so that ReStart can run.
    Sbr_Cbx_ReHalt 1        #! if [ ! ${gcSysChkBtnFlg} ] ; then 	#! Button is Active
    EXIT="" ### force "Fall Thru" if BASH call fails
    exit 1      #! ## "exit 1' , error  
    #!  should terminate this program quietly, at "this stack level" . 
    #! 
fi # guiSimHalt
#! end: ;;;  Simple Exit   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ============================================================
#!
#!
#!   Fall-Thru Method 
#!
#!
#! ================================================
#! begin:    ;;;  Menu Setup   ;;;
#! ================================================
#!
#!
#(:
#(: ================================================================
#(: ==== EXIT:ARB_ORG is "Generic" for "Original-Long-List" ========
#(:
#(:
#(: ================================================================
#(: fx Menu Build 
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose: Build Menu.lst then ReBoot to execute new menu.lst 
#(: calls:
#(:     Sbr_Splash_It "[[]]===  '${EXIT}' ===[[]]" "yellow" "blue" "3"  
#(:     Sbr_Sys_SDA_Only "ONLY: SDA Menu" #! control: test "SDA" else  ReStart
#(:     Sbr_Sys_KillProc   
#(:     Sbr_Menu_Standard_Init 
#(:         Sbr_Menu_Standard_Selection_Header   
#(:         Sbr_Menu_Standard_End 
#(:         Sbr_Menu_Special_PEX
#(:         Sbr_Cbx_ReBoot, which tests if PEX then ReStart else ReBoot .
#(: method: 
#(:         Install new "default menu.lst" into new "Menu.lst"  
#(: sends:
#(: rationale:
#!
#! ====================================================
#! begin: Build Menu   #!   If/Fi  Build Menu  buildmenu. 
#! List of Abbreviated OS names: KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B32B
#! Menu Built   IF/FI  [ "$EXIT" = "ARB_00"  ] || [ "$EXIT" = "ARB_ORG"  ] \
#! ====================================================
#! BEGIN:  Menu Build   IF/FI  [ "$EXIT" = "ARB_00"  ] || [ "$EXIT" = "ARB_ORG"  ] \
#! ====================================================
if [ "$EXIT" = "ARB_00"  ] || [ "$EXIT" = "ARB_ORG"  ] \
|| [ "$EXIT" = "ARB_B32B" ] || [ "$EXIT" = "ARB_B5B" ] || [ "$EXIT" = "ARB_B64B" ] \
|| [ "$EXIT" = "ARB_B32BX" ] || [ "$EXIT" = "ARB_B5BX" ] || [ "$EXIT" = "ARB_B64BX" ] \
|| [ "$EXIT" = "ARB_DBW32" ] || [ "$EXIT" = "ARB_DBW320" ] \
|| [ "$EXIT" = "ARB_DBW64" ] || [ "$EXIT" = "ARB_DBW640" ] \
|| [ "$EXIT" = "ARB_Dev9"  ] || [ "$EXIT" = "ARB_000"   ] \
|| [ "$EXIT" = "ARB_J5J" ]  || [ "$EXIT" = "ARB_J6J" ] || [ "$EXIT" = "ARB_J32J" ] || [ "$EXIT" = "ARB_J64J" ] \
|| [ "$EXIT" = "ARB_M6M" ]  || [ "$EXIT" = "ARB_K-K"   ] \
|| [ "$EXIT" = "ARB_S-7" ]  || [ "$EXIT" = "ARB_T-6" ] || [ "$EXIT" = "ARB_X64"   ] || [ "$EXIT" = "ARB_X708"  ] \
|| [ "$EXIT" = "ARB_I-I" ]  || [ "$EXIT" = "ARB_S64" ] || [ "$EXIT" = "ARB_S1564" ] || [ "$EXIT" = "ARB_SLXSC" ] \
|| [ "$EXIT" = "ARB_F32F" ] || [ "$EXIT" = "ARB_F64F" ] || [ "$EXIT" = "ARB_F64-96F" ] \
|| [ "$EXIT" = "ARB_Qk7" ]  || [ "$EXIT" = "ARB_EOS"   ] || [ "$EXIT" = "ARB_SLK64" ] \
|| [ "$EXIT" = "ARB_N64N"  ]  || [ "$EXIT" = "ARB_N32N" ] \
|| [ "$EXIT" = "ARB_PDV64" ]  || [ "$EXIT" = "ARB_PDV640" ] \
|| [ "$EXIT" = "ARB_PN64" ]   || [ "$EXIT" = "ARB_PN640" ] \
|| [ "$EXIT" = "ARB_Trx64L" ] || [ "$EXIT" = "ARB_Trx64R" ] \
|| [ "$EXIT" = "ARB_N32N" ] || [ "$EXIT" = "ARB_N32N0" ] \
|| [ "$EXIT" = "ARB_N64N" ] || [ "$EXIT" = "ARB_N64N0" ] \
|| [ "$EXIT" = "ARB_KLM1"  ] || [ "$EXIT" = "ARB_KLM2" ]   ; then
    #!
    #! if <button> selected is in valid list, 
    #! then OK to build a new menu.lst
    #! then CALL "Sbr_Menu_Standard_Init"
    #!
    n=0
    Sbr_Splash_It "[[]]===  '${EXIT}' ===[[]]" "yellow" "blue" "3"  
    Sbr_Sys_SDA_Only "ONLY: SDA Menu" #! control: test "SDA" else  ReStart
    Sbr_Sys_KillProc   
    #!
    Sbr_Menu_Standard_Init    #! Build Menu permission/config control #! calls all Build Menu Routines. 
	#!
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
	#!
        #! Original type menu.lst, Special, so  Build Menu Code & RESTART $0
        if  [ "$EXIT" = "ARB_ORG"  ] ; then
            Sbr_Cbx_ReStart 1
        else    #! true Build & ReBoot
            Sbr_Cbx_ReBoot   #! Standard ReBoot, OK to ReBoot System running the "new menu.lst"
        fi
        #!
else
	n=0
	#! IF not captured above, THEN menu select TOKEN will fall thru, all the way OUT of program. 
fi # END: Menu Setup   end: Build Menu
#!
#! ================================================
#! END:  Menu Setup   if [ "$EXIT" = "ARB_??"  ] 
#! ================================================
#! 
#!
#!
#! ====================================================
#! #############
#! begin: QUIT 
#! #############
#! ====================================================
#!
#(:
#(: ================================================================
#(: fx IF EXIT:guiMainQUIT    #: ACTIVE
#(: called by: Main GUI
#(: param:
#(: purpose: Main Quit with trailer message.
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :  Main Gui <button> will "Fall Thr" down to all "EXIT:gui???" routines. 
#(: note :  all "EXIT:gui???" routines will call "Sbr_???" written at top of Source Code.    
#(:
#! ###########################################################
if [ "$EXIT" = "guiMainQUIT" ]  ; then
    n=0
    #! must "clear" two times if active XTerm screen data. 
    clear   #! clears twice from bottom half of Penguin Display
    clear   #! clears twice from bottom half of Penguin Display
    Sbr_ClearFlagsSystem "0"   ### no display
    #! ############################################################
        #!
        #! Fall-Thru passes thru here via Main "EXIT" Green Button
        #!
    #! ### "EXIT:QUIT" ####################################################
    #!
    #!~ Sbr_Splash_PupHead  
    #!~ lcMsgStrwc=$(wc -l < ${0})
    #!~ lcMsgStr="${0}: $lcMsgStrwc lines---[EXIT]---DOB:${gcMgr_SysDobNow}---"
    #!~ Sbr_Str2DevTrm "$lcMsgStr " "1" "1"
    #!
    lcMsgStr1="!_Standard_EXIT_!"
    gxmessage -title "${0}"  -name "${0}" -font bold -timeout 1  -fg yellow -bg darkred -center  -border "
    ${lcMsgStr1}   " #!
    #!~ kill ${GTKPID_Cold_Splash}  #! =$!
    clear
    exit 0  
    #! IF Xterm, THEN IF ROX is running, THEN  MGR halts right here, in Xterm. 
    #! System has an orphaned routine (ROX) still on the stack.
fi
#! ft [EXIT:guiMainQUIT]
#!
#! There are routines "above" which command a clean "exit" .
#!
#! #####################################################################
#! #######  begin: Bottom of MGR FALL-THRU_Trap  for 'loose' code  ####
#! #####################################################################
#!
#(:
#(: ===== EXIT:"" ==========================================================
#(: fx IF EXIT=''   #  FALL-THRU trap for 'loose' code 
#(: called by: Fall-Thru where   EXIT="" 
#(: param:
#(: purpose:     FALL-THRU trap for 'loose' code
#(: calls:
#(: method:      EXIT=''  &&  exit
#(: sends:
#(: note: FALL-THRU trap
#(: rationale:   if [$EXIT = ""]  ; THEN  if/fi will never trap  
#(: rationale:   if [ ! $EXIT ]   ; THEN  Fall Thru to the end of code.
#(: note :
#! ########### EXIT='' ################################################
#! function ft(EXIT='')
#! colorful splash  FALL-THRU trap for 'loose' code 
#!    if [ $EXIT = "" ] ; THEN  Splash in color
#!
lcMsgStr=" >->->   EXIT='' <-<-<-" && Sbr_Str2DevTrm "$lcMsgStr" "2" "4"
lcMsgStr="->->->  NON-Standard QUIT Process " && Sbr_Str2DevTrm "${lcMsgStr}" "1" "0"
lcMsgStr="->->->  FALL-THRU trap for 'loose' code  " 
Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
Sbr_Str2DevTrm "$lcMsgStr" "2" "2"
Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
#!
Sbr_ClearFlagsSystem  0   ### no display
#!
lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
lcMsgStr="<-<-<-  FALL-THRU trap for 'loose' code ->->->  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-----------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"

#! ####################################! ###################################
#! ####################################! ###################################
#! ####################################! ###################################
#! #######  Begin FALL-THRU  ####### Testing 
#! ####################################! ###################################

#! ######################################################################
#!  set +u  #! testing "unbound" variable named 'runthis'  
#!
#!
#! ####################################! ###################################
#! #######  FALL-THRU  ####### Testing a small gtkdialog XML
#! ####################################! ###################################
#!
if [ $EXIT = "T0" ] || [ $EXIT = "TA" ] || [ $EXIT = "TB" ] || [ $EXIT = "TC" ] || [ $EXIT = "TD" ]   || [ $EXIT = "TE" ]   ; then		
    #! Sbr_Exit_Special   ====  Just CATCH-ALL EXIT
    gxmessage -title "${0}"  -name "${0}" -font bold -timeout 1 -fg yellow -bg darkred -center -border "\
.
.    [XTERM]  
."
    n=0
fi
#!

set -e

#! =TEST=
if [ $EXIT = "T0" ]  ; then			#! EXIT:"TA"
    #! best workaround : using "unbound variable" is confusing. Logic is Reveresed.
        export runthis=    #!  assigned as  "unbound" is 'nothing' variable  #! logic is reversed. 
        #! 
if [  runthis ] ; then     echo 'runthis is true ' 
            n=0 #! gxmessage displays on top of exiting GTK window. 


                lcMsgStr="T0: if [true 'runthis'] is ['nothing' so is unbound] " 
                echo "lcMsgStr"
    gxmessage -title "${0}"  -name "${0}" -font bold -timeout 3 -fg yellow -bg darkred -center -border "\
.
.    $lcMsgStr  
."
else
                n=0
                lcMsgStr=":T0: else false 'runthis' is not 'nothing' so is bound "  
                echo "lcMsgStr"
    gxmessage -title "${0}"  -name "${0}" -font bold -timeout 3 -fg yellow -bg darkred -center -border "\
.
.    $lcMsgStr  
."
        echo "..."
fi # end: 
    #!
    Sbr_Cbx_ReStart 
fi
#!
#! =TEST=
if [ $EXIT = "TA" ]  ; then			#! EXIT:"TA"
#! Sbr_Exit_Special   ====  NORMAL CATCH-ALL EXIT
#! function Sbr_Exit_Special() {
#! =========================================================================
#! ### end:   "EXIT:QUIT" "EXIT:QUIT+"
#!  gx box Always Displayed 
    clear
    lcMsgStr1=":TA: Fall-Thru-Q.U.I.T "
    lcMsgStr2="$gcMsgStrwc lines"
    lcMsgStr3="MGR:${gcMgr_SysDobNow} "	
    lcMsgStr41="${gxMgrAuthorName1} "
    lcMsgStr42="${gxMgrAuthorName2} "
    lcMsgStr43="${gxMgrAuthorName3} "
    lcMsgStr51="${gxMgrAuthorAddress1} "
    lcMsgStr52="${gxMgrAuthorAddress2} "
    gxmessage -title "${0}"  -name "${0}" -font bold -timeout 7 -fg yellow -bg darkred -center -border "\
 ${lcMsgStr1}  .  
 ${lcMsgStr2}     
 ${lcMsgStr3}    
 ${lcMsgStr41} 
 ${lcMsgStr42} 
 ${lcMsgStr43} 
 ${lcMsgStr51} 
 ${lcMsgStr52} 
.....................
......................"
    #!
#! export Sbr_Exit_Special
fi
#! 
#! =TEST=
if [ $EXIT = "TB" ] ; then  	
        #! EXIT:"TB"
		#! LightBulb Image via MGR 
		#! embedded in <button>
		#! visible in Xterm and Screen 
		export    lcMsgStr1="TB: FALL-THRU :"
		export    lcMsgStr2="$gcMsgStrwc lines::"
		export    lcMsgStr3="MGR-DOB:${gcMgr_SysDobNow}:"	
		export MAIN_TB_DIALOG='
		<vbox>
		  <pixmap>
			<input file>/tmp/EmGr-img-lightbulb.svg</input>
		  </pixmap>
			<button has-focus="false" height-request="33"  xalign=".5"  tooltip-text="" >
				<input file>/tmp/EmGr-img-apple-redgrn.svg</input><width>25</width>  <height>25</height>
				<label> "apple-redgrn" </label><action>'0'</action> 
				</button>
			<hbox>
			<button>
				<input file>/tmp/EmGr-img-lightbulb.svg</input>
				</button>
			<button>
				<input file>/tmp/EmGr-img-lightbulb.svg</input>
				<label>"-input-label-"</label>
				</button>
			<button>
				<input file>/tmp/EmGr-img-lightbulb.svg</input>
				</button>
			</hbox>
			<button ok> 
			<label>"-OK-image-"</label>
				</button>
		</vbox>'
		gtkdialog -p MAIN_TB_DIALOG
        #!
fi
#!
#! =TEST=
if [ $EXIT = "TC" ] ; then 		#! EXIT:"TC"
    n=0
    #!
    #~ lcMsgStr="(z1) :TC:"
    #~ echo "$lcMsgStr"  #>/dev/console
    #~ lcMsgStr="(z2) :  must click window to close Xterm."
    #~ echo "$lcMsgStr"  #>/dev/console
    lcMsgStr="TEST :TC:  CLICK this XTERM window !  NOW ! ${EXIT}"
    echo "$lcMsgStr"  #>/dev/console
    lcMsgStr="TEST :TC:  CLICK the XTERM window !  NOW ! ${EXIT}" 
    gxmessage -title "${0} TC "  -name "${0}" -font bold -timeout 3  -fg yellow -bg darkred -center -wrap -border "${lcMsgStr}" 
	#! >/dev/console
fi
#!	
#! =TEST=
if [ $EXIT = "TD" ] ; then   	#! EXIT:"TD"  --color-mode # requires documentation !
    if [   runthis  ] ; then   
    dialog  --backtitle ":TD: {Dickey} Dialog" \
      --radiolist "Select type:" 10 40 5 \
            1 SX off \
            2 DX on \
            3 SX off \
            4 DX off
    fi
    lcMsgStr="TD: {Dickey} Results : ${RETVAL} : Dialog radiolist"
       /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m ${lcMsgStr} : ${RETVAL} : \\033[1;35m***\\033[0;39m"  #> /dev/console
    sleep 7
fi
#!
#! =TEST=
if [ $EXIT = "TX" ] ; then    #! <button> active 	#! EXIT:"TX"	"xkill -button 1"
    #!
    lcMsgStr="TEST 'xkill -button 1'  : starts a window clearing function, dangerous."
    gxmessage -title "${0} v1 /dev/console"  -name "${0}" -font bold -timeout 3  -fg yellow -bg darkred -center -wrap -border "${lcMsgStr}"

    lcMsgStr="TEST:  CLICK the XTERM window !  NOW !" 
    gxmessage -title "${0} v2 "  -name "${0}" -font bold -timeout 1  -fg green -bg yellow -center -wrap -border "${lcMsgStr}" 

    lcMsgStr="TEST:  CLICK the XTERM window !  NOW !" 
    gxmessage -title "${0} v2 "  -name "${0}" -font bold -timeout 2  -fg yellow -bg darkred -center -wrap -border "${lcMsgStr}" 

    lcMsgStr="TEST:  XTERM may linger on stack ! " 
    gxmessage -title "(v2) "  -name "${0}" -font bold -timeout 3  -fg yellow -bg darkred -center -wrap -border "${lcMsgStr}" 

    lcMsgStr="(z3) :  XTERM may linger on stack !"
    echo "$lcMsgStr"  

    #!
    xkill -version  "(z5) xkill starts a window clearing function, dangerous."    #>/dev/console
    #!
    xkill -button 1
    #!
fi
#! seems must point to a valid <button> in calling routine, else will error "no button number in pointer map" 
#!    but "Skull-Cross-Bones" cursor pointer can clear the Xterm window  
#! or 
#!    "Skull-Cross-Bones" cursor pointer can clear any "active" / "open" window , such as MGR.sh window. 
#!
#!
if [ !  runthis ]  || [ $EXIT = "TF" ] ; then 
    Xdialog   --title "  TF: {Xdialog} Yes  No "   --timeout 3 --yes-label "0-Yes EXIT" --no-label "1-NO_Exit" --yesno "\
  lcMsgStr2  lcMsgStr3 
  Wait 3 seconds to EXIT ." 5   55         #>/dev/console 
      RETVAL=$?
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;33m :$RETVAL: \\033[1;35m***\\033[0;39m"  > /dev/console  && sleep 1 
    #! viewing in Xterm
    case $RETVAL in
      0) echo "User selected R:$RETVAL =Yes." 
        lcMsgStr="= YES case R:$RETVAL =0" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
        ;;
      1) echo "User selected R:$RETVAL No." 
        lcMsgStr="= NO =case R:$RETVAL =1" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
        ;;
      *) echo "Other = R:$RETVAL: = ? " 
        lcMsgStr="= Other = R:$RETVAL: = ?" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
        ;;
    esac
    sleep 3
    #! view in Xterm
    if [ $RETVAL -eq 0 ] ; then   
        lcMsgStr="= if -eq 0 = yes" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
    else
        lcMsgStr="= else -ne 0 = no/other" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
    fi 
        lcMsgStr="RETVAL = $RETVAL" 
        /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  #> /dev/console
    sleep 1
fi 
 
#!!! exit Kill this "exit" command so to allow Splash-PupHead to show. 

#! ####################################! ###################################
#! end: Bottom of MGR Fall-Thru 
#! ####################################! ###################################
#!
#!
#!
#! SCRIBBLE area #! ########################################################
#!
#! NOTE: 
#!	#(: PupHotSave documented System Fatal Flaw. 
#!  #(: PHS-bkp-241010-1848.sh  #! error:  requires 4X RAM  ; can produce fatal error "Out of RAM" ;   
#!  #(:    e2fsck : exporting full results file : "Out Of RAM" ! 
#! 	#(:       	e2fsck -y "${destfile}" 2> /dev/null
#!  #(: plus extra copy into file.sfs requires Doule RAM Available !, else : "Out Of RAM" ! 
#!  #(: 
#!
  #! lcMsgStr="Box_MessageXML"  #! assumes '/tmp/box_help'    #! -D---
  #! timeout 5s gtkdialog --center    -p ${lcMsgStr}  #! assumes '/tmp/box_help'    #! -D---
  #! exterm -e ${$0}
#!

#! Msg routine for  "ATS_session" and "AskToSave_function" and "13)"
#! Old Code, developing new window. 
#!
#!    gxmessage -title "${0}"  -name "AskToSave_Session" -font bold -timeout 3 -fg yellow -bg darkred -center -wrap -border "
#!	  AskToSave_Session  = :${RETVAL}:   ...
# !	."

			#!~ lcMsgVal=":ATS:"
			#!~ if [ $RETVAL -ne 0 ] ; then   # # IS Flag = NOT Save  # 32 is GREEN    copied from B5B but in error ! 
			#!~  lcMsgStr="=${lcMsgVal}= NOT Saving Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
			#!~  lcMsgStr="=${lcMsgVal}= NOT Saving Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
			#!~  lcMsgStr="=${lcMsgVal}= NOT Saving Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
			#!~ fi 

			#!~ if [ $RETVAL -eq 0 ]; then     #! IS ZERO  equals  IS Save is RED
			#!~ lcMsgVal=":13:"
			#!~  lcMsgStr="=${lcMsgVal}= IS SAVE Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
			#!~  lcMsgStr="=${lcMsgVal}= IS SAVE Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
			#!~  lcMsgStr="=${lcMsgVal}= IS SAV# Session to ${SAVEFILE} : ${SAVEPART}" && /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
				#!~ /usr/sbin/snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
			#!~ fi 

			#! 13)
			#~ if [ $RETVAL -ne 0 ] ; then   # # IS Flag = NOT Save  # 32 is GREEN    copied from B5B but in error ! 
				#~ lcMsgStr="= 13 = IS NOT SAVE Session to ${SAVEFILE} : ${SAVEPART}"
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;32m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
			#~ fi 

			#~ if [ $RETVAL -eq 0 ]; then     #! IS ZERO  equals  IS Save is RED
				#~ lcMsgStr="= 13 = IS SAVE Session to ${SAVEFILE} : ${SAVEPART}"
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
			#~   /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;31m ${lcMsgStr} \\033[1;35m***\\033[0;39m"  > /dev/console  
				#~ #!
				#~ /usr/sbin/snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
				#~ #!
			#~ fi 

#! #######################################################################
#! #######  Absolute FALL-THRU  Fall-Out 
#! #######################################################################

    #! if file "neofetch" ; then 
    lcFnTrg="/usr/bin/neofetch"
    if [ -f "${lcFnTrg}" ] ; then 
         n=0
         neofetch  --ascii_colors 3 2 7   
            sleep .1
         neofetch  --ascii_colors 4 2 6   
            sleep .1
         neofetch  --ascii_colors 5 2 5   
            sleep 1
    fi
/bin/echo "_" #> /dev/console 
       n=0
lcMsgStr1=".     -/osyyyysosyhhhhhyys+-
    -ohmNNmh+/hMMMMMMMMNNNNd+dMMMMNM+
  yMMMMNNmmddo/NMMMNNNNNNNNNo+NNNNNy
.NNNNNNmmmddds:MMNNNNNNNNNNNh:mNNN/
-NNNdyyyhdmmmd dNNNNNmmmmNNmdd/os/"
lcMsgStr2=".
.Nm+shddyooo+/smNNNNmmmmNh.   :mmd.
 NNNNy:    ./hmmmmmmmNNNN:     hNMh
 NMN-   -++-  +NNNNNNNNNNm+..-sMMMM-
.MMo   oNNNNo  hNNNNNNNNmhdNNNMMMMM+
.MMs   /NNNN/  dNmhs+:-  yMMMMMMMM+
 mMM+     .. sNN+.      hMMMMhhMMM-
 +MMMmo:...:sNMMMMMms:  hMMMMm.hMMy"
lcMsgStr3=". yMMMMMMMMMMMNdMMMMMM::/+o+/
   sMMMMMMMMMMN+:oyyo:sMMMNNMMMNy
    :mMMMMMMMMMMMmddNMMMMMMMMmh/
      /dMMMMMMMMMMMMMMMMMMNdy/
        .+hNMMMMMMMMMNmdhs/.
            .:/+ooo+/:-." 
        echo "..."
        echo "==== Load PupHead===="
        lcMsgStr11="'\\033[1G\\033[1;31m ${lcMsgStr1}'" #! RED
        lcMsgStr12="'\\033[1G\\033[1;30m ${lcMsgStr2}'" #! WHITE-7red, 0black, lightcyan-black-yel
        lcMsgStr13="'\\033[1G\\033[1;34m ${lcMsgStr3}'" #! BLUE
        echo "..."
        echo "==== Splash PupHead===="
        #! use two display modes during test
        /bin/echo -en "${lcMsgStr1} ${lcMsgStr11}" 
        /bin/echo -en "${lcMsgStr12}" 
        /bin/echo -en "${lcMsgStr13}" 
        #! use two display modes during test
        #~ /bin/echo -en "${lcMsgStr11}"  > /dev/console
        #~ /bin/echo -en "${lcMsgStr12}"  > /dev/console
        #~ /bin/echo -en "${lcMsgStr13}"  > /dev/console
        #! 

       #~ lcMsgStr="===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== "
       lcMsgStr="===[ $0 ]=== ===[ $0 ]=== ===[ $0 ]=== "
       #~ /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;34m $lcMsgStr  $lcMsgStr  $lcMsgStr  $lcMsgStr  $lcMsgStr  \\033[1;35m***\\033[0;39m"  > /dev/console  
       /bin/echo -e "\\033[10G\\033[1;35m*** \\033[1;34m $lcMsgStr  $lcMsgStr  $lcMsgStr  $lcMsgStr  $lcMsgStr  \\033[1;35m***\\033[0;39m" 
		#~ sleep 3


        #! ??? CLEAR Lingering Color setup at end-of-line
        lcMsgStrXX="\\033[1G\\033[1;33m '=== Splash_PupHead ===  ' "
        lcMsgStr="'\\033[1G\\033[1;30m ${lcMsgStrXX}'" 
        /bin/echo -e "${lcMsgStrXX}"  
        lcMsgStr="'\\033[1G\\033[1;34m ${lcMsgStrXX}'"
        /bin/echo -e "${lcMsgStrXX}"  
        sleep 3
		#(: ================================================================
        #! that's all !


########### /usr/bin/xterm -e bash -c -e "/bin/sh %c"
#! =========================================================================
#! that's all #! #! gae
#! =========================================================================
#!
#~ gxmessage -title "${0}"  -name "Ram Obj Size Comparison" -font bold -timeout 3 -fg yellow -bg darkred -center -wrap -border "
#~ #! B32B           =  121 MB
#~ #! B64B           =  184 MB
#~ #! DBW64         =  150 MB  
#~ #! PexDev64     =  159 MB
#~ #! PexNobel64  =   85 MB
#~ #! PexTrix64R   = 1238 MB 
#~ #! F64 _96F       =  590 MB "

#! =======================================
