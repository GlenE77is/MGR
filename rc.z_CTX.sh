#!/bin/bash
#! 

#! ######################################################################
#!  System Developer Initial DOB is "gcCtxDevDob'
#!(######################################################################
export gcSysDevDob="240111-1024"    # update notes
#!(######################################################################

#!  CTX-5.2.sh  is local Development code.
#!  distributed as CTB-v5.2
#!  The  Cold Tar series is CTB v5, CTB-SL v4, CTA, CTU . 
#!  "Cold Tar Backup"  uses tar | gzip  to produce a "BackupFile.tar.gz"
#!
#! =======================================================
#! System Dox and GNU Legal are at far bottom of code
#! Edit FOSS at your own risk.
#! =======================================================
#!
#(: **********************************************************************
#(: "CTX"  (X) Testing/Developing version 
#(:  CTX source has embedded/commented Scan-List 
#(:  CTX-5.0.sh is local Development code. 
#(:  CTX-5? is copied to CTB-5? for Production / Distribution 
#(:  
#(:  CTB.4.sh are earlier versions. 
#(:  TXN_code-RUN.sh has been run through a "Code-Stripper" 
#(:  TXN should be renamed/copied to CTA, CTB, etc. 
#(:  TXN collects #(: into a "Comment.txt" file 
#(:         a collection of "synoptic" notes from all code modules. 
#(:         so code programmer can read a synopsis of all code modules. 
#(:  TXN  deletes all  #(:  comment lines into  "TXN" file.  
#(:
#(: **********************************************************************
#(: SINCE, CTX is used to generate CTB, CTA, CTU, et al.
#(: THEN, This source code has function name as "CTB" 
#(: **********************************************************************
#(: Development "CTB"    (B)asic version   (5)version
#(: CTB is the product of a "Case and Hack" process on a FOSS project by 2byte, et al.
#(: CTB is written for Linux Puppy OS, frugal install (saveDirectory or saveFile.4fs).
#(: **********************************************************************
#(:
#(: **********************************************************************
#(: "CTX"  v.5.0  (X) Testing/Developing version 
#(:  (1) Code method is to include special options, 
#(:  (2) utilize gcCTBmode to control options. 
#(:  (3) then delete options/sections for CTB,CTA,CTU production versons. 
#(: **********************************************************************
#(:
#(: (1) Operational Process:
#(: rc.z_CTX is the Original ColdTarBackup.sh
#(: rc.z_CTX maintains optional code, and (gcCTBmode) controls Options. 
#(: rc.z_CTX is converted to "CTB", "CTA", "CTU" versions for TXN and distribution/production. 
#(: rc.z_CTB has 
#(:   1. only a change in varname from "CTX" to "CTB"
#(:   2. and is transferred to the "CTB" subdir.
#(: (2) TXN returns the Distro/Prod versions : 
#(: CTX v.5, TXN compacted version of Developer file.
#(: CTB v.5, is Basic version (no ScanList)
#(: CTA v.5, is Automatic (Trace, but No GUI) .
#(: CTU v.5, is Utility ( No Trace, No Gui ) . 
#(:
#(: (3) 
#(: copy each TXN version to the base subdir. 
#(: duplicate each TXN version into the Prod.v#.sh
#(:  so, for example: 
#(:  CTB-5.0_Txn_230109-0830-37 becomes the current "CTB-5.0.sh" prod version. 
#(:

#(:  **********************************************************************
#(:  "CTX"  v.5.0  (X) Testing/Developing version 
#(:   (1) Code method is to include special options, 
#(:   (2) utilize gcCTBmode to control options. 
#(:   (3) then delete options/sections for CTB,CTA,CTU production versons. 
#(:  **********************************************************************
#(:  "CTX"  (X) Testing/Developing version 
#(:   Always develop CTX, 
#(:   Always pass updates down to numbered versions 
#(: 
#(:   CTX-5.0.sh is local production archived copy 
#(: 
#(:   CTB, CTB-SL, CTA, CTU are local production versions, called by "MGR.sh". 
#(: 
#(:   CT?.4.sh are earlier versions. 
#(: 
#(:  **********************************************************************
#(:    Standard GNU General Public License Software 
#(:    is written at bottom of source code:
#(:  
#(:  **********************************************************************
#(: 
#(:  
#(:  Development "CTX"    (X) Testing/Basic version   (5)version
#(:  CTX is the product of a "Case and Hack" process on a FOSS project by 2byte, et al.
#(:  CTX is written for Linux Puppy OS, frugal install (saveDirectory or saveFile.4fs).
#(: 
#(:  CTX tested only on "official" Puppy distributions from Woof-CE process, in master github. 
#(:    not on the many personal distros, which may have dependency problems.  
#(:  CTX has been tested on 32bit, 64bit, saveDIRECTORY, and saveFILE.4FS systems. 
#(:  CTX has been tested on 10 running frugal installs regularly, on 2010 XP class computers.  
#(:  CTB v.4.1 has special CTB_ScanList , but no extra file info/display options.  
#(:  CTX v.5 is the current 'latest' version. 
#(:  rc.z_CTX is converted to "CTB", "CTA", "CTU" versions for TXN and distribution/production. 
#(: 
#(:  Operational Process:
#(:  rc.z_CTX is the Original ColdTarBackup.sh
#(:  rc.z_CTX maintains optional code, and (gcCTBmode) controls Options. 
#(:  rc.z_CTX is converted to "CTB", "CTA", "CTU" versions for TXN and distribution/production. 
#(: 
#(:  TXN returns the Distro/Prod versions : 
#(:  CTB v.5, is Basic version (no ScanList)
#(:  CTA v.5, is Automatic (Trace, but No GUI) .
#(:  CTU v.5, is Utility ( No Trace, No Gui ) . 
#(: 
#(: (####################################################################

#!
#!(######################################################################
#!( System Developer ID name of this Linux BASH script is "CTB"
export gcCtxDevId="CTB"	    #   'B' 'A' 'U'   
export gcCtxDevVer="5.2"
#!(######################################################################
#
#:-----------------------------------------------------------------------------------
#: rc.sysinit uses this PATH statement: 
#: PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11R7/bin:/etc/rc.d:/root/my-applications/bin/ 
#:--- CTB.sh expands to this --------------------------------------------------------
PATH=$PATH:/usr/lib/gtkdialog/
#:-----------------------------------------------------------------------------------

###################################################################
### Build    Icon.svg   after PATH assignment
### /tmp/Icon-img-shutdown-red.xpm, idea from DW57, Murga
##############################################################




#(:=================================================================================
# lcSetCtrl=1
# set -x   # list of executing lines "on"
# set -e   # halt at line of error "on"
# set +x   # list of executing lines "off"
# set +e   # halt at line of error "off"
#
#(: control : clear debug 
    set +x
    set +e
#(:     enable set +xe 
#(:     clear  set -xe 
#(:=================================================================================

#:
#: ===========================================================
#: "Comment"  ScanList/ScanOne in order to build CTB
#: "Maintain" ScanList/ScanOne in order to build CTA , CTU 
#: ===========================================================
#: fx(CTB_ScanOne)   #! called by: fx(CTB_ScanList)
#: fx(CTB_ScanList)  #! called by: fx(CTB_BackUpRun)
#: ===========================================================
#:

#(:
#(:===========================================================
#(: Development "CTX"  is  Developmental (X)version   
#(: Derived directly from "CTB'" version, for dev. 
#(: written for Linux Puppy OS, frugal install.
#(: tested on 17 "official" distributions. 
#(:===========================================================
#(:
#(:===========================================================
#(: We use a "Develop" subdirectory.
#(: We have a "Production" subdirectory.
#(: We have a "Backup" subdirectory.  
#(:===========================================================
#(:
#(:===========================================================
#(: We have "Auto" and "Utility" and "NoSMP-Auto" versions. 
#(: ...   which may skip all the Main Gui Screen, pause, select.
#(: ...   which may skip all control options.
#(: ...   which may skip SnapMergePuppy code. 
#(:	These Other versions are controlled by user modifiable tags  
#(:    in the subroutine "Sys_SetVerDts"  'Set Version Date' 
#(: "CTX" is inhouse, dev / revise options, for "tinkering". 
#(:
#(:
#(:===========================================================
#(: method of Programmer Docs and Linux Comments.
#(: "#(:" Docs are "Transferred"  by "TXN" into "comments.txt"
#(:       used for Prog Dox to build Code Documentation for project . 
#(:       TXN will pull these out to a separate file for project. 
#(:         #(: effectively becomes a 'cut' line
#(:
#(: "#(!" Docs are "KEEP" in code.sh and also "Transferred" into comments text file.
#(:
#(: "#~"  Comments are culled via "TXN"
#(:         Standard "comment" flag
#(:         TXN will delete these common comments, for min prog/script size.
#(: "#:"  Comments are culled via "TXN"
#(:         used for common comments added by gae
#(:         TXN will delete these common comments, for min prog/script size.
#(: 
#(:=======================================================
#(: System Dox and Legal are at far bottom of code
#(: and/or external text file. 
#(:=======================================================
#(:
#!
#(: function Sys_SetVerDts
#! ===========================================================
function Sys_SetVerDts() {     # ACTIVE
#(: ==========================================================
#(: fx(Sys_SetVerDts) === default global specs
#(: called by: fx(CTB_StartUp)  
#(:		for required Developer's Data Entry Code.
#(: param: none
#(: purpose: gather parameters , accept declarations by user, assign mode control
#(: calls: none
#(: method: declare/assign/export 
#(: sends: 
#(: rationale: 
#(: note : 
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#:  capture all params (future development)
export gcCtxParam1="$1"	## "B"  , "U"  , "A"  ## options for "local" control .
export gcCtxParam2="$2" ## "RS" , "RB" , "RQ" ## options to match manager "MGN.sh" .
export gcCtxParam3="$3"
. /etc/DISTRO_SPECS
#~ export gcSysDistroName="${DISTRO_NAME}"
. /etc/rc.d/PUPSTATE
#~ export gcVerDtsTmpPS=""	# temp var,  used before/after loading PUPSTATE
#~ export gcSysDvar=`date` # not used 
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(:  declare/assign parameterized "mode" for CTB  control
#(:  "B" Backup+Scan  by selecting "Scan" button directly, standard version. 
#(:  "U" Utility "NO GUI" , local copy only, used only in-house, not distributed. 
#(:	 "A" Auto-Scan, NO-GUI, used only in-house, not distributed. 
#(: 
#(: Parameters:
	#~ gcCTBmode="A"	&& gcCTBmodeName="Auto" && gcCTBmodeId="CTA" ### Auto Dev
    #~ gcCTBmode="B" && gcCTBmodeName="Basic" && gcCTBmodeId="CTB"  ### "B" PRODUCTION 
  	#~ gcCTBmode="U"	&& gcCTBmodeName="Util" && gcCTBmodeId="CTU"  ### Utility Dev 	
  	gcCTBmode="X"	&& gcCTBmodeName="DevB" && gcCTBmodeId="CTB" 	
case "${gcCtxParam1}" in	
	"B") gcCTBmode="B"  && gcCTBmodeName="Basic"   && gcCTBmodeId="CTB" ;;	
	"U") gcCTBmode="U"  && gcCTBmodeName="Utility" && gcCTBmodeId="CTU" ;;	
	"A") gcCTBmode="A"  && gcCTBmodeName="Auto"    && gcCTBmodeId="CTA" ;;	
	*) 	 gcCTBmode="B"	&& gcCTBmodeName="Basic"   && gcCTBmodeId="CTX" ;;	# "X" in-house Default
esac
#! 
#

 
#(: 
export gcCTBmode="${gcCTBmode}"	
#: export a "gc-mode-control"
export gcCTBmodeName="${gcCTBmodeName}"	
#: export for "GUI display control"
export gcCTBmodeId="${gcCTBmodeId}"	   # SMP, TarOpt
#:
#(: 
#~ #(:  Control Test mode :  "T"est can skip Back-Up code ,  "0" is normal run Back-Up. 
#~ export gcCTBtest="0"    # Not Used in "production" version.	
#:
#(: begin: fx(CTB initial control) === default global specs
#(: "ReStart" 
#(:  $0   is used to restart this program, after looping through options.  
#(:  Note: CTB is written in BASH, 221201. 
#(:   so ,sometimes , with call/return to subroutines/subscripts, 
#(:   BASH will loose this environmental variable, due encapsulation errors. 
#(:   This code is written in BASH, and BASH has limits and quirks. 
export gcCtbZeroRun="$0"
#(:  So "gcCtbZeroRun" is declared + assigned + exported  with the value "$0" 
#(:     which refers directly to "this" script on 'first run'.    
#(:  Capture + export now, before any changes to call-stack level or environmental var. 
#(:
#(: end: fx(CTB initial control) === default global specs
#(:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
#
#(!=== begin: Config Reader ===============================================
#(:# read early, save to inject into data stream later. 
#(:# note: "A"utomatic works in the local code mode. 
#(:# note: "B"asic (distributed version) can be re-directed.
#(:# default  gcCtbConfigFN  ="/root/my-applications/bin/CTB_config"	
#(:# this is always visible via PATH  "/root/my-applications/bin/CTB_Config.sh" 
gcCtbConfigFN="/root/my-applications/bin/CTB_config"	
#(: Prefix is supplied via config file 
gcCtbConfigTrgPrefix=""			
#(: CTB : this code will 'cat a single line of data into a CTB global constant.
#(:    gcCtbConfigTrgPrefix=`cat ${gcCtbConfigFN}`
#(: this method of 'cat' skips requirement for 'permissions' 
#!
#! ====================================================================
#(: function if [ ${gcCTBmode} = "B" ]
if [ ${gcCTBmode} = "B" ] ; then	# only "B"asic version will read config
		#: "B"asic (distributed version) always reads config on every startup
	if [ -f ${gcCtbConfigFN} ]  ; then  
		n=0
        #: if config, then read AS-IS 
        #: CTB : this will 'cat a single line of data into a var .
		gcCtbConfigTrgPrefix=`cat ${gcCtbConfigFN}`
		#: now we have the alternate target subdir for casting the new saveDATA.tar.gz
	else	
		n=0
        touch ${gcCtbConfigFN} 	
        #: else not config file found, simply cast into local saveDATA home file.
	fi
fi # end: fi [ ${gcCTBmode} = "B" ] 
export gcCtbConfigTrgPrefix="${gcCtbConfigTrgPrefix}"	
#~ #: if config var is empty, then use cut var. 
#: export config READ results 
#!=== end: Config Reader ==============================================
#	
} #( end: fx(Sys_SetVerDts) 
#! ###########################################################




#(: ======================================================================
#(: fx(Sys_Str2DevTrm)
#(: called by: all messages directed to /dev/console or Geany Terminal 
#(: called by: rc.sysinit and rc.shutdown 
#(: param : "string" "color" "margin"
#(: purpose: Str2DevTrm is Standard "Message-2-Display" routine 
#(:     polymorphic design for use from Geany Execute LxTerminal 
#(:     does not display into /dev/console 
#(: 	controlled via :  lcDevConsole=" > /dev/console" 
#(: calls: /bin/echo
#(: method:  polymorphic active "String to Display" 
#(: 	terminal = /usr/bin/xterm -e bash -c -e "/bin/sh %c"
#(: sends: 
#(: rationale : for Geany "terminal" use.
#(:             copied into CTB for encapsulation 
#(: usage:
#(:     Sys_Str2DevTrm "string" "color" "margin"
#(: 	like this:
#(:     lcMsgStr="ABCDEFG"
#(:     Sys_Str2DevTrm "$lcMsgStr" "2" "3"
#(:     Sys_Str2DevTrm "$lcMsgStr"  2   3
#(:
#(: ###  Shell script variables are not "typesafe,	
#(: note: BASH will 'type convert'  char vs number 
#(: 	example:
#(:     lcMsgStr="xxx" && Sys_Str2DevTrm "$lcMsgStr" "2" "3"
#(:     lcMsgStr="xxx" && Sys_Str2DevTrm "$lcMsgStr"  2   3
#(: 
#(:  Str2DevTrm displays to "/Dev/Console" or "Terminal" . 
#(:  this version is for "Geany" "BASH" "LxTerminal"  
#(: 		( "Str2DevTrm" used by MGN.sh is embedded in MGN.sh , also)
#(: 
#(:  if using Geany "BASH terminal" for tracing, 
#(:  then must use fx(Sys_Str2DevTrm) set for "terminal" display. 
#(:  same process is done in 
#(:		MGN.sh, E3R.sh, S2F.sh, C3C.sh, CTB.sh, CTU.sh, etc.  
#(: 
#(: 
#(:  note: todo: dev param zero check and substitution:
#(:  [ -z "${1}" ] && lcParStr="message"	for string
#(:  [ -z "${2}" ] && lcParClr="5"	
#(:			for color : 1,2,3,4,5   or  red,grn,yel,blu,pur
#(:  [ -z "${3}" ] && lcParMrg="3"	
#(:			for  margin : 1,2,3,4,5 where mrg=5,10,15,20,25,30
#(:
#(:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
#! ====================================================================
#(: function Sys_Str2Devrm
function Sys_Str2DevTrm() {  # ACTIVE   "String to Display/Terminal" 
#(: Sys_Str2DevTrm : 
#(:  capture all message params: ${1} string, ${2} color, ${3} margin . 
lcS2TStr=${1}   # STRING message 
lcS2TClr=${2}   # COLOR number 
lcS2TMrg=${3}  	# MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}   # "C"onsole  or  "T"erminal,  Default is "User Defined" below. 
#(:
#(: Sys_Str2DevTrm : 
#(: note: designed for use from Geany Execute LXTerminal as "local" output. 
#(:       does not display into /dev/console 
#(: 			unless lcDevConsole=" > /dev/console" 
#(:       terminal = /usr/bin/xterm -e bash -c -e "/bin/sh %c"
#(:
lcDevConsole=""  
#(: lcDevConsole = ""  is local default to GEANY "T"erminal Only Display
#(: IF " > /dev/console" = lcDevConsole   
#(:      THEN std out display is "Terminal"     ( CTB terminal runs in the light ). 
#(: IF "" 
#(:      THEN std out display is to "Console"   ( CTB terminal will run in the dark ).
#(:
#(: Standard Output Trap from param#1 
lcS2Topt=${4}	## "C"onsole  or  "T"erminal
case "${lcS2Topt}" in
   "C") lcDevConsole=" > /dev/console" ;;   # : is not used by CTB 
   "T") lcDevConsole="" ;;                  # : "T"erminal display for Geany Execute Terminal 
    *)  lcDevConsole="" ;;                  # : default to Std Out is "T"erminal display
esac 
#(:
#(: Margin Trap from param#3  as "number" | "char"   
#(:  default left-margin=10  
#(: case Margin 
case "${lcS2TMrg}" in
   0|"0") /bin/echo -n -e "\\033[0G"    >/dev/console ;; 
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"    >/dev/console ;;
esac
#(:
#(: Color Pattern for "most" BASH versions: 
#(: color trap  from param#2  "name"|"number"   ## default is "3" 
#(: Color: 1    2    3    4    5    6    7    8     9     10
#(: Color: red, grn, yel, blu, pur, cyn, wht, wblu, wgrn, wgry
#(:
#(: Color Trap from user defined:  "3" plus param  :  "\\033[1;3${lcS2TClr}m"
case "${lcS2TClr}" in
		#(:  numbers only version 
		""|"0")      /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;;
        # :	 "1"|"red")      /bin/echo -n -e "\\033[1;31m"   ${lcDevConsole} ;;
        # :	 "2"|"green")      /bin/echo -n -e "\\033[1;32m"   ${lcDevConsole} ;;
        # :	 "3"|"yellow")      /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;;
		 *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; 
esac
	/bin/echo -n "$lcS2TStr"  ${lcDevConsole} # string ending 
	/bin/echo -e "\\033[0;m"  ${lcDevConsole} 
	return  0
} # end: Sys_Str2DevTrm 
#
# ######################################################################
#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
### Embedded Graphics

#################################################################
# B.Apple RedBlu # /tmp/Icon-img-apple-redgrn.svg
echo '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
  <g 
style="fill:#1111FF; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
    <path d="m 30,30 30,30"/>
    <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
  </g>
</svg>
' > /tmp/Icon-img-apple-redblu.svg
#################################################################
# C.Apple RedYel # /tmp/Icon-img-apple-redyel.svg 
echo '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
  <g 
style="fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
    <path d="m 30,30 30,30"/>
    <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
  </g>
</svg>
' > /tmp/Icon-img-apple-redyel.svg
#################################################################
# D.Apple RedGreen # /tmp/Icon-img-apple-redgrn.svg # 
echo '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
  <g 
style="fill:#33DD33; stroke:#BE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
    <path d="m 30,30 30,30"/>
    <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
  </g>
</svg>
' > /tmp/Icon-img-apple-redgrn.svg
#################################################################
# E.Apple RedNNN # /tmp/Icon-img-apple-rednnn.svg # QUIT
echo '<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
  <g style="fill:none;stroke:#EE3333;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
    <path d="m 50,10 0,35"/>
    <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
  </g>
</svg>
' > /tmp/Icon-img-apple-rednnn.svg   # QUIT button 

    #~ <path d="m 50,10 0,35"/>
    #~ <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>

#################################################################




#~ # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#~ # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#~ # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#~ # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #(: fx(CTB_ScanOne)
#~ #(: called by: fx(CTB_ScanList)
#~ #(: param: Src, Als, Trg
#~ #(:  	required : lcBkpSaveNameSrc , lcBkpSaveNameAls , lcBkpSaveNameTrg 
#~ #(: purpose: BackUpCopy to ONE HardDrive/USB device
#~ #(: requires: "alias" for ONE HardDrive/USB device ( ie, sda3, sdb1, sdc1, sdd1 )
#~ #(: calls: 
#~ #(: method:   CTB_ScanOne will test if exist subdir, 
#~ #(:                if  [ -d ${lcFileOutDir} ]   
#~ #(:           then begin: ScanOne splash & COPY
#~ #(: sends: 
#~ #(: rationale: 
#~ #(: note : 
#~ #(:    TarOpt is writing to lcTarOptSaveNameTrg, possibly controlled by /CTB_config.sh
#~ #(:
#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #! ====================================================================
#~ function CTB_ScanOne() {     #(:  Active

#~ #(: local var: lcBucSaveNameSrc, lcBucSaveNameAls, lcBucSaveNameDirTrg
#~ lcBucSaveNameSrc=${1}      
#~ #(:    Src of fileDATA to be archived 
#~ lcBucSaveNameAls=${2}      
#~ #(:    Als of one Target Hard-Drive  
#~ lcBucSaveNameDirTrg=${3}      
#~ #(:    Trg [ "CTB_BackUp_"  base name wo "Ext" ] not developed. 

#~ #(:  fx(CTB_BackUpOne) will assign "EXT" = "_All" or "" as required

#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"
#~ lcMsgStr=">>>  CTB_ScanOne  with {$lcBucSaveNameAls} >>>" && Sys_Str2DevTrm "$lcMsgStr" "5" "0"
#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"

#~ #(:  begin clear colors for terminal trace
#~ /bin/echo -en "\\033[0;39m"     >  /dev/console #(:  color clear
#~ /bin/echo -en "\\033[70G"    >/dev/console 
#~ /bin/echo -en "\\033[1;33m "    >/dev/console 
#~ /bin/echo -e  "\\033[0;39m"   >/dev/console 
#~ #(:  end clear colors for terminal trace

#~ n=0

#~ #: ----------------------------------------------------------------------------
#~ #(:  in fx(CTB_ScanOne)
#~ #(:  build the "_EXT" : "_All" or "_Cur"
#~ lcBucSubDirTrgBaseAll="CTB_Backup_"
#~ #                                    
#~ # lcPupSaveNameWod="${lcPupSaveName}-CTB"   
#~ # lcPupSaveNameSrcCat="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
#~ # lcPupSaveNameSrcSpl="${lcPupSaveName##*/}"
#~ # lcPupSaveName="${lcPupSaveSrcCat##*/}"

#~ #(:  in: fx(CTB_ScanOne)
#~ #(:  todo: build names for COPY to saveDATA-CUR  
#~ #(:  todo: copy to "-cur"  TarOutSubdir to CurSubdir

#~ #(: 
#~ #(:  Each Call to this "BackUpOne" 
#~ #(:  will setup and send the specific special parameters. 
#~ #(:  boot drive will be "/initrd/dev_save" on author's OS
#~ #(:  non-boot drives will be "/mnt/home/sd??"  on author's OS
#~ #(: 
#~ #
#~ lcBucPSaveNameDts="`date +%y%m%d-%H%M-%S`"  #(:  "now" DTS 

#~ #(:  that was a 'new' dts comared to DTS from 'tar' TarOt . 
#~ #(:  todo: Require : the exact 'DTS' from 'tar' TarOpt .
#~ ### lcBucPSaveNameRaw="${lcPupSave}"  # 'raw' savefilename from PUPSTATE file
#~ ### lcPupSaveNameBasic="`echo $lcPupSave | cut -f 3 -d "/"`"  #(:  at this point in evolution. 

#~ #(:  below are   
#~ #(:  Run Modules 

#~ #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #(: Test for Flags Up 
#~ #(: Control BackUpOne Gui Display process 
#~ if [ -f "${CTB_FlgBugger_SD}" ]  || [ ${gcCTBmode} = "A" ]  ; then # Control Scan
    #~ lcBackOneStatusSD="SD"  #(:  Normal First Run Label
	#~ lnScanOneOk=1	# used in next block
#~ else
	#~ lnScanOneOk=0
#~ fi


#~ #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ # if [ "${lcBackOneStatusSD}" = "SD" ] ; then  ScanOneOk is true  
#~ if [ ${lnScanOneOk} -eq 1 ] ; then 	

#~ #(: begin: ScanOne Splash Main Splash "SEEKING"
#~ xmessage  -title "Scan-One-Status" -name 'CTB' -timeout 3 -center -bg yellow -fg blue " seeking ? ${lcBucSaveNameAls}  "
#~ #(: end: ScanOne Splash Main Splash "SEEKING"

	#~ lcFileOutDir="/mnt/${lcBucSaveNameAls}/${lcBucSubDirTrgBaseAll_}"
	#~ lcMsgStr="DirTrg All :${lcFileOutDir}:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
	#~ #
	#~ # if find target OutPut subdir , then OK to copy one 
	#~ if  [ -d ${lcFileOutDir} ]  ; then  	#(:  if Find Directory 

		#~ #(: *(1)* Copy  save-DATA-dts ALL 
		#~ #(:	Special for SDA1 
		#~ #(: ************************************************

		#~ lcFileIN="${lcTarOptSaveNameTrg}"  #(:  directly from "TarOpt"  tarptit
		#~ lcFileOutDir="/mnt/${lcBucSaveNameAls}/${lcBucSubDirTrgBaseAll}"
		#~ lcMsgStr="DirTrg All :${lcFileOutDir}:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
		#~ #: ----------------------------------------------------------------
		#~ lcMsgGtk="--- saveDATA <<< ${lcBucSaveNameAls} >>>>"
		#~ #: ----------------------------------------------------------------

		#~ #(: CTB_ScanOne will test if exist subdir, 
		#~ #(: then begin: ScanOne splash & COPY
		#~ if  [ -d ${lcFileOutDir} ] ; then 
			#~ lcMsgStr="IN:$lcFileIN:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"       #(:  terminal trace
			#~ lcMsgStr="OUT:< ${lcFileOutDir} >:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"  #(:  terminal trace
			#~ lcMsgStr="< $lcMsgGtk >:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"  #(:  terminal trace
			#~ #(:  if target /device/subdir/file is "found" then show red splash 
			#~ #(:  >>> Now OK to copy saveDATA to extended subdir >>> 

#~ /usr/lib/gtkdialog/box_splash -fg red -bg lightgreen   -close never -text ":Find SubDir OK: ${lcBucSaveNameAls}:" &

			#~ #(:  <<< Now OK to copy saveDATA to extended subdir >>> 
			#~ GTKPIDFC=$!
			#~ sleep .5
				#~ #(: >>> ScanList COPY one
				#~ cp -r  ${lcFileIN} ${lcFileOutDir}
				#~ #(: <<< ScanList COPY one
			#~ sleep 1
			#~ kill ${GTKPIDFC} 2>/dev/null 
		#~ else
			#~ lcMsgStr=":<>:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"       #(:  terminal trace
			#~ lcMsgStr="OUT:<No-Copy>:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"  #(:  terminal trace
			#~ lcMsgStr=":<>:" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"  #(:  terminal trace
#~ /usr/lib/gtkdialog/box_splash -fg blue -bg lightgreen   -close never -text ":?: ${lcBucSaveNameAls}:" &
			#~ GTKPIDFC=$!
			#~ sleep 1
			#~ kill ${GTKPIDFC} 2>/dev/null 
		#~ fi #  [ -d ${lcFileOutDir} ] 
		#~ #(: end: ScanOne splash & COPY  
	#~ else
		#~ n=0
	#~ fi  #(:  [ -d ${lcFileOutDir} ] 

	#~ kill ${GTKPIDSOM} 2>/dev/null  #(:  clear Scan One Main 
	
#~ fi  # end:  if [ ${lnScanOneOk} -eq 1 ] ; then 	

#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"
#~ lcMsgStr="<<<  CTB_ScanOne  {$lcBucSaveNameAls} <<<" && Sys_Str2DevTrm "$lcMsgStr" "5" "0"
#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"

#~ } # end: CTB_ScanOne



#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #(: fx(CTB_ScanList)
#~ #(: called by: fx(CTB_BackUpRun)
#~ #(: param: 
#~ #(: purpose: control calls to fx(CTB_ScanOne)
#~ #(: calls: fx(CTB_ScanOne)
#~ #(: method: refers to backup target subdir as "/CTB_Backup_" 
#~ #(: method: 
#~ #(: sends: 
#~ #(: rationale: 
#~ #(: note : On our OS, limit is usually 8 mounted hard drives , 
#~ #(:    as seen by OS at bootup.  
#~ #(: Note:
#~ #(:		copy is for the generic SDA1, SDB1, SDC1, et al 
#~ #(:		user can substitute any drive name, even system networked drives. 
#~ #(: Note: 
#~ #(:  common name local var is "Bkp"
#~ #(:
#~ #! ====================================================================
#~ function CTB_ScanList() {     #(:  Active

#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"
#~ lcMsgStr=">>> f(CTB-BKP_ScanList)--- local ---------------" && Sys_Str2DevTrm "$lcMsgStr" "2" "0"
#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"
    
#~ #!    NOTE: 
#~ #!    --- tar process was "Trg" from "Src" ---
#~ #!    --- f(CTB_ScanList) process is :
#~ #!        Source is "Src" and "Target" is "Trg" 

#~ #!  REQUIRED value WAS previously used in "tar Opt" 
#~ lcBkpSaveNameSrc="${lcPupSaveNameTrg}"  #(:  from TarOpt process
#~ # ---------------------------------------------------------------
 
#~ #!  
#~ #!    Each Call to "BackUpOne" 
#~ #!    will setup and send the specific special parameters. 
#~ #!    boot drive will be "/initrd/dev_save" 
#~ #!    non-boot drives will be "/mnt/home/sd##"
#~ #!  

#~ #!    if  sda1 is "/initrd/mnt/dev_save" and "_Cur" 
#~ #!    else    others are "/mnt/home/sda?"  and "_Cur" "  
#~ #!    fi

#~ #!    req label for subdir on each mounted hard-drive 
#~ #!  		which receives the CTB Backup.tar.gz output file
#~ export lcBkpSaveNameDirTrg="${gcCTBbackupSubDir}"	# "CTB_Backup_"
#~ #    

#~ #!    Send Param: lcBucSaveNameSrc, lcBucSaveNameAls, lcBucSaveNameDirTrg
#~ #!    Send: lcBkpSaveNameSrc, lcBkpSaveNameAls, lcBkpSaveNameDirTrg
#~ #!   
#~ #!    each call to HardDrive/USB : Same "Src", Different "Als", Same "Trg" .
#~ #!   
#~ #!    NOTE: sda1 is the primary booting hard-drive. 
#~ #!    CTB copies out-of primary booting hard-drive into other mounted hard-drives .
#~ #!  
#~ #!    begin: Hard coded 'list' of possible mounted hard-drives. 
#~ #!    limit is usually 8, depends on BIOS hardware and OS distro. 
#~ #!    Authors systems are MS-XP class computers, 2010, so limit for us is 8.
#~ #!    But, each must have subdir "/home""${gcCTBbackupSubDir}" 
#~ #!      to receive the ".tar.gz" Scan Transferred files. 
#~ #!  

#~ # TarOpt is writing to lcTarOptSaveNameTrg, possibly controlled by /CTB_config.sh

	#~ #(:  begin CTB_Backup sda2 ===
	#~ lcBkpSaveNameAls="sda2"     #(:  Prefix name
	#~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
	#~ #(:  end CTB_Backup sda2 ===

	#~ #(:  begin CTB_Backup sda3 ===
	#~ lcBkpSaveNameAls="sda3"     #(:  Prefix name #(:  not in this system 
	#~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
	#~ #(:  end CTB_Backup sda3 ===

	#~ #(:  begin CTB_Backup sdb1 ===
	#~ lcBkpSaveNameAls="sdb1"         #(:  Prefix name
	#~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
	#~ #(:  end CTB_Backup sdb1 ===

	#~ #(:  begin CTB_Backup sdb2 ===
	#~ lcBkpSaveNameAls="sdb2"         #(:  Prefix name
	#~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
	#~ #(:  end CTB_Backup sdb2 ===

    #~ #(:  begin CTB_Backup sdc1 ===
	#~ lcBkpSaveNameAls="sdc1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdc1 ===

    #~ #(:  begin CTB_Backup sdc2 ===
	#~ lcBkpSaveNameAls="sdc2"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdc2 ===

    #~ #(:  begin CTB_Backup sdd1 ===
	#~ lcBkpSaveNameAls="sdd1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdd1 ===

    #~ #(:  begin CTB_Backup sde1 ===
	#~ lcBkpSaveNameAls="sde1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sde1 ===

    #~ #(:  begin CTB_Backup sdf1 ===
    #~ lcBkpSaveNameAls="sdf1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdf1 ===

    #~ #(:  begin CTB_Backup sdg1 ===
    #~ lcBkpSaveNameAls="sdg1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdg1 ===

    #~ #(:  begin CTB_Backup sdh1 ===
    #~ lcBkpSaveNameAls="sdh1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdh1 ===

    #~ #(:  begin CTB_Backup sdi1 ===
    #~ lcBkpSaveNameAls="sdi1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdi1 ===

    #~ #(:  begin CTB_Backup sdj1 ===
    #~ lcBkpSaveNameAls="sdj1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdj1

    #~ #(:  begin CTB_Backup sdk1 ===
    #~ lcBkpSaveNameAls="sdk1"         #(:  Prefix name
    #~ CTB_ScanOne ${lcBkpSaveNameSrc} ${lcBkpSaveNameAls} ${lcBkpSaveNameDirTrg}
    #~ #(:  end CTB_Backup sdk1

#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"
#~ lcMsgStr="<<< f(CTB-BKP_ScanList)--- local ---------------" && Sys_Str2DevTrm "$lcMsgStr" "2" "0"
#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr"

#~ #(: --------------------------------------------------------------
#~ #(:  ScanLis must be run before change dir back to original CWDIR 
#~ #(:         cd "$CWDir"    #  this will point back to 'home' 
#~ #(: --------------------------------------------------------------
#~ } # end: CTB_ScanList
#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ #(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;









# ######################################################################
#(: ======================================================================
#(: fx(CTB_ClearFlgSys)
#(: called by: CTB_BackUpRun, 
#(:		and FT(EXIT="BackUpCall+"), 
#(:		and FT("$EXIT" = "QuitCall+")
#(: param: 
#(: purpose:  clear flags in /tmp , prep for "ReStart" into "CTB" program.
#(: calls: rm
#(: method: rm -f 
#(: sends: 
#(: rationale: clear flags so they do not interfer with "ReStart" into "CTB" program. 
#(: note : All /tmp files are cleared by OS at shutdown. 
#(:
#!
#! ====================================================================
#(: function CTB_ClearFlgSys
function CTB_ClearFlgSys() {    # ACTIVE
	n=0
    #(: flags raised by "CTB" system
    rm -f "${CTB_FlgLockFile}"          # release GUI 'Running'.
    rm -f "${CTB_FlgBackupStatus}"      # release GUI display var
    rm -f "/tmp/box_help"               # used by fx HELP and fx FAQ  
	rm -f /tmp/flagnextpassthru			# special from SMP or TarOpt
	rm -f /tmp/snapmergepuppy-error		# special from SMP
	rm -f /tmp/delayedrun_finished_flag	# special during CTB, via call from MGN. 
	#
} # end: fx(CTB_ClearFlgSys)
#


#(: ======================================================================
#(: fx(Sbr_Box_Message)	  # internal mod on gtkdialog box_help 
#(: called by : 
#(:    GuiHLP+   to  fx(Sys_Box_HLP)   to  Sbr_Box_Message
#(:    GuiFAQ+   to  fx(Sys_Box_FAQ)   to  Sbr_Box_Message
#(:    GuiNOTE+  to  fx(Sys_Box_NOTE)  to  Sbr_Box_Message
#(:
#(: receives param : Header$1 and loads '/tmp/box_help'
#(: purpose : custom Simple Message sbr 
#(:   based on gtkdialog box_help code processes.
#(: usage :
#(:   HEADING is a short "title bar" description. 
#(:   XML code is custom written to format "/tmp/box_help".
#(: returns: 
#(: method: 
#(:     gtkdialog --center -p XML-Format-file (which loads /tmp/box_help ) 
#(:
#(: note:
#(: purpose :  Simple Message sbr based on gtkdialog box_help
#(:   which allows author to change the "lead-in" XML code 
#(:   and thus change the "format" of this custom "message_box". 
#(:   Sbr_Box_Message does provide a "OK" user button. 
#(:   Sbr_Box_Message does provide a "markup" on text. 
#(:   Sbr_Box_Message does provide dimension changes. 
#(:   Sbr_Box_Message does not require a "URL" param.
#(: note:
#(:   XML assumes /tmp/box_help and "gtkdialog -p" internal code. 
#(:   XML sets up the markup and color options for the imported text. 
#(:   XML sets up the "OK" control button, and will show/close/"OK"
#(:   XML will return via "CTB_ReStart"  , not directly to GUI EDIT: line.
#(:
#!
#! ====================================================================
#(: function Sbr_Box_Message
function Sbr_Box_Message() {  # ACTIVE
n=0
#~ export TEXTDOMAIN=libstardust
#~ export OUTPUT_CHARSET=UTF-8
#:  we are allowing a param for "HEADING"
if [ "$1" ] ; then
	Box_Msg_Heading="${1}"	
    #:  parm #1 if sent. 
else	
    #:  else default standard 'heading'.
	Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
fi
#
#! # custom subroutine to prep CTB "Box_MessageXML" process. 
#! Loads the "/tmp/box_help" with options. 
export Box_MessageXML='
<window title="'$Box_Msg_Heading'" default-height="570" default-width="750">
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
#:  same as eval "`gtkdialog --center -p Box_MessageXML`" 
gtkdialog --center  -p Box_MessageXML	# assumes /tmp/box_help

#(:  This gtk box sub-routine shows text via "gtkdialog box_help" code.
#(:  This XML code block sets up the dimension, markup, color, exit options for the imported text. 
#(:  "gtkdialog -p" will read the default '/tmp/box_help' file via "XML" code block. 
#(:  (1) Markup/color are valid
#(:  (2) Sets up the "OK" control button, and will show/close/"OK"
#(:  (3) Sets up the dimensions, so long lines need not be scrolled. 
#(:  (4) calls CTB_ReStart, does not return to GUI EXIT: line
#(:
} #( end: fx(Box_MessageXML)

#
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: fx(Sys_Box_HLP)
#(: called by : Main_GUI GuiHLP+
#(: receives param : none and /tmp/box_help .
#(: requires output Help-Text-File: > /tmp/box_help
#(: purpose :  display Help Text from this program in GTK box.
#(: calls: /usr/lib/gtkdialog/box_help  and "/tmp/box_help"  
#(: method:	called from: Main_GUI line.
#(: cleanup: rm -f /tmp/box_help
#(: purpose :  direct link from Main_GUI , returns to same.
#(: rationale : "Help" and "FAQ" Information for user. 
#(:	returns focus back into: Main_GUI line.
#(: note: 
#(:		gae 191119-0900, first mod
#(:		reduce this to HLP only and allow sending parameters. 
#!
#! ====================================================================
#(: function Sys_Box_HLP
function Sys_Box_HLP() {    #  CTB Active
    n=0
	lcFileHelpTxt="/tmp/box_help"	#! file is required by gtkdialog original source code. 
	#
    echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "   ======="</span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     CTB HLP "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "   =======" </span></span>
<span foreground='"'green'"'>" "${gcCtxDevDob}"  "</span> " glene77is ---v: ${gcCtxDevVer} "
.
<b><span foreground='"'red'"'>"---------------------------------------------------------"</span></b>
<b><span foreground='"'red'"'>" 	Cold-TarZip-Backup method is this  : "</span></b>
<b><span foreground='"'green'"'>" Click "BackUp" for simple single Backup "</span></b>
<b><span foreground='"'green'"'>" will write backup 'tar.gz' file  "</span></b>
<b><span foreground='"'green'"'>"          to local Puppy OS subdir. "</span></b>
	or
<b><span foreground='"'red'"'>"---------------------------------------------------------"</span></b>
<b><span foreground='"'red'"'>"IF you want to write the 'tar.gz' file to custom subdir"</span></b>
<b><span foreground='"'brown'"'>"THEN write '/CTB_config.sh'  "</span></b>
<b><span foreground='"'brown'"'>"... containing the special subdir."</span></b>
<b><span foreground='"'brown'"'>"... good example is:   /mnt/home/  "</span></b>
.
<span foreground='"'red'"'>"CTB calls Tar.gz for fast backup "</span>
<b><span foreground='"'green'"'>"'TAR' the 'Unix Tape ARchive' method"</span></b>
<b><span foreground='"'green'"'>"'which pipes thru GZIP '"</span></b>
.
<span foreground='"'blue'"'>"CTB is designed specifically for "</span>
<span foreground='"'red'"'>"    "Official" Puppy Linux"</span>
<b><span foreground='"'green'"'>"Puppy 32/64-bit FRUGAL SaveFOLDER"</span></b>
<b><span foreground='"'green'"'>"Puppy 32/64-bit FRUGAL SaveFILE.4fs"</span></b>
.
<b>1)</b> CTB <b>automatically appends
   the "DTS yr-mo-dy-seconds" stamp</b>
   to the Backup file .tar.gz name.
   This kills possible duplications !
<b>2)</b> CTB <b>automatically pre-Runs 
	"SnapMergePuppy"</b> to update/merge 
	the RAM into the 'saveDATA'.
.
.
<b><span foreground='"'darkred'"'>CTB will back-up from 'source'->'target'</span></b>
... exactly as prescribed in 'PUPSTATE'.
<b><span foreground='"'darkred'"'>CTB is controlled by the 'PUPSTATE' var</span></b>
... as written by the Puppy Linux OS .
<b><span foreground='"'darkred'"'>CTB 'PUPSTATE' contains the "State" values</span></b>
... of the currently running Puppy OS.
<b><span foreground='"'darkred'"'>CTB will use <span foreground='"'green'"'>'PUPSTATE'</span> data</span></b>
... to find the Source and Target .
<b><span foreground='"'darkred'"'>CTB can be <span foreground='"'green'"'>MODIFIED</span> to back-up</span></b>
... ANY 'source' to any 'target'.
.
To RESTORE:
''XArchive', will 'Extract all' from inside 
<b>saveDATA-CTB---tar.gz</b> file.
.
<b><span foreground='"'darkred'"'>"Note: When Running Executable BASH script :"</span></b>
Always check the file "\'set action\'"
... ' $ @ '  'Use-Command'
Always check the file "\'type\'"
... 'Exec'
Always check the file "\'Properties\'"
... 'Exec'
Always check the file "\'Permissions\'"
...'Executable'
Always examine other running scripts
to see how Your System is setting things.
#:
#: uses: /tmp/box_help
#:
... end of file 'HELP' text ..................................."\
> ${lcFileHelpTxt}   # /tmp/box_help	
#  "/tmp/box_help"	was required by orig GTK source code for /usr/lib/gtkdialog/box_help . 
# 
# first param is only for the "title" top line. 
Sbr_Box_Message "=${DISTRO_NAME} = HELP = gtk 'Sbr_Box_Message' and /tmp/box_help"
# 
#: ------------------------------------------------------------
#(:  BasePIDfile is "/tmp/box_help"
#(:  output storage file MUST BE "/tmp/box_help" 
#(:  due to hard-code in "/usr/lib/gtkdialog/box_help" 
#(:  Modifying would create a "dependency" problem for users. 
#: ------------------------------------------------------------
} #(: end: Sys_Help_Box



    #~ <span foreground='"'green'"'>"* simply copy into /root/my-applications/bin."</span> 
    #~ <span foreground='"'green'"'>"  which is in executable search path as set by Puppy."</span>
    #~ <span foreground='"'green'"'>"* rename file to 'CTB.sh' , set permissions 'executable'"</span>
    #~ <span foreground='"'green'"'>"* from LXTerminal, enter " . CTB.sh" and it runs proper."</span>

#
#(: ======================================================================
#(: fx(Sys_PupState)
#(: called by: CTB_StartUp ()
#(: param: requires Linux Puppy  /etc/rc.d/PUPSTATE  system "state" file.
#(: purpose: 
#(:      gather PUPSTATE var/constants into this CTB .
#(:      control generation of local var/constants .
#(: calls: fx(Sys_PupState)
#(: method: 
#(: sends: 
#(: rationale :
#(:      Puppy writes the "state" variables into /etc/rc.d/PUPSTATE .
#(:      Puppy OS writes the 'Linux Puppy universe' into this file !!!
#(:      this routine reads the "state" file to gather constants.
#(:      this routine declares/assigns more local CTB var.
#(:  returns: numerous memvar 
#(: note : 
#(:
#(: -------------------------------------------------------------------
#(: --- load PUPSTATE --- from system location : "/etc/rc.d/"
#(: --- Puppy OS writes the 'Puppy Linux Universe' into this file !!!
#(: --- At end of rc.sysinit  or  library rc.zSLP.sh  user can append more lines.
#(: -----------------------------
#!
#! ====================================================================
#(: function Sys_PupState
function Sys_PupState() {    # ACTIVE
    #: -------------------------------------------------------------------
    #: === begin: maintain gcCtxDevDob ( Developer's DTS ) .
    #:  (1) save   before PUPSTATE into tmp 
    tcVerDtsTmpPS="${gcCtxDevDob}"  
    #:  (2) load PUPSTATE )
    . /etc/rc.d/PUPSTATE
    #:  (3) restore after PUPSTATE from tmp
    gcCtxDevDob="${tcVerDtsTmpPS}"  
    #: === end: maintain gcCtxDevDob ( Developer's DTS ) .
    #: -------------------------------------------------------------------

    #:  Note: grave-mark in date ( ) !!!
    #~ gcCtbDts=""   # not used
    #~ export gcCtbDts="`date +%y%m%d-%H%M-%S`"   # not used
    #:  Note: grave-mark in date ( ) !!!

    #:  in: fx(Sys_PupState)
    #: =============================================================
    #:  direct import to similar varname, used local to CTB
    lcPupSave=${PUPSAVE}
    #~ lcPupMode=${PUPMODE}   # not used
    #~ lcPupSubDir=${PSUBDIR}   # not used
    #~ lcPupHome=${PUP_HOME}   # not used
    

    #:  build-standard var: maintain similarity to PUPSTATE "name"
    #:  CTB 'raw' savefilename from PUPSTATE file

    lcPupSaveNameCut="`echo $lcPupSave | cut -f 3 -d "/"`" 
    #:  CTB 'cut' savefilename from PUPSTATE file

    lcPupSaveNameSrc="${lcPupSaveNameCut}" 

    #: =============================================================
    #:  begin: create a record sysDTS marker 
    lcFileNameDTS="/0-CTB-DTS"
    touch -f "${lcFileNameDTS}"	
    #:  record sysDTS marker
    #:  end: create a record sysDTS marker

    #: =============================================================
    #:  build intermediate string from "Src" with DTS appended.
    lcPupSaveNameTrgTmp="${lcPupSaveNameSrc}-CTB-`date +%y%m%d-%H%M-%S`"     
    #:  grave-mark in date () !!!


    #: =======================================================================
    #:   build Target filename for TarOpt , no subdir , before GUI 
    #:  this CTB version, assumes target subdir is local to Puppy OS "saveDATA"
    lcPupSaveNameTrg="${lcPupSaveNameTrgTmp}.tar.gz"
    #: 
    #:  lcPupSaveNameTrg  is required by the "TarOpt" string 
    #:  currently: TarOpt will assume subdir is local to Puppy OS "saveDATA"
    #:       tar ${TAROPT} -f ${lcPupSaveNameTrg} ${lcTarOptSaveNameSrc} 


    #: #########################################################################
    #: ------------------------------------------------------------------------
    #:      saveDATA source name is from PUPSTATE 
    #: lcPupSaveNameSrc="${lcPupSaveName##*/}" 
    #:  via ${PUPSAVE} via PUPSTATE file. 

    #~ export gcCtbKernVer="`uname -r`"	 

    #:  Later in the CTB Code, you will find several "export" expressions.
    #:  'export' empowers the "CTB_Main_Gui", this is a "requirement" for Main GUI.
    #:  'export' Marks each NAME/SubRoutine for automatic export 
    #: 		to the environment of subsequently executed commands
    #: 		providing "global" visibility of var.
    #:  If VALUE is supplied, then assign VALUE during the export.

} #( end: fx(Sys_PupState)


#
#(: ======================================================================
#(: fx(CTB_ReStart)
#(: called by: GTK, other selections, but not 'QUIT'
#(: param: 
#(: purpose: Handle several fx for ReStart CTB script.
#(: calls: 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : 
#(:  >>> Control Flags for Interlocking of user Options.
#(:  do NOT call ClearFlgSys , maintain Scan Flag . 
#(:
#!
#! ====================================================================
#(: function CTB_ReStart
function CTB_ReStart() {    # ACTIVE
        
    #~ lcMsgStr="*** ClearFlgLockFile" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
    rm -f "${CTB_FlgLockFile}"     
    #:
    #~ lcMsgStr="*** ClearFlgBackupStatus" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
    #:
    rm -f "${CTB_FlgBackupStatus}" 
    #:
    #~ lcMsgStr="*** ReStart CTB $0" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
    ${gcCtbZeroRun}     ### rc.z_CTB.sh 
    #~ #:  this will restart this "$0" program 
    #: ---------------------------------------------------------
} # end: fx(CTB_ReStart)
#
#(: =====================================================================
#(: fx(CTB_StartUp)
#(: called by: Main 
#(: param: 
#(: purpose: general StartUp process , export. 
#(: calls: 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : 
#(:
#!
#! ====================================================================
#(: function CTB_StartUp
function CTB_StartUp() {    # sbr Main()  #  ACTIVE

    #!  CTB_StartUp calls to Set Version DTS subroutine
    Sys_SetVerDts   
    #!  CTB_StartUp calls for Puppy "STATE" file data to be loaded. 
    Sys_PupState        
     
    #(:  ref:
    #(:  Surprised me !    
    #(:  Pupsave_Zipit original , v1 and later,  had "export LOCDEFAULT="/mnt/home"
    #(:  LOCDEFAULT was 'hard-coded', in original v1 .  
    #(:  LOCDEFAULT was NOT calculated from available values, per BK example. 
    #(:  Surprised me !    
    #(:  ref:

    #:  Assign/Declare: path of currently mounted save file, manually.
    #:  Hard Code the Puppy Linux Default "/mnt/home" subdir 

    #(:  V.1 info is   /initrd/mnt/save_dev  +plus+  /pup_UpupBB+24/upupbbsave-BB+24_gen 
    #(:  but, V.1 HotBackUp Select-Box failed to 'see' this forked location 
    #(:  on author's multi-boot USB Flash-Drive OS , 
    #(:  which is like this :
    #(:      sda1 for "/initrd/mnt/dev_save" for running subdir.   
    #(:      /mnt/ (sdb1, sdc1, sdd1, sde1) for remaining drive specs. 
    #(: 
    #(:  specific fileNAME for saveDATA is known via PUPSTATE. 
    #(:  PUPSFS='sda1,ext3,/pup_UpupBB+21/puppy_upupbb_19.03.sfs'
    #(:  PUPSAVE='sda1,ext3,/pup_UpupBB+21/upupbbsave-BB+21_1202'
    #(: 
    #(:  ex. saveDATA subdir is "/pup_UpupBB+24" 
    #(:  ex. saveDATA name is "pup_UpupBB+24-slx" 
    #(:  ex. /subdir/saveDATAname is /pup_UpupBB+24/upupbbsave-BB+24-slx
    #(: 
    #(:  in "hot backup v.1.2" from 2010, 2byte, assumed a HardDrive Boot. 
    #(:  Thus, our specific /subdir for PuppyOS was not detected properly. 
    #(:  We use a USB booted system across all our workstations
    #(:    giving possibility to mount any hard-drive as a slave.   
    #(:  ex. "/mnt/home/"  versus  "/initrd/mnt/dev_save"  caused some failures
    #(:      when running "hot backup v.1.2" from 2010. 
    #(:  
    #: export CTB="CTB"	
    #: entered by Dev at top of source code. 
    export CTB_REFRESH_INTERVAL=1000 
    #:  1 second refresh rate for Date-Time-Stamp name of TarOpt output file.  
    #:		used in Main Gui . 
    #: Export-Declare-Assign names of 'Bugger' activity markers in /tmp 
    #:     as required by fx(CTB_ScanList) and fx(CTB_ScanOne), et al. 
    #~ export CTB_FlgBugger_SD="/tmp/CTB_FlgBugger_SD"
    #: flags show the "BackUp" or "DONE" status in "BackUp buttom" of GUI.
    export CTB_BackUpStatus="/tmp/CTB_BackUp_Status"
    #: flags generate/export the name of the 'lock-file', unique to "CTB" program.
    export CTB_FlgLockFile="/tmp/CTB_FlgLockFile"
    #:  export CTB_FlgLockVal='0'	#(:  not used
    #(: Note: Puppy Linux System "STATE" file is "/etc/rc.d/PUPSTATE"
    #(:    PUPSTATE is used to control the operations of "CTB" 
    #(: SaveDATA name is Required for " du -c -m -s ${} "  for "directory usage" via PUPSTATE .
        #~ bkp="${1}"
        #~ case "$bkp" in
            #~ "/mnt/home"*|"/initrd/mnt/dev_save"*) drv="dev_save" ;;
            #~ "/mnt/"*) drv="`echo "$bkp" | cut -f 3 -d '/'`";;
            #~ *) PHB_ERROR_RESTART "You can only back up a pupsave to a device mounted on /mnt ..." ; return 1 ;;
        #~ esac

    export CTB_PupSaveDataName="/mnt/home"`grep PUPSAVE /etc/rc.d/PUPSTATE | cut -f 3 -d "," | cut -f 1 -d "'" ` 

    #(: Note: "SaveDATA" refers to the name of the Linux Top-Layer Saved data 
    #(: 	which is written by "snapmergepuppy" 
    #(:		and also the reference to the TarOpt output file.tar.gz .
    #(:  lcSaveData is required to calculate "Backup Free Disk Space" for main GUI
    #(:  generate in fx(CTB_StartUp) as "lcSaveData", subroutine is near line 906. 
    lcSaveData="`echo $lcPupSave | cut -f 3 -d ","`"

    #: Note:
    #: "SaveDATA" required for cd ${1%/*} 
    #:   dirname $CTB_PUPSAVE_PATH   is  location of saveDirectory  or  saveFile.4FS   
    export CTB_PUPSAVE_PATH="/mnt/home${lcSaveData}"

    #(:  export CTB_PUPSAVE_NAME="${SF##*/}" #(:  not used. 
    #(:  was just left over from original code in hot-backup_v.1.2. 2010. 
    #(:  ${SF##*/} = basename $SF was not properly assigned.
    #(:  orig: export PUPSAVE_Fn="${PUPSAVE_NAME}-CTB-`date +%y%m%d-%H%M-%S`"

    #:  required exports of fx() subroutine names 

    export -f Sys_Str2DevTrm
    export -f CTB_TrgFilename
    export -f Sys_Box_HLP   
    export -f CTB_ReStart
    export -f CTB_ClearFlgSys
    export -f CTB_BackUpRun

    echo "" 
    #:  bump the running/trace terminal window display . 

    #:  saveDATA PupRamObj size calc 
    #:  this is run at "startup" , so to be 'stable'. 
    #: aa="$(du -c -m -s ${CTB_PupSaveDataName} )"     # error flag on Zero-length file 
    aa="$(du -c -m -s ${CTB_PupSaveDataName} )"     # error flag on Zero-length file 

    #: read -r b ccc <<< "$aa"
    #:  options: -c = --total, -m = --block-size=1m, -s = --summarize
    read -r b ccc <<< "$aa"
    lcPupRamObj="${b}"

    #:  collect for use in Main GUI #  required this for static <label>  , 2262
    #:  lcMsgStr=" " 
    #:  left margin spacing for lcPupRamObjMsg ${lcMsgStr}
    export lcPupRamObjMsg=" # Source saveDATA Size : ${lcPupRamObj} MB # "

    echo "" > /dev/console

} # end: fx(CTB_StartUp)


#
#(: ====================================================================
#(: fx(CTB_TrgFilename) 	# Active on main gui splash
#(: called by: main gui : <action>refresh:CTB_TrgDts</action>
#(: param: 
#(: purpose: echo PUPSAVE_NAME to Main_GUI () REFRESHED by timer
#(: calls: 
#(: method: active "echo" inside GUI  like this   "Backup DTS .ext :"
#(: sends: echo to Main_GUI command line, 
#(:      to refresh Target Filename every second. 
#(: rationale: 
#(: note : GUI 2808
#(!
#! ====================================================================
#(: function CTB_TrgFileName
function CTB_TrgFilename()  {   # ACTIVE on main gui splash
    n=0
    #:  fx() name used in Main_GUI,  
    #: active "echo" inside GUI 
    #: called by: main gui : <action>refresh:CTB_TrgDts</action>
    #:      to refresh Target Filename every second. 
    #: lcMsgStr="           Target: " #  used for display spacer on gui screen.
    lcMsgSpacer="           : " #  used for display spacer on gui screen.
    #:  "Backup DTS .ext" is an active "echo" inside GUI 
    echo -n " ${lcMsgSpacer} Backup DTS .ext : -CTB-`date +%y%m%d-%H%M-%S`        "  
    #:  for GUI-Display #  grave-mark in date () !!!  
} #( end: fx(CTB_TrgFilename)


#
#(: ====================================================================
#(: fx(CTB_BackUpRun)    #(:  Active CTB_Backup "TarOpt" 
#(: called by: Main, Main_GUI, EXIT:BackUpCall+ , to activate the BackUpRun
#(: param (1) : $CTB_PUPSAVE_PATH
#(: param (2) : $CTB_BACKUP_PATH
#(: purpose: Build DestFileName : $CTB_PUPSAVE_PATH $CTB_BACKUP_PATH
#(: calls: CTB_ScanList
#(: method: refers to backup target subdir as "/CTB_Backup_" 
#(: sends: 
#(: rationale: 
#(:  note :
#(:      When Running in 'Geany', use the 'Execute', 'BASH Terminal' mode,
#(:  note: 
#(:      during backup process, "du" has system error msg .
#(:      "   du: invalid zero-length file name  "
#(:      Which is displayed in the Terminal window.
#(:      Which arises when parsing past end of stack,
#(: 	 Which is a BASH system problem. 
#(:		 Which was always present in the HotBackup programs. 	
#(:      Which is NON-fatal in this program.
#(:
#!
#(: function CTB_BackUpRun
#! ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ====================================================================
#(: function CTB_BackUpRun
function CTB_BackUpRun() {    # ACTIVE 

    #~ lcRunParStr1=${1}	#  from fx(CTB_BackUpRun)
    #~ lcRunParStr2=${2}	#  from fx(CTB_BackUpRun)

	n=0
# =======================================================================
if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]    ; then # BackUpRun splash
# fi # [ ${gcCTBmode} = "B" ]   ; then
lcDialogColor="  -fg yellow    -bg blue "
lcMsgStr="--- ${gcCTBmodeId} Tar.Gz Running Backup ---"    # splash "RUNNING" background yel/red splash 
/usr/lib/gtkdialog/box_splash ${lcDialogColor}  -border true -close never \
-text " 
.     ${lcMsgStr}  
.
.
.
.
.
.
                            " &
		GTKPIDRUNNINGBG=${!}
        sleep 1  
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]    ; then # BackUpRun splash

    # ===========
    Sys_SYNC
    # ===========

    # ===========
    Sys_SMP
    # ===========

if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]    ; then # BackUpRun splash
# fi # [ ${gcCTBmode} = "B" ]   ; then
    kill ${GTKPIDRUNNINGBG} 2>/dev/null
# if [ ${gcCTBmode} = "B" ]   ; then
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]    ; then # BackUpRun splash
    
    
        #~ lcDialogColor="  -fg yellow    -bg black "
        #~ lcRunNum="19" 
        #~ for (( i = 1; i <= 3; i++ )) ## "C" syntax
        #~ do 
            #~ n=0
            #~ lcMsgStr="${gcCTBmodeId} <${i}>  nice -n ${lcRunNum} SnapMergePuppy" 
            #~ /usr/lib/gtkdialog/box_splash ${lcDialogColor} -close never -text "$lcMsgStr" &
                    #~ nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw   2>/dev/null  
            #~ GTKPIDSMP0=$!
            #~ sleep .5
            #~ kill $GTKPIDSMP0 2>/dev/null
        #~ done 
        #~ lcMsgStr="+++ CTB_BackUpRun =========================================" && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"

        #(:  "CWDir" is anacronym for "Current Working Directory" .
        #(:  "PWD" is system var for "/root" , base of current sys ops.
        #(:           PWDir="$PWD"

        PWDir="$PWD"

                    #~ #:  param (1) is $CTB_PUPSAVE_PATH
                    #~ lcMsgStr="+++CTB_BackUpRun =========================================" && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"
                    #~ lcMsgStr=">>> $ { 1% } is ${1} <<< param #1" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
                    #~ lcMsgStr=">>> $ { 1% /* } is ${1%/*} <<< subdir of source saveDATA" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
                    #~ lcMsgStr="PWDir points to '/root' path level (sys var) <" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
                    #~ lcMsgStr="CWDir=PWdir : $PWdir  <" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
                    #~ lcMsgStr="+++CTB_BackUpRun =========================================" && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"
                    #~ #:  end: these notes show in Geany Execute Terminal mode : 

        CWDir=$PWDir  # Swap Working Directories, CWDir=$PWDir , /Root into /Current .

        #(:  now, CWDir points to "local" path level, where Puppy OS is installed. 
        #(:     'tar' will see it is 'home'.
        #(: 
        #(:  this "flipping" between PWDir and CWDir is necessary because
        #(:      CTB program is receiving full /mnt/home/path/subdir/filenames
        #(:      whereas 
        #(:      'tar' is using a "local" /path/subdir/filenames 
        #(:  Perhaps we will write a future version of CTB 
        #(:  including a re-write of these obtuse file-name handling methods,  
        #(:  to be more simple, and still pull data from 'PUPSTATE' .
        #(: 
        #(:  Use of 'PUPSTATE' is key to standard Puppy Linux System ops. 
        #(:  Use of Barrie Kauler's code is best method, 
        #(:		and was useful on author's "USB boot mounting methods" 
        #(:		to treat all drives on any Hard-Drive system as "Slave-Hard-Drives". 
        #(: 
        #(:  This "flipping" method from early PuppyBackup code seems obtuse, 
        #(:  but other methods are also cumbersome and hard to read. 
        #(: 
        #(:  ref #(:  "Pupsave_Zipit" original "v1.2" had this: 
        #(: 		export LOCDEFAULT="/mnt/home" as "hard-code" . 
        #(: 
        #(:  -------------------------------------------------------------------
        #(: 
        #(:  In this version of CTB :
        #(:  CTB system runs from '/root' like most Linux programs,
        #(:  but 'tar' routine is written 
        #(:      to use the short-form 'local' file-names .
        #(:  (1) we flip from original '/root' to working 'local' /path/subdir
        #(:      when calling 'tar' for saveData .
        #(:  or
        #(:  (2) we flip from '/root' to  '/path/subdir/filename.4fs'
        #(:      when calling for saveData .   Same thing. 
        #(: 
        #(:  we 'flip' back to original '/root' after 'tar' runs .
        #(: 
        #(:  that is why we have kept the 'flipping' code 
        #(:          PWDir="$PWD"
        #(:          CWDir=$PWDir    #(:  save points to /root
        #(:          cd "$CWDir"     #(:  points back to /orig
        #(: 
        #(:  Alternative methods have their own complexities. 
        #(:  
        #(:  -----------------------------------------------------------------
        #(:  CTB  gets control info from the system
        #(:     via the system file "/etc/rc.d/PUPSTATE"
        #(:     PUPSTATE is always valid at runtime for Puppy OS.
        #(:  It is important to have PUPSTATE control things, 
        #(:  and program is written around that idea.
        #(:  -----------------------------------------------------------------
        #(: 
        #(:  NOTE: about paramters sent to 'tar'
        #(:  'tar' does not care what kind of data is the Source Data .
        #(:  SaveDATA can be "upupbb-???.4fs" or "upupbb-???"
        #(:     or some other subdir or file . 
        #(:  SaveDATA is just an "object" to be archived by "tar". 
        #(: 
        #(:  CTB takes the saveDATA as Source name and runs it thru 'Tar' .
        #(:   source can be  /subdirname , containing Linux data set .
        #(:   source can be  file.4fs , containing a '.4fs' Linux data set .
        #(:   source can be  anything that 'tar' can read .
        #(:  CTB could be written to handle back-up for any file set.
        #(:  "tar" will return "RETVAL" for testing.  Traps are set for that.
        #(:  -----------------------------------------------------------------


if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]    ; then # "Main TarOpt Progress Splash" 
# fi # [ ${gcCTBmode} = "B" ]   ; then
    #: Splash === "Main TarOpt Splash" ====
    #:  must maintain this "character measured" format 
    #:  so multiple splash will fit inside the Main Splash format !
    #:  This splash is the major "BackGround" Image, 
    #:     and subsequent minor splash will display inside Main.
    #:  main box_splash width is 40, fill it so multiple splashes fit good.

        #~ lcMsgStr="Main Splash 'please wait' --- " && Sys_Str2DevTrm   "${lcMsgStr}"   "1" "3"
        #~ lcMsgStr="Terminal Ctrl-C will kill process ---" && Sys_Str2DevTrm   "${lcMsgStr}"   "1" "3"
        #~ lcMsgStr="Main Splash 'please wait' --- " && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"

    #: begin : SPLASH TarOpt MAIN ======= Progress Report
    #: begin : SPLASH TarOpt MAIN ======= Progress Report
    #: begin : SPLASH TarOpt MAIN ======= Progress Report

    #~ lcMsgStr="  MAIN Splash BackGround ... Tar from : ${1%/*}" && Sys_Str2DevTrm "$lcMsgStr" "1" "3"

    #~ lcDialogColor="  -fg yellow -bg darkred  "	# Splash Main 
    #~ lcMsgStr="DialogColor: ${lcDialogColor} =======" && Sys_Str2DevTrm   "${lcMsgStr}"   "2" "3"

    lcDialogColor="  -fg yellow    -bg darkred "
    #:  position dependent against left margin 
/usr/lib/gtkdialog/box_splash ${lcDialogColor} -border true -close never -text "
.   .. Please Wait .. ${gcCtxDevDob} .. ${gcCTBmodeName}
. Cold-TarZip-Backup is Creating 'tar.gz' BackUp
.     Source saveDATA Size > ${lcPupRamObj} MB
.     Source File:  '${lcPupSaveNameSrc}'
.
.
.
.              ... Progress Dialog ...
.
.
.
.
       Tar.Gz Out: ${gcCtbConfigTrgPrefix}
 ${lcPupSaveNameTrg##*/} :
.
.                                                           " &
#:  provide enough line-feeds to be a large background splash. 
#:  later smaller splash will lay into this large background splash. 

    GTKPIDPROG=$!    
    sleep 2

    #: end : SPLASH TarOpt MAIN =======
# if [ ${gcCTBmode} = "B" ]   ; then
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # "Main TarOpt Progress Splash" 
    #: 
	#(: 
	#(:  the Main Splash is open during TarOpt as background . 
	#(:  other Splash will display inside this Main Splash .
	#(: 

	#(:  Subsequent Splash will layer over / blend with the large Main Splash.
	#(:  Master Splash should linger until after the final dialog splash "Done" is cleared.

	#(:  Careful !  Must maintain sequence of change dir .
	#(:  change dir from PWDir to  ${1%/*}
	#(:  then run TarOpt .

	#(:  this "change dir" is only necessary if PWDir was NOT local.
	#(:  because CTB will never move away from the "saveDATA" subdir.
	#(:  cd ${1%/*} 	#  dirname $CTB_PUPSAVE_PATH

	#(:  tar calls zip with "1" fast compression, Trg , Src
	#(:  tar -c -z  -f ${destfile##*/} ${1##*/}/    

	#(: --- CTB_Backup -------
	#(:  This is Before 'Tar' executable process 
	#(:  echo this trace to terminal 
	
    #: lcMsgStr="...................................................." && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"
    #: lcMsgStr="$ {1} is ${1} : last param in buffer" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
    #: lcMsgStr="$ {1%/*} <<<<<<< subdir of  saveDATA short form" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
    #: lcMsgStr="$ {1%/*} is ${1%/*} <<< last param in buffer. " && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
    #: lcMsgStr="cd $ {1%/*} is /mnt/home/pup_UpupBB+24 <<< " && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
    #: lcMsgStr="....................................................." && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"

	#(:  ref #(:  Pupsave_Zipit original v.1.2 had "export LOCDEFAULT="/mnt/home"
	#(:  ref #(:  Pupsave_Zipit original v.1.2 had "export LOCDEFAULT="/mnt/home"
	#(:  ref #(:  Pupsave_Zipit original v.1.2 had "export LOCDEFAULT="/mnt/home"

	#(:  CD into subdir of "saveDATA"
	#(:  ... use /path/name chopped, "short form".
	#(:  so,  ${1} is last param in buffer.	Good reason for "global" var of ${0} 
	#(:  so,  ${1%/*} is "short form" of last param in buffer.
	#(:  so,  cd ${1%/*} is cd /mnt/home/pup_UpupBB+19

	#(:  Note:
	#(:  200603-0958 gae, ref to Pupsave_Zipit original v:1.2 
	#(:  had "export LOCDEFAULT="/mnt/home" 
	#(:  as Hard-Coded data. 
	#(:  Did NOT RUN on author's USB-FlashDrive boot-up system, 
	#(:  which linked "/mnt/home" as "/initrd/dev_save" on initial run. 
	#(: 
	#~ lcMsgStr="<<< cd ${1%/*} >>>" && Sys_Str2DevTrm   "${lcMsgStr}"   "1" "3"
	cd ${1%/*} 
    #:  dirname $CTB_PUPSAVE_PATH   <<< loc of saveDATA
	#:  the Main Splash yellow/red is still open as background .
	#:  other Splash will display on top the Main Splash .
    #: *** begin : small SPLASH: tar < Running > 
if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # "Main TarOpt Progress Splash" 
    lcDialogColor="  -fg yellow -bg blue "
    lcMsgStr=":${gcCTBmodeId}: < Tar.gz Running > :"  # && Sys_Str2DevTrm "$lcMsgStr" "1" "3"
    /usr/lib/gtkdialog/box_splash  $lcDialogColor -border true -close never -text "
 ${lcMsgStr}
.       " &
    sleep .5
    GTKPIDRUNNING=${!}	   # kill blue splash "RUNNING"
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # "Main TarOpt Progress Splash" 
    lcMsgStr=""
    #(: end : SPLASH: tar < Running > 
	                #~ #:  Below, splash will overlay all previous splash
                    #~ #:  and over the Main_Splash 
                    #~ #:  kill later after tar opt finishes.
                    #~ #: 
                    #~ #:  We declare/assign value to var 'TAROPT' and 'TAREXT'
                    #~ #:  gae,
                    #~ #:      simple default to "tar.gz" format for 'simple local backup'
                    #~ #:      with No Questions Asked.
                    #~ #: 
            #~ #: lcMsgStr="-----------------------------" && Sys_Str2DevTrm "$lcMsgStr" "4" "3"
            #~ #: lcMsgStr=">>> begin TarOpt process" && Sys_Str2DevTrm "$lcMsgStr" "1" "3"
            #~ #:    lcMsgStr="Src: ${lcPupSaveNameSrc}" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
            #~ #:    lcMsgStr="Trg: ${lcPupSaveNameTrg}" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
        /bin/echo -e  " "  #: simple color string to terminal so tar process shows proper colors.  
        /bin/echo -n -e "\\033[1;36m" 
    	n=0
#(: ====================================================================
#(: begin: section name " TAROPT " ======================================
#(: ==============================
#(: begin: section name " TAROPTIT " ======================================
#(: ==============================
#(: begin: section name " TAROPT " ======================================
#(: ====================================================================
    #~ lcMsgStr=">>> Begin:  TarOpt process =======" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
    #(: >>> begin: taropt process ===
    #(: >>> begin: taroptit process ===
    #(: >>> begin: taropt process ===
    #(:  TarOpt will assume saveDATA subdir is "local" to Puppy OS "saveDATA"
    #(:  "CWDir" is anacronym for "Current Working Directory" .
    #(:  "PWD" is system var for "/root" , base of current sys ops.
    #(:         PWDir="$PWD"
    #(:         CWDir=$PWDir  #(:  Swap Working Directories, /Root into /CurrentWorking . 
    #(:  cd "$PWDir" #(:  point /root so tar has simple focus. Same as "cd -" 
    #(:  cd "$CWDir" #(:  point back to /CurrentWorking
	lcTarRetVal=0	
    #(:  default preset parameters 
	export lcTarOptSaveNameSrc="${lcPupSaveNameSrc}"
	export lcTarOptSaveNameTrg="${gcCtbConfigTrgPrefix}${lcPupSaveNameTrg}"		
        #(: # apply Config SubDir here !
        #(: all this is AFTER the GUI, so no indication of TARGET from here. 
                    lcMsgStr="-----------------------------" && Sys_Str2DevTrm "$lcMsgStr" "4" "3"
                    lcMsgStr=">>> begin TarOpt process" && Sys_Str2DevTrm "$lcMsgStr" "1" "3"
                    lcMsgStr="Src: ${lcTarOptSaveNameSrc}" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
                    lcMsgStr="Trg: ${lcTarOptSaveNameTrg}" && Sys_Str2DevTrm "$lcMsgStr" "5" "2"
                    lcMsgStr="-----------------------------" && Sys_Str2DevTrm "$lcMsgStr" "4" "3"
        #~ /bin/echo -e  " "   
        #~ /bin/echo -n -e "\\033[1;36m" 
        #~ echo "TAROPT :" > /TarOptLog
        #: backup copy	TAROPT="-c -z --checkpoint=1000" 
        TAROPT="-c -z --checkpoint=1000"    # TarOpt
       #(: ----'c'reate --checkpoint=1000" )
        #(: --- begin Special Control During Testing ===
        #(: ===============================================================
        #(:  if [ 1 -eq 0 ] ; then
        #(: fx "TarOpt" : real-time tar executable process
        #(: --- tar.gz   (parameters)  (into Trg)  (from   Src)   
        #(: ===============================================================

		tar ${TAROPT} -f ${lcTarOptSaveNameTrg} ${lcTarOptSaveNameSrc} 
 
        #     kill ${GtkPidFlip1} && kill ${GtkPidFlip2} 
        #(: ===============================================================
        #~ tar -ztv ${lcTarOptSaveNameTrg} -f ${lcTarOptSaveNameSrc} 
        #(: --- tar.gz   (parameters)  (into Trg)  (from   Src)   

		lcTarRetVal=0	
		lcTarRetVal=$?  
        #(:  clear & capture Return Value of "0" or "1" into local var.
        #(:  fi	#  [ 1 -eq 0 ] 
        #(: ===============================================================
        #(: --- end Special Control During Testing ===
		#(:  remove a lingering sys flag that may block fx(Help_Box), etc.
		#(:  deposited from SMP and TarOpt
		rm -f /tmp/flagnextpassthru	   
        #(:  after TarOpt 
#(: <<< end: taropt process ===
#(: <<< end: taropt process ===
#(: <<< end: taropt process ===
#(: end: secton name " TAROPT " ==============================================
#(: ============================
        lcMsgStr="<<< End:  TarOpt process =======" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
        echo " "
        sleep 1
        #(: simple color string to terminal so tar process shows on black in terminal.   
        #~ /bin/echo -e "\\033[0;m" 
        #(: --- begin: calculate --- for DONE Splash , for "Tar Out Size" 
        #(: aa="$(du -c -m -s ${lcTarOptSaveNameTrg} )" 
		#(:  -c = --total, -m = --block-size=1m, -s = --summarize
        aa="$(du -c -m -s ${lcTarOptSaveNameTrg} )"    # error flag on Zero-length file  
        #(: read -r b ccc <<< "$aa"
        read -r b ccc <<< "$aa"
		#(: show calcs in terminal 
        #~ lcMsgStr="ccc:${ccc}" &&  Sys_Str2DevTrm "$lcMsgStr" "2" "3"
        #~ lcMsgStr="b: ${b}" &&  Sys_Str2DevTrm "$lcMsgStr" "2" "3"
		#(: maintain "Tar Out Size" for splash
        lcPupRamObjStr="${b}" 
        #~ lcMsgTos="Tos: tar-out-size :${lcPupRamObjStr}: MB" && Sys_Str2DevTrm "$lcMsgTos" "2" "3"
        lcMsgTos="Tar-out-size :${lcPupRamObjStr}: MB" 
        #
        #~ lcMsgStr="<<< end: calc the tar output filesize :" &&  Sys_Str2DevTrm "$lcMsgStr" "1" "3"
        #(: --- end: calculate ---
        #(: --- begin: TarOpt Testing ---
		#~ gcCTBerror="0"	# this will control the ScanList process. 
        #(:  begin: parse for the 'RETVAL' from tar :  0=no-error , 1=error .


#~ set +x +e  # working gae
        if [ ${lcTarRetVal} -eq 1 ] ; then	 
            n=0
            #(: based on local var lcTarRetVal 
            #~ gcCTBerror="1"	#(:  this event will disable the ScanList process. 
            #(: *** begin : SPLASH TarOpt Process Error Condition ***
            lcMsgStrX="... Tar Process Message Error : 'File NOT Found' / 'InValid' ..." # && Sys_Str2DevTrm "$lcMsgStr" "3" "3"
            lcDialogColor="  -fg black -bg red  "
            /usr/lib/gtkdialog/box_splash  $lcDialogColor -border true -close never -text " $lcMsgStrX :$lcMsgTos: " &
            GTKPIDtpem=$!
            sleep 5
            kill "${GTKPIDtpem}" 2>/dev/null
            lcMsgStrX=""
            #(:  end: parse for the 'RETVAL' from tar :  0=no-error , 1=error .
            #(: 
            #(:  we decided to call this a "non-fatal" error , 
            #(:  and continue program. 
            #(:  the user should 'report' this error .
            #(: 
        else
            n=0
            #~ lcMsgStr="else NOT [ ${lcTarRetVal} -eq 1 "  && Sys_Str2DevTrm "$lcMsgStr" "3" "3"
            #~ gcCTBerror="0"	
            #(:  this will enable the ScanList process. 
        fi
#~ set +x +e  # working gae

        #(:  end: parse for the 'RETVAL' from tar :  0=no-error , 1=error .
        #(: --- end: TarOpt Testing ---
		#(:  "TarOpt" is finished. 
		#(:  Now, continue regular code
        #(: --- CTB_Backup ---
        #(:  the Main Splash is still open as background
        #(:  other Splash will now display inside the Main Splash.
		#(: 
if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # "Main TarOpt Progress Splash" 
        #(: kill running splash
		kill ${GTKPIDRUNNING} 2>/dev/null
        #(: kill running blue
        kill ${GTKPIDRUNBLUE} 2>/dev/null  
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # "Main TarOpt Progress Splash" 

if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # DONE 

    #~ lcMsgStr="+++ CTB_BackUpRun =========================================" && Sys_Str2DevTrm   "${lcMsgStr}"   "4" "3"
    #(: *** begin : SPLASH: tar < DONE > ***
    lcMsgStrT=" Tar < DONE > " 
    lcDialogColor="  -fg yellow -bg blue  "
    /usr/lib/gtkdialog/box_splash  $lcDialogColor -border true -close never -text "
. ${lcMsgStrT} :${lcMsgTos}:
.               " &
    GTKPIDdone=${!}
    sleep 5
    kill "${GTKPIDdone}" 2>/dev/null
    sleep 1
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # DONE 

#~ if [ ${gcCTBmode} = "B" ]  ; then   # Scan-List 
		#!  global Mode Detection 
		#!  CTB_ScanList is a list of subdir to be 'cp' backed-up 
		#!  to a list of mounted HardDrive/USB storage drives 
		# lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
		# lcMsgStr=">>> before fx(${gcCTBmodeId}_ScanList) " && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
				#~ if [ ${gcCTBerror} = "0" ] ; then	#  "0" is ok  ( "1" is error 'file not found' )
                    #~ n=0
					#~ if [ -f ${CTB_FlgBugger_SD} ]  || [ ${gcCTBmode} = "A" ] ; then 
						#~ #(:  state is "Scan" or "Automatic" 
                        #~ #(: ==============================================================
                        #~ #(: fx  CTB_ScanList : 'Scan List Control' & 'CopyOne' process.
                        #~ CTB_ScanList    
                        #~ #(: ==============================================================
						#~ #(:  remove Bugger flags for extended backup , always.
						#~ lcMsgStr="*** ClearFlgBugger_SD" && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
						#~ rm -f "${CTB_FlgBugger_SD}" 
						#~ #(:  remove Bugger flags for extended backup , always.
						#~ #(:  "CTB_ScanList" is done. 
					#~ else
						#~ n=0
						#~ lcMsgStr="***  Bugger and mode flags not set" && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
					#~ fi
				#~ else  # else if [ ${gcCTBerror} = "0" ]  
					#~ n=0
					#~ #(: *** begin : SPLASH: tar < ERROR > ***
					#~ lcMsgStr=" Tar < ERROR > file not found" && Sys_Str2DevTrm "$lcMsgStr" "1" "3"
					#~ lcDialogColor="  -fg yellow -bg red  "
					#~ /usr/lib/gtkdialog/box_splash  $lcDialogColor -border true -close never -text "$lcMsgStr" &
					#~ GTKPIDerror=${!}
					#~ sleep 7
					#~ kill ${GTKPIDerror} 2>/dev/null
					#~ echo "==========> kill $GTKPIDerror ---"
					#~ #(:    end : SPLASH: ERROR **************
				#~ fi # end: fi [ ${gcCTBerror} = "0" ]  
				#~ lcMsgStr="<<< after fx(${gcCTBmodeId}_ScanList) " && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
				#~ lcMsgStr=" " && Sys_Str2DevTrm "$lcMsgStr" "7" "3"
        #(: --------------------------------------------------------------
        #(:  Before and After the 'tar' process , the subdir is different:
        #(:  this 'cd' "$CWDir" is :
        #(:     after 'execute' tar
        #(:     after 'if' test on RetVal
        #(:  So, Main processes have run
        #(:  ... now, it is time to "change dir" back to 'home' subdir .
        #(: 
        #~ lcMsgStr="cd  CWDir= $ CWDir  is $CWDir <<<" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
        #~ lcMsgStr="cd  orig subdir in long 'path' form <<<" && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"
        cd "$CWDir" 
        #(:  point back to /root   #  cd "$CWDir" 
        #~ lcMsgStr="change dir 'CWDir' ... point back to /root dir " && Sys_Str2DevTrm   "${lcMsgStr}"   "2" "3"
        #(: 
        #(:  terminal messages for user : 
        #(: # echo "trace: GtkDialog boxes will return 'terminated' message "
        #(: # echo "... when the 'kill' PID command is applied"
        #(: # echo "trace: wait for USB-Flash-Drive to shuffle data at 10 MB per second ."
		#(:  Back-Step thru all "kill PID"
		#(:  Killing all previous splash in reverse order .
		#(: 
#~ fi # [ ${gcCTBmode} = "B" ]   ; then   # DONE 



if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # kill 
		sleep .1
		kill ${GTKPIDPROG} 2>/dev/null
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   
		#(: 
		#(:  Note:  sync    #(:  write all buffered blocks to disk
        #(:  will lock if SnapMergePuppy is running. 
        #(:  will not run if PartEd is running. 
	#(:  Main_Gui calls EXIT:BackUpCall, calls fx CTB_BackUpRun ()
	#(:  runs thru to here.
	#(:  release 'running' "File-Lock" flg.
	#(:  could also run "stat" 
	rm -f "${CTB_FlgLockFile}"  
	#(:  State: is "BackUp DONE" 
	CTB_ClearFlgSys	
    #(:  end: fx(CTB_BackUpRun)
    #(:  raise special "Status" flag for main_GUI message "Backup is Done" 
    touch  "${CTB_BackUpStatus}"   # set STATUS flag to "active"
} #( end: fx(CTB_BackUpRun)
#
#(: ====================================================================
#(: fx(Sys_SYNC)
#(: called by: CTB_BackUpRun
#(: param: 
#(: purpose: calls to sync
#(: calls: 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : 
#! 
#! ====================================================================
#(: function Sys_SYNC
function Sys_SYNC() {    # ACTIVE sync
n=0    #! here, 1,2,3,multiple runs through "snapmergepuppy" 

if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SYNC 

lcMsgStr=">>> SYNC <<<"
lcDialogColor="  -fg yellow    -bg black "
/usr/lib/gtkdialog/box_splash ${lcDialogColor} -border true -close never \
-text "     $lcMsgStr   " &
		GTKPIDSYNC=$!
		sleep 1  

#~ fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SYNC
#~ if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SYNC 

	#:  SnapMergePuppy  runs under default ' nice -10 '  to inhibit any other process. 			
	#:  'sync' will lock-up if SnapMergePuppy is still running. 
	#:  so, write all buffered blocks to disk, before SnapMergePuppy ! 
    #~ lcMsgStr="${gcCTBmodeId} Sync " && Sys_Str2DevTrm   "${lcMsgStr}"   "3" "3"

    # ==================================
    sync       2>/dev/null
    # ==================================

	sleep .5
    kill $GTKPIDSYNC    2>/dev/null   # kill "SYNC"
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SYNC 

} # end: fx(Sys_SYNC)
#

#(: ====================================================================
#(: fx(Sys_SMP)
#(: called by: CTB_BackUpRun
#(: param: 
#(: purpose: calls to snapmergepuppy prior to TAROPT 
#(: calls: 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : 
#(:  "Snap Merge Puppy"  is a "merge" process.   
#(: 	ie, SMP maintains pre-existing files. 
#(: note:   
#(:  	" nice -n " : "-n 19" gives max priority to SMP 
#(:     use of "nice" inhibits file changes by other processes during SMP
#(:
#! ====================================================================
#(: function Sys_SMP
function Sys_SMP() {    # ACTIVE snapmergepuppy
n=0   
#!  multiple runs through "snapmergepuppy" for "CTX", "CTB", "CTA"
#!    ### CTU will run SMP with NO GUI 

if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP 

    lcRunNum="19"
    lcRunSeq="1"
    lcDialogColorBg="  -fg red -bg black "  # background
    lcMsgStr="${gcCTBmodeId} SnapMergePuppy nice -n ${lcRunNum}  [${lcRunSeq}]"
    /usr/lib/gtkdialog/box_splash ${lcDialogColorBg} -border true -close never -text "$lcMsgStr" &
            GTKPIDSMP1=$!
            sleep .5  
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
# 
# ### CTU will run SMP with NO GUI
# === Run SMP "C" syntax LoopCnt ====================================
lcDialogColorFg="  -fg yellow    -bg black "  # foreground
lcRunNum="19"
lcLoopCnt="1"
if [ ! -s ${lcLoopCnt} ] ; then 
    ii=${lcLoopCnt}
else
    ii=1
fi
for (( i = 1; i <= $ii ; i++ )) ## "C"syntax 
do 
    n=0
    if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
        lcMsgStr=" <$i>  nice -n ${lcRunNum} SnapMergePuppy"  # foreground 
        /usr/lib/gtkdialog/box_splash ${lcDialogColorFg} -border true -close never -text ".  $lcMsgStr  ." &
        GTKPIDSMP0=$!
    fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
       #~ Sys_Splash_Flip " <$i>  nice -n ${lcRunNum} SnapMergePuppy" ###     kill ${GtkPidFlip1} && kill ${GtkPidFlip2}  2>/dev/null
        # ----------------------------------------------------------------
            nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw    2>/dev/null  
        # ----------------------------------------------------------------
    if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
        sleep .2    # expose splash during SMP
        #~ kill ${GtkPidFlip2}  2>/dev/null
        kill $GTKPIDSMP0 2>/dev/null
    fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
    #
done # end: for (( i = 1; i <= $ii ; i++ ))
#!
#! ######################################################################
if [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
		sleep .5
		kill $GTKPIDSMP1 2>/dev/null
fi # [ ${gcCTBmode} = "B" ] || [ ${gcCTBmode} = "A" ]   ; then   # SMP
# 
} #( end: fx(Sys_SMP)
#!
#!#############################################################################
#! End of High SubRoutines 
#!#############################################################################
#!
#(:-----------------------------------------------------------
#(:  all System fx() moved to top of code 
#(:  all Auxillary fx() writen below the System fxunctions 
#(:  all "fxunctions" are written above. 
#(:-----------------------------------------------------------
#(:  all "Fall-Thru" routines are written below the main GUI 
#(:  all Main_Gui fx("Fall-Thru") are below the main GUI
#(!-----------------------------------------------------------
#(!   MAIN()  #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(!   MAIN()  #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(!   MAIN()  #;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(!-----------------------------------------------------------
#
	#! ====================================================================
    lcMsgStr="#(:  CTB 'main()' running module begins here: " &&  echo "$lcMsgStr"
	#! =====================================================
    #(: function if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then # frugal install
    echo 
    MODE="`grep PUPMODE /etc/rc.d/PUPSTATE | cut -f 2 -d "="`"
    if [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
        n=0
        #~ lcMsgStr="grep PupMode in PUPSTATE is OK " && Sys_Str2DevTrm "$lcMsgStr" "5" "3"
    else 
        lcMsgStr="MODE is not FRUGAL mode '12' or '13' " 
        lcDialogColor="  -fg black -bg red  "
        /usr/lib/gtkdialog/box_splash  $lcDialogColor -border true -close never -text " $lcMsgStr :$lcMsgTos: " &
        GTKPIDtpem=${!}
        sleep 5
        kill "${GTKPIDtpem}" 2>/dev/null
        exit 1
    fi
    #: end: fi [ "$MODE" = "12" ] || [ "$MODE" = "13" ]; then
    #:  must exit at "main( )" this stack level in order to Quit/Clear the $0 program. 
    CTB_StartUp     # Must be First-Call !
    #(: 
    #(: === begin fx(CTB_lock_file) code.   
    #(:
    #(: check on "already running" status  
    #(: CTB_check_lock_file
    #(:    must be written at this level of program stack
    #(:    because we require a full 'exit 1' from CTB script.
    #(:	
    #(: Note:
    #(:		Error results if written as a 'fxunction' named like fx(CTB_Check_Lock_File) 
    #(:		Proper Termination of Program must occur at "top of stack" . 
    #(:		ie, else Process Stack will not 'pop' fully.
    #(:     ie, terminating process will 'pop' to previous residual layers
    #(:			in a sequence (each with a note to terminal screen). 
    #(:		IF user selects "Scan", "Help", "FAQ", "Source" 
    #(:			from top of main page this problem may occur. 
    #(:		THEN "stack popping" error exists 
    #(:		EVIDENCE shows in terminal screen as a succession of "un-pop" messages
    #(:			which indicate this 'non-fatal' error . 
    #(:
    #(:  So, we wrote this check FlgLockFile into "Main", right here !
    #(:     so that a single 'exit 1'  , right now, 
    #(:     will exit the program script totally .
    #(:  This is a 'clean' fix for a possible 'non-fatal' error .
    #! 
    # === begin: check for ConFigFile
    #!
	#! ====================================================================
    #(: function [if [ -f ${CTB_FlgLockFile} ] ]
    if [ -f ${CTB_FlgLockFile} ]  ; then
        #(:  potential procedural conflict: 
        #(:  if Set Flg Bugger _SD, then Restart, must clear FlgLockFile
        #(:  conflict over FlgLockFile Hard-Lock method. 
        #(:  based on this test:  [ ! -f ${CTB_FlgSD} ]
        #(:
        #(:  resolved by writing a "SOFT-LOCK". 
        #(:		IF previous lockfile is found, 
        #(:		THEN we throw a flag, throw "Error Message" 
        #(:		THEN we continue ! 
        #(:
        #(:	Note: 
        #(:	Most gtkdialog and xmessage require a 'left-margin' position. 
        #(: -----------------------------------------------------------------------
        /usr/lib/gtkdialog/box_splash -fg black -bg red -border true -close never -text "\
        .
        . Found:  LockFile : Soft-Lock !!!      
        . ---> Will Continue Running <---
        .                                         "&
        #------------------------------------------------------------------------
        sleep 3
        RETVAL=$?
        GtkPid_Sbr_Box_Splash=$!	
        kill ${GtkPid_Sbr_Box_Splash}  2>/dev/null
        #------------------------------------------------------
    fi	
    #(: fi [ -f ${CTB_FlgLockFile} ] 
    #(:
    #(:  Always Set Flag ! because we use a "Soft-Lock" method. 
    touch  "${CTB_FlgLockFile}" 
        #(:  >>> begin: 'Test' for integrity of 'touch' operation via 'stat' 
        #(:  for formatspec in 'file touched :\t%n' 'accessed:\t%x'
        #(:  	do stat --printf="$formatspec\n" ${CTB_FlgLockFile}
        #(:  done
        #(:  so, 
        #(: 	remove /tmp/CTB_LockFile at end of "QUIT", bottom of CTB code 
        #(:  	which is at the 'base' level of program stack.
        #(:  <<< end: 'Test' for integrity of 'touch' operation via 'stat'  
    #(: === end: fx(CTB_lock_file) code.   
#! begin:  MAIN GUI ### setup/prepration :

    #(:  #(:  "CTB_TrgDts" has local usage within Main_Gui()
    #(:  #(:  this "CTB_TrgDts" var receives the
    #(:  #(:       <action>refresh:CTB_TrgDts</action>
    #(:  #(:  and shows one-second interval refreshed info.

    #(:  export Marks each NAME for automatic export to the environment
    #(:  of subsequently executed commands.
    #(:  If VALUE is supplied, assign VALUE before exporting.

    #(:  note:
    #(:      calling HELP via command 'embedded' in 'button' .
    #(:          will force a return to the 'button'
    #(:          No program 'restart' required.
    #(:              <label>  'Help=' </label>
    #(:              <action>Sys_Help_Box</action>
    #(:  note:
    #(:      calling "BackUp" via routine outside the Main_Gui() .
    #(:          allows good control.
    #(:          <label>  'Backup+' </label>
    #(:          <action>EXIT:BACKUP+</action>
    #(:          Capture and Execute via "Fall-Thru" method. 
	#(:			 Fall-Thru if/fi section can contain complex code. 	
	#(:			 All "direct" calls from Gui will load the stack, not good. 

	#(:	 note: 
	#(:			All Main Gui calls are via a "Fall-Thru" method. 
	#(:			ft() routines will evalulate 
    #(:             and then make a bounce "funxtion" call to subroutine. 
    #(: 		All gui calls are handled in same manner. 
    #(: 



#(:  CTB control before Main Gui 	2808

# (: "B"asic mode with a GUI. 
if [ ${gcCTBmode} = "B" ] ; then 		
    #(:  label <tool-tip>
	lcSD_Flg_HLP=" Help "     		
else
	#(: else "U"tility mode or "A"uto-Scan   =    NO GUI. 
	lcSD_Flg_HLP=""
fi

#! === begin: check for status flag

lcBackUpStatus="---"  
#:  default preset gui display-status "Help/Source" string in gui
#:  Control "who" has "focus" in main gui 
if [ ! -f "${CTB_BackUpStatus}" ]; then 
    #:  if backup not already run, then it has no flag up.
	#:  if No Flag Up 
    #:  
	export lcFocusHelp="false"		
    #:  therefore continue BackUp process,  
	export lcFocusBackUp="true"		
    #:  gui control
	export lcFocusQuit="false"		
    #:  gui control
    export lcStatusBackUp="Backup"  
    #: Normal "BackUp" First Run Label w/o flag
    #: allow STATUS flag to remain, as is, for gui display. 
else
	#:  if Yes Flag Up , file found
	#: 
	export lcFocusHelp="false"	
    #:  therefore Stop BackUp process  and  remove Back-Up flag 
	export lcFocusBackUp="true"	
    #:  gui control  focus="${lcFocusQuit}"
	export lcFocusQuit="false"		
    #:  gui control
    export lcStatusBackUp="Done"  	
    #:  Has Been "Done" on Button message. 
    rm -f ${CTB_BackUpStatus} 		
    #:  clear flag BackUpStatus display in gui.
    #:  fall thru into main GUI 
fi

#~ if [ -f "${CTB_FlgBugger_SD}" ]   ; then    
    #~ #(:  Check Status Flag: Active SCAN process 
	#~ n=0
    #~ export lcStatusBackUp="${lcBackUpStatus}+Scan"  
		#~ #:  lcStatusBackUp is refresh the curent Main Gui Display variable "+Scan" 
		#~ #:  indicates Selection("Scan") is active. 
		#~ #:  available funxtions are: 
		#~ #:  (1) "Backup to Local saveDATA"   
		#~ #: 		or 
		#~ #:  (2a) 'Backup to Local saveDATA , and then ...
		#~ #:  (2b) 'Scan & Copy' to all mounted harddrives.
#~ fi
		#~ #:  [ "${gcCTBmode}" = "A"utomatic ] has No GUI 
		#~ #:  [ "${gcCTBmode}" = "U"tility   ] has No GUI 
#~ #: === end: Check Status Flag

# GUI display color for main title.
lcGuiColor3="green"
lcGuiColor2="blue"
lcGuiColor1="darkred"
lcGuiColor0=${lcGuiColor3}	

# GUI title 
lcCtbFrameTitle="Cold-TarZip-Backup  ${gcCTBmodeName} v.${gcCtxDevVer}"
#!============================================================  
#! ### Top of maingui ############################################
#!============================================================   


#(: ---------------------------------------------------------------------------
#(: CTB Master GUI method : 
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
#(: 	this width=1500 works good on UpupBB. Other Distro may require adjustment. 
#(: note:
#(: Standard Gui Button Call Method is TWO-STEP: 
#(:  (1) gui-Buttons "call" to a "Fall-Thru funxtion written as "IF/FI" (in lower part of source). 
#(:  (2) "IF/FI" funxtions then call regular subroutine funxtion() (at top of code). 
#(: EXAMPLE:  button "MntAll" is <action>'EXIT:MNT+'</action>
#(: which will exit and fall-thru to "ft( 'EXIT:MNT+' )" 
#(: which will then call "funxtion Sys_MGN_pMount()" (written in top part of source).	
#(: This is the Standard Method written into this MainGui, 
#(:   which allows parameters to be sent to complex sub-routines . 
#(:   which avoids lack of parameter passing in the gui Button gtkdialog process. 
#(: This methodology maintains isolation between 
#(:    the BASH language interpreter 
#(:       and
#(:    the GTK language interpreter.   
#(: ------------------------------------------------------------------------------


#(: begin fx(export CTB_Main_Gui= XML script )   2237
#(: based on :  
#(: eval "`gtkdialog --center -p CTB_Main_Gui`"  is  based on gtk box_help code. 
 
export CTB_Main_Gui\
='<window title="'${DISTRO_NAME}.Cold-TarZip-Backup_to_save_DATA_' "icon-name="gtk-convert" default_width="500"  resizable="false">
<vbox>

    <frame>
        <hbox>
			<text editable="false" use-markup="true" xalign="0">
				<label>"                       " </label>  </text>
           <text editable="false" use-markup="true" xalign=".5">
                <label> 
                "<span  color='"'$lcGuiColor0'"'> <b>'"${lcCtbFrameTitle}"' </b> </span>  <span color='"'$lcGuiColor3'"'><b>''</b></span><span color='"'$lcGuiColor2'"'>'${gcCtxDevDob}'</span>" 
                </label>
           </text>
			<text editable="false" use-markup="true" xalign="0">
				<label>"                       " </label>  </text>
        </hbox>
    </frame>

    <frame>  
        <text editable="false" use-markup="true" >
            <label> "for Puppy Frugal Systems" </label>
        </text>
        <text editable="false" use-markup="true" >
            <label> "<b>Source: '${lcPupSaveNameSrc}' </b>" </label>
        </text>

        <text editable="false" use-markup="true" >
            <label> "<b>Target Subdir : '${gcCtbConfigTrgPrefix}' :</b>" </label>
        </text>

       <text height-request="36"   >
                <variable>'CTB_TrgDts'</variable>
                <input> 'CTB_TrgFilename' '\$CTB_PUPSAVE_PATH' </input>
        </text>
        <timer milliseconds="true" interval="'${CTB_REFRESH_INTERVAL}'" visible="false"   >
               <action>refresh:CTB_TrgDts</action>
        </timer>
        <hbox>   
            <text editable="false">
                <label> "*'${lcPupRamObjMsg}'*                       " </label>
            </text>
        </hbox>
    </frame>


	<frame> 
		<hbox>
			<text editable="false" use-markup="true" xalign="0">
				<label>"   " </label>  </text>

        <button tooltip-text="GuiHLP+" focus="${lcFocusHelp}"> 
            <input file>"'/tmp/Icon-img-apple-redyel.svg'"</input> <width>30</width> <height>30</height>
            <label>"'HELP'" </label>
            <action>EXIT:"GuiHLP+"</action> </button>

		<text editable="false" use-markup="true" xalign="1"> <label>"    " </label> 
			<action>EXIT:"maingui-Help"</action>  </text>
		<text editable="false" use-markup="true" xalign="1"><label>"     " </label>  </text>

        <button tooltip-text="GuiBackUpCall+" focus="${lcFocusBackUp}" >
            <input file>"'/tmp/Icon-img-apple-redgrn.svg'"</input><width>30</width> <height>30</height>
            <label>" '${lcStatusBackUp}'  " </label>
            <action>EXIT:"GuiBackUpCall+"</action> </button>

		<text editable="false" use-markup="true" xalign="1"> <label>"       " </label> 
			<action>EXIT:"maingui-BackUpCall"</action>  </text>

        <button tooltip-text="GuiQuitCall+" focus="${lcFocusQuitUp}"> 
            <input file>"'/tmp/Icon-img-apple-rednnn.svg'"</input><width>30</width> <height>30</height>
            <label>"'Quit-program'" </label>
            <action>EXIT:"GuiQuitCall+"</action> </button>

		<text editable="false" use-markup="true" xalign="1"> <label>"    " </label> 
			<action>EXIT:"maingui-QuitUpCall"</action>  </text>
		<text editable="false" use-markup="true" xalign="1"><label>"     " </label>  </text>

 		</hbox>
    </frame>
</vbox>

</window>'
#(:  

#(: use <action>lnDummy:NameThisObj</action>, so to locate via terminal dialog.  
#(:
#(: 
#(:  NOW , eval/execute the main_GUI code.
#(:  NOW , prg can Execute arguments as a shell funxtion command, and stack-up the call.
#(:  NOW , prg control can "Fall-Thru" down the page of code, and do clean "Re-Start". 
#(: 
#(: 
#(: 

#:--------------------------------------------------------------------------------
#(: >>>  begin: fg(eval CTB_Main Gui )

#(: eval "`gtkdialog --center -p CTB_Main_Gui`"  is  based on gtk "box_help" code. 
if [ ${gcCTBmode} = "B" ]  ; then  
	eval "`gtkdialog --center -p CTB_Main_Gui`"     
else
	#(:  Fall-Thru mode is "U" or "A" with default value. 
	EXIT="GuiBackUpCall+"    
    #(:  Fall Thru to QUIT : CTU and CTA have NO GUI   
	#(:  will Fall-Thru until it hits "EXIT:BackUpCall+" for Auto Local Backup Now ! 
fi
#(: eval continues through this point in code. 
#
#(: <<<  end: fg(eval CTB_Main_Gui)
#(: --------------------------------------------------------------------------------

#(:======================================================================================
#(:  Results from main_GUI will "FALL-THRU" to if/fi routines : 
#(:  'if/fi' routines will handle setup and call to real subroutines up the page. 
#(:  'if/fi' routines call and send parameters to main subroutines at top of source code.
#(:======================================================================================

#(:  End of MAIN GUI 
#(:  End of MAIN GUI 
#(:  End of MAIN GUI 








###############################################################################################################
#(: Begin of "Low" Fall-Thru "IF/FI" Routines 
#(: Begin of "Low" Fall-Thru "IF/FI" Routines 
#(: Begin of "Low" Fall-Thru "IF/FI" Routines 
###############################################################################################################
#!
#! ====================================================================
#(: function CTB_Fall_Thru
function CTB_Fall_Thru() { # marker
    n=0
    #!	 CTB: Fall-Thru to Sequential Test on If/Fi routines. 
    #:	 CTB: Fall-Thru to Sequential Test on If/Fi routines. 
    #:	 CTB: Fall-Thru to Sequential Test on If/Fi routines. 
} # end: CTB_Fall-Thru



#(:==========================================================================================
#(:  CTB: Note
#(:  simply indicates "Popping the Stack" 
#(:		because BASH does not impliment a strict "Scope" control.
#(:  Repeated calls to some routines can subvert (stack) the calls. 
#(:  This kind of Non-Fatal error will only be indicated if running in "Terminal". 
#(:    The ft(Fall-Thru) method is implemented to control this propensity of BASH. 
#(:  Simple "Fall-Thru Method" finds 
#(:       and initiates action in "low" subroutines. 
#(:  These blocks run after MAIN GUI "Button" selections and "eval" 
#(:  These are normal "if-fi" running blocks.
#(:
#(:  These offer a "Re-Start" call 
#(:     (1) to avoid BASH process stack-up, 
#(:     (2) maintain consistent code process. 
#(:     (3) allow sending parameters to main sub-routines.
#(:  These may branch to regular "fx"unction" processes 
#(:     written at top of source code as "high" subroutines. 
#(:==========================================================================================



#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft(EXIT:"GuiBackUpCall+")
#(: called by: GUI button "BackUp"
#(: param: 
#(: purpose:  call "M.A.I.N." "BackUp" routines 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : 
#!
#! ------------------------------------------------------------------------
#(: function if EXIT:GuiBackUpCall+() { ; n=0 ; } #
if [ "$EXIT" = "GuiBackUpCall+" ] ; then
    n=0

	#(: Simple flags in button for "Backup" or "Backup+SCAN" 
	#(: First, check two GUI var which are set/assigned when user selects options.
	#(: Then, check mode="A" which over-rides . 
	if [ "$lcStatusBackUp" = "Backup" ] ||  [ "$lcStatusBackUp" = "Backup+Scan" ] || [ "${gcCTBmode}" = "A" ] ; then  
        lcTarRetVal=0	#  default value before CTB_BackUpRun
        #
		CTB_BackUpRun "${CTB_PUPSAVE_PATH} --- ${CTB_BACKUP_PATH}"	
        #
        if [ ${gcCTBmode} = "B" ]   ; then    
			CTB_ReStart     
		else
			EXIT="QUIT"  
		fi
	else
		#(: else gcCTBmode = "U" or "A" or "Done"  , will Fall-Out Quit
	    EXIT="QUIT"  
        #(:  Fall-Thru Quit and NO ReStart  
	fi
    #
    EXIT="QUIT"  #(: setup Fall-Thru
	CTB_ClearFlgSys	
    rm -f ${CTB_BackUpStatus} 
		#(:  NOT READY for Fall-Thru to "Quit w/o ReStart"
		#(:  Because Primary Process "CTB" is still on stack.
		#(:  Allow Fall-Thru to clear stack, and startup GUI. 
		#(:  DO NOT call  CTB_ReStart  
fi # end: ft(EXIT:"GuiBackUpCall+")


#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
#(: ft(EXIT:"GuiHLP+")
#(: called by:  GuiHLP+  to  fx(Sys_Box_HLP)  to  Sbr_Box_Message
#(: param: 
#(: purpose:  Display Help  Code in 'gtkdialog/box_help'  
#(: method: calls  Sys_Box_HLP
#(: sends: 
#(: rationale: 
#(: note : 
#!
#! ------------------------------------------------------------------------
#(: function if EXIT:GuiHLP+() { ; n=0 ; } #
if [ "$EXIT" = "GuiHLP+" ] ; then
    n=0
    Sys_Box_HLP    
    CTB_ReStart	
fi # end: ft(EXIT:"GuiHLP+")



#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft(EXIT:"GuiQuitCall+")
#(: called by: GUI button "Quit" 
#(: param: 
#(: purpose: 
#(: method: 
#(: sends: 
#(: rationale: 
#(: note : Catch All ! 
#!
#! -----------------------------------------------------------------------
#(: function if [ "$EXIT" = "GuiQuitCall+" ] || [ "$EXIT" = "QUIT" ]  || [ "$EXIT" = "" ] 
if [ "$EXIT" = "GuiQuitCall+" ] || [ "$EXIT" = "QUIT" ]  || [ "$EXIT" = "" ] ; then
	#(: ft(EXIT="QuitCall+")
	#(: called by: GUI button 	
	#(: purpose: target for any direct "QUIT" or "Fall-Thru" to end session.
	#(: activated if "Quit" button selected.
	#(: activated if no user selection is made. 
	n=0
	#(:  Passed Through all funxtioning code 
    #(:  at this point, process leaves the script.
    #(:  CTB will simply "Fall-Out" .
    #(: 
    #(:  At this point in program :  
	#(:		QUIT: DO NOT RESTART CTB script auto 
    #(:  	QUIT: DO NOT !!!  ReStart
    #(:  SIMPLY FALL OUT !
    #(:  	When run via "MGN" 'manager' 
    #(:  	then "MGN" will handle a "restart" back into the "MGN" program.
	#(: 
    #~ lcMsgStr="." && Sys_Str2DevTrm "$lcMsgStr" "1" "3"
	#(:  if all else has failed to "QUIT", then prg falls to this. 
	#(:  this is manual method  
	CTB_ClearFlgSys	
    #(:  before actual fall-out to "exit 0"
	#(: Backup is finished, so remove flag
    rm -f ${CTB_BackUpStatus} 
    lcMsgStr="<<<>>>"""
fi # end: if [ "$EXIT" = "GuiQuitCall+" ] || [ "$EXIT" = "QUIT" ]  || [ "$EXIT" = "" ] 
#! Any other OPTION, or "funxtion not found"  will allow Fall-Out of program. 
#! Now, Prg is one level from "termination", so simple "exit 0" will kill ALL !
exit 0
#! 
#! ------------------------------------------------------------------------
#!   end of CTB Source Code 
#! ------------------------------------------------------------------------
#! 
#!
#!  =======================================================
#!  System Dox and Legal are here . 
#!  Edit FOSS at your own risk .
#!  =======================================================
#!  
#!    Standard GNU General Public License Header :
#!  
#!    2020 root <glen.e77is@Gmail.com>
#!    website : www.GeoCities.WS/glene77is
#!  
#!    This program is free software; you can redistribute it and/or modify
#!    it under the terms of the GNU General Public License as published by
#!    the Free Software Foundation; either version 2 of the License, or
#!    (at your option) any later version.
#!  
#!    This program is distributed in the hope that it will be useful,
#!    but WITHOUT ANY WARRANTY; without even the implied warranty of
#!    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#!    GNU General Public License for more details.
#!  
#!    To received a copy of the GNU General Public License
#!    write to the Free Software Foundation, Inc.,
#!    51 Franklin Street, Fifth Floor, Boston,
#!    MA 02110-1301, USA.
#!   
#! ====================================================================

#! Development "CTB"    (B)asic version   (5)version
#! CTB is the end product of a "Case and Hack" process 
#!   on a FOSS project by 2byte, et al.
#! CTB is written for Linux Puppy OS, 
#!   built as a frugal install (saveDirectory or saveFile.4fs).
#!
#! CTB tested only on "official" Puppy distributions
#!   not on the many personal distros, which may have dependency problems.  
#! CTB has been tested on 32bit, 64bit, saveDIRECTORY, and saveFILE.4FS systems. 
#! CTB has been tested on 10 running frugal installs regularly, on 2010 XP class computers.  
#! CTB v.4.1 has special CTB_ScanList (only) 
#! CTB v.5 has no CTB_ScanList ( we have removed ScanList, ScanOne, etc ) 
#!
#! CTB maintains some code (gcCTBmode) which controls ScanList options 
#!    available in the CTB-SL (ScanList) version.  
#! CTB :  ScanList and extra note dumps are culled.
#!
#! CTB-5.2 is current, with embedded images


#! ### "(:omments" #####################################################
#!
#! Meta Characters for System Dox and Linux Comments "(:omments"
#!     all subject to "TXN" format control.
#!
#! '#(:' "System Dox" are transferred  by 'TXN' into 'Comments.txt'
#!       used for System Dox to build Documentation for System Project . 
#!       to be used by project team members as "index" / "guide" .
#!       TXN will pull these out to a separate file for project team share. 
#!      These "System Dox" are a "synopsis" "abstract" of module functions. 
#!
#! '#!'  are program dox, "permanent" in the source code. 
#!
#! '#~' , '# ' , '#:' 
#!    regular Bash Comments are Culled via 'TXN'
#!       TXN will kill these common comments, 
#!          clear the clutter, for min prog/script size.
#!
#! "#" are Bash comments to Keep in source code.
#!     must not have a "space" following;
#!       ie, retained by TXN == "#immediate-text-line" . 
#!       ie, culled   by TXN == "# not-immediate-text-line" . 
#!
#! Format Indents are maintained, 'as is' . 
#!
#! #####################################################################
#!
#!  BASH is a very common *nix shell, 
#!     and it's programming language is purely procedural 
#!     and focused on command execution. 
#!  Updates to Bash itself have broken original shell scripts 
#!      which worked good in UNIX.
#!  Caveat: IFS, if [ -f filename ...] et al,  when successful, 
#!      can generate err flgs which are detected by 'set -e' 
#!  BASH has quirks, not fully compatible with sh, Ksh, Tsh, Zsh, etc. 
#!      BASH requires constant local debug-testing during development. 
#!
#!(######################################################################
#!
#! ====================================================================
#! ===  END of CTB SOURCE CODE ========================================
#! ====================================================================

    #(:=======================================================
    #(:=======================================================
    #(:=======================================================
    #(:=======================================================
    #(: System Dox and Legal are here 
    #(:=======================================================
    #(: 
    #(:   Standard GNU General Public License Header :
    #(: 
    #(:   2020 root <glen.e77is@Gmail.com>
    #(:   website : www.GeoCities.WS/glene77is
    #(: 
    #(:   This program is free software; you can redistribute it and/or modify
    #(:   it under the terms of the GNU General Public License as published by
    #(:   the Free Software Foundation; either version 2 of the License, or
    #(:   (at your option) any later version.
    #(: 
    #(:   This program is distributed in the hope that it will be useful,
    #(:   but WITHOUT ANY WARRANTY; without even the implied warranty of
    #(:   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    #(:   GNU General Public License for more details.
    #(: 
    #(:   To received a copy of the GNU General Public License
    #(:   write to the Free Software Foundation, Inc.,
    #(:   51 Franklin Street, Fifth Floor, Boston,
    #(:   MA 02110-1301, USA.
    #(:  
    #(:======================================================================
    #(:===  TOP of CTB System Dox SOURCE CODE ===============================
    #(: #####################################################################
    #(:
    #(: Meta Characters for System Docs and Linux Comments.
    #(: '#(: ' System Docs are transferred  by 'TXN' into 'Comments.txt'
    #(:       used for System Dox to build Documentation for System Project . 
    #(:       TXN will pull these out to a separate file for project team share. 
    #(:         #(:  effectively becomes a 'cut' line in FileOut.sh 
    #(:
    #(: '#!'  are program dox, 'Keepers' in the source code. 
    #(:
    #(: '#~' , '# ' , '#:' 
    #(:    regular Bash Comments are Culled via 'TXN'
    #(:       TXN will kill these common comments, 
    #(:          clear the clutter, for min prog/script size.
    #(:
    #(: "#" are Bash comments to Keep in source code.
    #(:     must not have a "space" following. 
    #(:
    #(: Format Indents are maintained, 'as is' . 
    #(:
    #(: #####################################################################

#(:====================================================================
#(:===  END of CTB System Dox SOURCE CODE ============================================
#(:====================================================================


#(:====================================================================
#(:===  Begin of CTB Code Notes =======================================
#(:====================================================================

            #~ <button> <width>20</width> <height>20</height>
                #~ <input file>"'/tmp/Icon-img-apple-rednnn.svg'"</input>
                #~ <label>"'E.Quit'" </label>
                #~ <action type="exit">Exit by button</action>
            #~ </button>

#(:==================================================================
#(:===  End of CTB Code Notes =======================================
#(:==================================================================

