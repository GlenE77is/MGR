#!/bin/sh
#!
#! rc.z_MGR.sh  :::  
#! "Manager" for project development across 20 Puppy OS Distributions. 
#! 
#! ************************************************************
#!  rc.z_MGR.sh:64:3: note: Not following: 
#!  /etc/DISTRO_SPECS was not specified as input (see shellcheck -x). [SC1091]
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications/bin
. /etc/rc.d/PUPSTATE      #  gather basic "state" of Puppy "system"
. /etc/DISTRO_SPECS     #  gather basic Distro data
#! ************************************************************
#!
#! "gcSysDevDob" is unique to "MGR" 
#! "gcSYSDevDob" is used in "rc.sysinit" and "rc.shutdown"
#! 
export gcSysDevDob="240116-1502"
#!
export gcMgrDevId="MGR{R}" # "R" "S" "T" 
#! 
#! ######################################################################################
#! top: Fall-Thru "initz" function 
#! ######################################################################################
#!
#!
#!
#! ###################################
#! Splash / Indicator for "RUNNING" .   Initial Splash floats while MGR initializes
#!
#!
lcMsgStr="${gcMgrDevId}"
/usr/lib/gtkdialog/box_splash -fg cyan -bg black -border true  -close never -text "\
 >>> ${lcMsgStr} <<<  " &  RETVAL=$?
GtkPid_Sbr_Init_Splash1=$!
sleep .3
#! Splash / Indicator for "RUNNING" .   Initial Splash floats while MGR initializes
/usr/lib/gtkdialog/box_splash -fg cyan -bg black -border true  -close never -text "\
 >>>   ${lcMsgStr}  <<<    " &  RETVAL=$?
GtkPid_Sbr_Init_Splash2=$!
sleep .5
#! Splash / Indicator for "RUNNING" .   Initial Splash floats while MGR initializes
/usr/lib/gtkdialog/box_splash -fg cyan -bg black -border true  -close never -text "\
 >>>       ${lcMsgStr}     <<<  " &  RETVAL=$?
GtkPid_Sbr_Init_Splash3=$!
sleep .7
#!
#! will kill all initz splash at top of main ()
#!
#! ######################################################################################
#! end: Fall-Thru "initz" function 
#! ######################################################################################
#!
#!
#!
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
#!  BASH can be pickyer than mud on a door-knob. 
#!  Running via Geany Xterminal for debugging is very helpful.
#!  Use of the "set" command on="-x -e", off="+x +e" is very useful. 
#! =====================================================================
#!
#! MGR Edit Recovered from rc.z_MGR-upupkk-231128-1208
#! MGR recovered from DpupBookWorm  231215-1914 
#!
#! - Major Systems used - plus others listed below :
#!
#! iso-KineticPup32-22.10+2_230604  Kernel: 5.10.149
#!   BUILD_FROM_WOOF='testing;362df0ce6;2023-02-17 18:54:46 +0200'
#!   sda1,ext4,/pup_UpupKK-SDA/puppy_upupkk+d_22.10.sfs
#!
#! iso_BionicPup32-19.03-K5.9_231209.iso__231209
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

#! =====================================================================
#!
    #~ Running Tests on 20 Puppy Linus OS, including: 
    #! =================================================
    #!~ iso-KineticPup32-22.10+2__________________230604
    #!~ iso-BionicPup32-8.0+30_____________K:4____220407
    #!~ iso_BionicPup32-19.03-K5.9_________K:5____231209
    #!~ iso-UPupFF+D-20.12+4_Focal-Fossa__________201210
    #!~ iso_BookwormPup32-23.11-B4_K6.1.55_K:6____231210
    #!~ iso_ManticPup32-23.10+1____________K:6____231209
    #!~ iso-JammyPup32-22.04+8____________________221203
    #!~ iso-S15Pup-64_22.12+1-T___________________220922
    #!~ iso-Xenial-64_7.5_XL______________________220401
    #!~ iso_slacko64_14.2_32-674-bit_comptible____220227
    #!~ iso-Slacko-7.0_DpupS7_14.2________________220205
    #!~ iso_devuanpup-9.7.0-chimaera_4.0_i386_____211206
    #!~ iso-Quirky_April-7.0.1F-uefi______________200511
    #!~ iso_LxPupSc-slacko-20.01+0-T-k64__________200129
    #!~ iso-UpupTahr-6.0.6-k4.1.30-uefi___________190211

#!
#! =============================================================
#! rc.z_MGR , the "Manager"  , the "FrameWork"
#! filename.sh is the name format,  so GEANY sees a 'script' executable.
#! chmod +x rc.z_MGR.sh might be required for duplicat/export files.
#! "cased+cloned-and-hacked" by gae.
#! 
#! GNU bash is the shell.
#! Gtk is the gui / dialogue builder.
export gcMgrDevFirstRun="1"
#!

export gcMgrDevID="M.G.R.EmGr.DblClk.MnxGen"
export gcMgrDevName="Manager.Embedded-Graphics.DblClk."
#!
export gcSysNameBase="MGR.5.3"  #: used in ${gcSysNameBase} code as systemlabel
export gcMGRname="Manager" 
#!
export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"
export gcSysIdFull="${gcSysSave}"			# ${PUPSAVE} # like "iso-KineticPup32-22.10"
export gcSysDevHw="MCT-AMD-500_Bios2009_"	# Dev Computer HardWare
#~ export gcSysDevKern="${uname -s}"
export gcBootOsHd="SDA"			# OS Hard-Drive
export gcBootOsExe="${0}"		# OS Executable
#!
#! ### MainGui MGR R ### Window Header ############################
export gcMgrVer="-5.3"   #"-lint" "-TXN" "-DEV"
#! ###############################
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
#!
#! Declare/Assign values to gc MGR var from 
#! . /etc/rc.d/PUPSTATE    #  gather basic "state" of Puppy "system"
#! . /etc/DISTRO_SPECS     #  gather basic Distribution data
#!
export gcSysDistroName="${DISTRO_NAME}" 
export gcSysDistroVersion="${DISTRO_VERSION}"
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_Db_Subname="$DISTRO_DB_SUBNAME"
export gcSysDistro_DB_Subname="${DISTRO_DB_SUBNAME}"
#!
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#!
#! *************************************************************************************
#! Data & Flag for Embedded Graphic Image ##############################################
#! basename /rc.z_MGR.sh .sh
#~ export lcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"	# Image Master 
export gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"	# Image Master 
#! Data & Flag for Embedded Graphic Image ##############################################
#! *************************************************************************************
#! name changed to push Alpha index to "EmGa" (top of list)
#! local: gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"
export gcMgrMasterSubDir="/tmp/EmGr-Master-"	# Embedded Graphics 
#! export gcMgrMasterSubDir="/root/myapplications-"
#!
#------------------------------------------------------------------------------
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#! test these:
 #! uname -a > /MGR_BitSize.txt
 #! gcBitSize="$(cat /MGR_BitSize.txt)"
 #! export gcBitSize	="$(cat /MGR_BitSize.txt)"
#!
#! MGR Debug controlers:
#!  set -xe		# Start x e
    set +xe     # Stop x e
#!
#! ##################################################################
#! ###  leading key-words  ##################################################
#! rc.z_TXN_EXE.sh will cull most notes  with this "leader"              #~
#! rc.z_TXN_EXE.sh will keep notes with this "leader"                    #! 
#! rc.z_TXN_EXE.sh will build a "comment" file based on this "leader"    #(: 
#! ##########################################################################
#! ##################################################################
#!
#! 
#(: ###########################################
#(: these "terms" can be searched for a group:
#(: -D----------------------------gtkdialog--
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
#! begin: example of regular "function" label
#!    Each regular "function" has a header that begins with label like this:
#!
#! function Sys
#! function Sbr
#!
#! end: regular "function"
#! 
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#(: rc.z_MGR , the "Manager"   ,  is a "FrameWork"
#(: .sh format so GEANY sees a 'script' as executable.
#(: chmod +x rc.z_MGR.sh might be required for export files.
#(: "cloned-and-hacked" by gae.
#(:
#(:  BASH is a very common *nix shell,
#(:     and it's programming language is purely procedural
#(:     and focused on command execution.
#(:  Updates to Bash itself have broken older scripts 
#(:     that used to work perfectly fine in UNIX.
#(:
#(:
#(:
#(: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#(:
#(: subroutines as  "Sbr..."  to be copied into "LIB-sbr.sh" for library-copy usage
#! note:
#! if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then
#! see pup_event_backend_modprobe
#(: # #########################################################
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
#(: === MGR ============================================================
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
#(: ====================================================================
#(:
#!
#!
#(: "lc" var are 'local' and subject to change / reuse / reassignment
#(: "gc" var are 'global' and should not be changed.
#(:      Always copy into 'lc' for use.
#(: ======================================================================
#(: ;;; FrameWork for Header for each SubRoutine ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(:		copy this framework directly into all developing sub-routines
#(:		as the "Sys" standard method of Program Dox for project documentation.
#(:		(1) recording Developer's VerDts
#(:		(2) recording the Linux Sys Documented ID info.
#(:     (3) documenting sub-routine's "modus operandi".
#!
#!
#(: ======================================================================
#(: fx()
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
#(:

#! end: Fall-Thru "initz" function 
kill ${GtkPid_Sbr_Init_Splash1}
kill ${GtkPid_Sbr_Init_Splash2}
kill ${GtkPid_Sbr_Init_Splash3}
#! end: Fall-Thru "initz" function 
#!
#! ######################################################################################
#! Splash / Indicator for "RUNNING" .   Initial Splash floats while MGR initializes 
#~ /usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text "\
 #~ >>> Manager <<<  " &  RETVAL=$?  
#~ GtkPid_Sbr_Init_Splash=$!  
#~ sleep .5 
#~ kill ${GtkPid_Sbr_Init_Splash}
#~ /usr/lib/gtkdialog/box_splash -fg black -bg yellow -border true  -close never -text "\
 #~ >>>   Manager   <<<  " &  RETVAL=$?  
#~ GtkPid_Sbr_Init_Splash=$!  
### kill ${GtkPid_Sbr_Init_Splash}
#! ######################################################################################
#!
#!
#! BEGIN:     Embedded_Dialog_Color
#! rc.z_CDW_Embedded_Dialog_Colors.sh
#!
if [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
	n=0   # gcEmGrImgFnTrgTxt="${gcMgrMasterSubDir}${lcMasterTrgImgTxtExt}" 
	lcMsgStr="=== writing EmGa-Master-Img ==============================="
	/bin/echo -e "\\033[0G\\033[1;37m*** \\033[1;31m ${lcMsgStr} \\033[1;37m***\\033[0;39m" 
	sleep 1
fi
#!



#(: ============================================================
Sbr_ImageCntMax() {		# Not Used 
n=0
}
#(: ============================================================
Sbr_ImageCntMin() {		# Not Used 
n=0
}
#(: ============================================================





#!
#! ======================================================================
#! ## begin: Menu_Main_Echo   ################################################
#! ======================================================================
#!
#(: ====================================================================
#(: fx(Sbr_Menu_Standard_Selection_Header)    # MainMenu
#(: called by: Menu Echo Short and Long 
#(: param: 
#(: purpose: Standard Menu Options, both Short and Long 
#(: calls:
#(: method: standard "echo" 
#(: sends:
#(: rationale: most changes/updates occur here, shared Short and Long Menu.
#(: note : same STANDARD 'header' for long menu and short menu. 
#(:
#!
#! echo Standard Main Menu Options into ""Short and "Long" Menu.lst file output. 
#! ####################################################################################
function Sbr_Menu_Standard_Selection_Header() { 	# Standard Selection Header 
		echo "###################################{ Kinetic Kudu +D.22 } "
		echo "title  1 { K-K }---UpupKK+D-22.  -------K:5--------------- ${gcBootOsHd} \n Kinetic Kudu  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupKK-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupKK-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupKK-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:5  }"
		echo "title  2 { B5B }---UpupBB-K5 ---Edit----K:5---FF--LO------_${gcBootOsHd}  \n Bionic Beaver  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB5B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB5B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB5B-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Jammy Jellyfish +D+22.04 }"
		echo "title  3 { J-J }---UpupJJ+D+22.04 L6 ---K:5---------------_${gcBootOsHd} \n Jazzy Jellyfish  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupJJ-SDA/vmlinuz  psubdir=/pup_UpupJJ-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupJJ-SDA/initrd.gz"
		echo "###################################{ S15pup64 Slacko"
        echo "title  4 { S1564 }- S15pup64-20.01 -----K:5---FF--LO------ ${gcBootOsHd} \n  \n  \n"
        echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
        echo "  kernel /pup_S15pup64-${gcBootOsHd}/vmlinuz    psubdir=/pup_S15pup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
        echo "  initrd /pup_S15pup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Xenial-64-750}"
		echo "title  5 { X64 }---Xenial-64-750  ------K:4---FF--LO------ ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX64-SDA/vmlinuz  psubdir=/pup_UpupX64-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupX64-SDA/initrd.gz"
		echo "###################################{ Tahr-6.06}"
		echo "title  6 { T-6 }---Tahr-6.06  ---------------------------- ${gcBootOsHd} \n Trusty Tahr  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupT6-SDA/vmlinuz    psubdir=/pup_UpupT6-SDA  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupT6-SDA/initrd.gz"
		echo "###################################{ SpupSlacko64 }"
		echo "title  7 { S-7 }---pup Slacko7+14.2 ---------------------- ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_SpupS7-${gcBootOsHd}/vmlinuz    psubdir=/pup_SpupS7-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_SpupS7-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Impish Indri }"
		echo "title  8 { I-I }---Upup-Impish-Indri --------------------- ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupII-${gcBootOsHd}/vmlinuz  psubdir=/pup_UpupII-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupII-${gcBootOsHd}/initrd.gz"
	    echo "# #####################################{ S15Slacko-64 }"
		echo "title  9 { S64 }---SpupSlacko64  ------------- 64 -------- ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Spup64-${gcBootOsHd}/vmlinuz  psubdir=/pup_Spup64-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Spup64-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Mantic Minotaur }"
		echo "title  -10- { M-M }-UpupMM-23.11 Mantic-Minotaur-L6-K:6 -- ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupMM-SDA/vmlinuz    psubdir=/pup_UpupMM-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupMM-SDA/initrd.gz"
		echo "###################################{ DpupDebian-BookWorm }"
		echo "title  -11- { B-W }---dpupbw32_23.11 -BookWorm------------ ${gcBootOsHd} \n BookWorm  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_DpupBW-SDA/vmlinuz    psubdir=/pup_DpupBW-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_DpupBW-SDA/initrd.gz"
        echo "###################################{ UpupFF+D08.20.12 Focal-Fossa }"
		echo "title  -12- { F-F }---Focal-Fossa  -------FireFox---------- ${gcBootOsHd} \n Focal-Fossa  \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupFF-SDA/vmlinuz    psubdir=/pup_UpupFF-SDA pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupFF-SDA/initrd.gz"
		echo "# #####################################{ XenialX7.08 }"
		echo "title  -13- { X708}--- Xenial-7.08  ---------------------- ${gcBootOsHd}  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupX708-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupX708-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
		echo "  initrd /pup_UpupX708-${gcBootOsHd}/initrd.gz"
		echo "# #######################{ Slacko-LxSc }"
		echo "title  -14- { SLxSc }- Pup_Slacko-LxSc-20.01 --K:5.4--64--- ${gcBootOsHd} \n SLxSc \n  \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Slacko-LxSc-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko-LxSc-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Slacko-LxSc-${gcBootOsHd}/initrd.gz"
		echo "# #####################################{ Quirky April 7 }"
		echo "title  -15- { Quirky 7 }--- Quirky-7 --------------------- ${gcBootOsHd} \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Quirky-${gcBootOsHd}/vmlinuz    psubdir=/pup_Quirky-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Quirky-${gcBootOsHd}/initrd.gz"
		echo "# ##################################{ pup_Devuan }"
		echo "title  -16- { Devuan X }--- pup_Devuan-SDA   ------------- ${gcBootOsHd}  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd    /MARK-${gcBootOsHd}"
		echo "  kernel /pup_Devuan-${gcBootOsHd}/vmlinuz    psubdir=/pup_Devuan-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_Devuan-${gcBootOsHd}/initrd.gz"
		echo "###################################{ Bionic Beaver  K:4  }"
		echo "title  -17- { B4B }--- UpupBB-K:4  ----------------------- ${gcBootOsHd}  \n   \n   \n"
		echo "  find --set-root --ignore-floppies --ignore-cd   /MARK-${gcBootOsHd}"
		echo "  kernel /pup_UpupB4B-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupB4B-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
		echo "  initrd /pup_UpupB4B-${gcBootOsHd}/initrd.gz"
} # end: 
export -f Sbr_Menu_Standard_Selection_Header
#!
#! ======================================================================
#! ## end: Menu_Main_Echo   ################################################
#! ======================================================================
#!
#!
#!
#! ======================================================================
#! ## begin: Menu_Long_List  ############################################
#! ======================================================================
#(: ============================================================
#(: fx(Sbr_MenuLongList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Long format. 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_MenuLongList() {  
    n=0
    #! initz was done by caller 
    #! Build Long Menu parameters 
    #!
	#! Main Menu Long with two color schemes: ARB_ORGCBYR ARB_ORGGBYR

    lcOsSubDef="2"   # "Original" Main Menu Long ALWAYS DEFAULTS to "0"  "MainMenu" "MenuLong"
    lcOsSubId="ORG"
    gcC3MOsSubId="{SDA}"
    lcC3MOsSubIdd="ORG"
    lcOsSubDir="Main"

    #~ export lcOsSubFn="/mnt/home/menu-orig.lst"  # NOT USED 
    export lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
    export lcOsSubSplClr="red"
	#~ export lcOsSubSplClrStr="yellow/blue white/blue"	# default
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
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.  ${lcOsSubSplClrID}
.  ${EXIT} = menu.lst ${gcC3MOsSubId}
.       
. 	                                    "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
        #
        #! =============================================================
        #
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
	echo "	#configfile /menu.lst"
	echo "  #find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  #kernel /pup_UpupBB-${gcBootOsHd}/vmlinuz    psubdir=/pup_UpupBB-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  #initrd /pup_UpupBB-${gcBootOsHd}/initrd.gz"
	echo "  root (hd0,0)"
	Sbr_Menu_Standard_Selection_Header # function  # LONG mainmenu # Standard Selection Header 
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
	echo "#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
	echo "title   " "\_"
	echo "root (hd0,0)"
	echo "#####################{ Slacko-LxSc }"
	echo "title    x{ Slacko-LxSc }--- Pup_Slacko-LxSc-20.01  --------${gcBootOsHd} " "\_"
	echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  kernel /pup_Slacko-LxSc-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko-LxSc-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  initrd /pup_Slacko-LxSc-${gcBootOsHd}/initrd.gz"
	echo "#####################{ Xenial-708}"
	echo "title    x{ Xenial-708 }-- Upup-Xenial  --------------------${gcBootOsHd} " "\_"
	echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  kernel /pup_Xenial-708-${gcBootOsHd}/vmlinuz  psubdir=/pup_Xenial-708-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  initrd /pup_Xenial-708-${gcBootOsHd}/initrd.gz"
	echo "#####################{ Racy }"
	echo "title    x{ Racy 5.5 }--- Pup Racy 5.5   -------------------${gcBootOsHd} " "\_"
	echo "  find --set-root --ignore-floppies --ignore-cd /MARK-SDA"
	echo "  kernel /pup_Racy-SDA/vmlinuz    psubdir=/pup_Racy-SDA pmedia=usbflash pfix=fsck,copy"
	echo "  initrd /pup_Racy-SDA/initrd.gz"
	echo "####################{ EasyOS 3.4.1. }"
	echo "title    x{ EasyOS }--- pup_EasyOS 3.4.1 -------------------${gcBootOsHd} " "\_"
	echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  kernel /pup_EasyOS-${gcBootOsHd}/vmlinuz  psubdir=/pup_EasyOS-${gcBootOsHd} pmedia=usbflash pfix=fsck,copy"
	echo "  initrd /pup_EasyOS-${gcBootOsHd}/initrd.gz"
	echo "#####################{ Slacko-64-14.2 3264bit }"
	echo "title    x{ Slacko64-${gcBootOsHd} } - Pup_Slacko64 14.2----${gcBootOsHd} " "\_"
	echo "  find --set-root --ignore-floppies --ignore-cd /MARK-${gcBootOsHd}"
	echo "  kernel /pup_Slacko64-${gcBootOsHd}/vmlinuz    psubdir=/pup_Slacko64-${gcBootOsHd}  pmedia=usbflash  pfix=fsck,copy"
	echo "  initrd /pup_Slacko64-${gcBootOsHd}/initrd.gz"
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
	echo "title === Visible UTL ========================================================="
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
	echo "	  configfile /menu-advanced.lst"
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
    #
	kill ${GtkPid_Mnu_Box_Splash}
    #
export gcC3MConfigArbId="${gcC3MConfigArbId}"
#
echo "${lcC3MOsSubIdd}" > "${gcC3MConfigArbCfg}"  # config of menu
#
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg cyan -bg darkred -border true  -close never -text "\
.   Install 'Original' Menu.lst:
.         ( DONE )
. ${EXIT} = menu.lst ${lcC3MOsSubIdd} 
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
} # end: 
export Sbr_MenuLongList
#
#! ======================================================================
#! ## end: Menu_Long_List   ############################################
#! ======================================================================
#!
#!
#!
#! ======================================================================
#! ## begin: Menu_Short_List   ##########################################
#! ======================================================================
#(: ============================================================
#(: fx(Sbr_MenuShortList)	#: Active
#(: called by: main gui 
#(: purpose: (MGR) Build Menu Short format. 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_MenuShortList() {  
        #! initz was done by caller 
        #! Sbr_MenuShortList
        #!
       #!
        #! declare Preset Var. 
		lcOsSubClrBase="/boot/grub"	# 'base' allows easy change of "menu.lst" background colors
			lcOsSubTout="32"    # Menu.lst "Time-Out" for default "menu.lst" selection.
		#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		#! ======================================================================
		#! function [EXIT:ARB_00] # short menu.lst   #  Not Called 
		if [ "$EXIT" = "ARB_00" ] ; then    # EXIT:ARB_00 # short 4 option menu of major OS.
			lcOsSubDef="0"   # "00" default position-selection in "menu.lst"  
			lcOsSubId="ARB"
			lcC3MOsSubIdd="ARB_00"
			lcOsSubDir="Main-00-Generic-SDA" 
			#~ lcOsSubFn="/mnt/home/menu.lst00"   # not used
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-yel.xpm"
			lcOsSubSplClrBg="red"
			lcOsSubTout="172"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_KK] # short menu.lst
		if [ "$EXIT" = "ARB_KK" ] ; then
			lcOsSubDef="1"   # default position-selection
			lcOsSubId="KK"
			lcC3MOsSubIdd="Upup-Kenitic-Kudo"
			lcOsSubDir="pup_UpupKK-SDA"
			lcOsSubFn="/mnt/home/menu.lstKK"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function [EXIT:ARB_B5B] # short menu.lst
		if [ "$EXIT" = "ARB_B5B" ] ; then
			lcOsSubDef="2"   # default position-selection
			lcOsSubId="B5B"
			lcC3MOsSubIdd="Upup-Bionic-Beaver-K5"
			lcOsSubDir="pup_UpupB5B-SDA"
			lcOsSubFn="/mnt/home/menu.lstB5B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="brown"   # "brown" is 8B6914 is "darkred"
			lcOsSubSplClrBg="yellow" 
			lcOsSubTout="12"
		fi

		#! ======================================================================
		#! function [EXIT:ARB_JJ] # short menu.lst
		if [ "$EXIT" = "ARB_JJ" ] ; then
			lcOsSubDef="3"  # default position-selection
			lcOsSubId="JJ" 
			lcC3MOsSubIdd="Upup-Jazzy-Jellyfish-K5" # subdir ID
			lcOsSubDir="pup_UpupJJ-SDA"  # /subdir-label
			lcOsSubFn="/mnt/home/menu.lstJJ"    
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-pur.xpm"  # image-background
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="purple"   # image name
			lcOsSubTout="12"    # menu timeout
		fi
		#! ======================================================================
		#! function [EXIT:ARB_S1564] # short menu.lst
		if [ "$EXIT" = "ARB_S1564" ] ; then
			lcOsSubDef="4"
			lcOsSubId="S15pupS64"
			lcC3MOsSubIdd="Slacko-S15-S64-K5"
			lcOsSubDir="pup_S15pup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstS1564-"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_X64] # short menu.lst
		if [ "$EXIT" = "ARB_X64" ] ; then
			lcOsSubDef="5"   # default position-selection
			lcOsSubId="X64"
			lcC3MOsSubIdd="Upup-Xenial64"
			lcOsSubDir="pup_UpupX64-SDA"
			lcOsSubFn="/mnt/home/menu.lstX64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_T6] # short menu.lst
		if [ "$EXIT" = "ARB_T6" ] ; then
			lcOsSubDef="6"   # default position-selection
			lcOsSubId="T6"
			lcC3MOsSubIdd="Upup-Tahr-6"
			lcOsSubDir="pup_UpupT6-SDA"
			lcOsSubFn="/mnt/home/menu.lstT6"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_S7] # short menu.lst
		if [ "$EXIT" = "ARB_S7" ] ; then
			lcOsSubDef="7"   # default position-selection
			lcOsSubId="S7"
			lcC3MOsSubIdd="S-7"
			lcOsSubDir="pup_SpupS7-SDA"
			lcOsSubFn="/mnt/home/menu.lstS7"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_UIMP] # short menu.lst
		if [ "$EXIT" = "ARB_UIMP" ] ; then
			lcOsSubDef="8"   # default position-selection
			lcOsSubId="UIMP"
			lcC3MOsSubIdd="UIMP"
			lcOsSubDir="pup_UpupII-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_S64] # short menu.lst
		if [ "$EXIT" = "ARB_S64" ] ; then
			lcOsSubDef="9"   # default position-selection
			lcOsSubId="S64"
			lcC3MOsSubIdd="S64"
			lcOsSubDir="pup_Spup64-SDA"
			lcOsSubFn="/mnt/home/menu.lstSlacko64"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-blu.xpm"
			lcOsSubSplClrFg="white"
			lcOsSubSplClrBg="green"
			lcOsSubTout="12"
		fi
        #!
 		#! ======================================================================
		#! function [EXIT:ARB_MM] # short menu.lst
		if [ "$EXIT" = "ARB_MM" ] ; then
			lcOsSubDef="10"   # default position-selection
			lcOsSubId="MM"
			lcC3MOsSubIdd="Mantic-Minotaur"
			lcOsSubDir="pup_UpupMM-SDA"
			lcOsSubFn="/mnt/home/menu.lstManticMinotaur"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="blue"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_BW] # short menu.lst
		if [ "$EXIT" = "ARB_BW" ] ; then
			lcOsSubDef="11"   # default position-selection
			lcOsSubId="BW"
			lcC3MOsSubIdd="BookWormDeb"
			lcOsSubDir="pup_DpupBW-SDA"
			lcOsSubFn="/mnt/home/menu.lstDpupBW"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="orange"
			lcOsSubSplClrBg="blue"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_FF] # short menu.lst
		if [ "$EXIT" = "ARB_FF" ] ; then
			lcOsSubDef="12"   # default position-selection
			lcOsSubId="FF"
			lcC3MOsSubIdd="F-F"
			lcOsSubDir="pup_UpupFF-SDA"
			lcOsSubFn="/mnt/home/menu.lstFF"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_X708] # short menu.lst
		if [ "$EXIT" = "ARB_X708" ] ; then
			lcOsSubDef="13"
            lcOsSubId="X708"
			lcC3MOsSubIdd="X708"
			lcOsSubDir="pup_UpupX708-SDA"
			lcOsSubFn="/mnt/home/menu.lstX708"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_SLXSC] # short menu.lst K=4
		if [ "$EXIT" = "ARB_SLXSC" ] ; then
			lcOsSubDef="14"
			lcOsSubId="SLXSC"
			lcC3MOsSubIdd="SLXSC"
			lcOsSubDir="pup_Slacko-LxSc-SDA"
			lcOsSubFn="/mnt/home/menu.lstSLXSC"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_Q7] # short menu.lst
		if [ "$EXIT" = "ARB_Q7" ] ; then
			lcOsSubDef="15" 
			lcOsSubId="Quirky7"
			lcC3MOsSubIdd="Quicky7"
			lcOsSubDir="pup_Quirky-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_Q7] # short menu.lst  # not on gui list 
		if [ "$EXIT" = "ARB_DV" ] ; then
			lcOsSubDef="16" 
			lcOsSubId="Devuan"
			lcC3MOsSubIdd="Devuan"
			lcOsSubDir="ppup_Devuan-SDA"
			lcOsSubFn="/mnt/home/menu.lstQuirky"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-grn.xpm"
			lcOsSubSplClrFg="red"
			lcOsSubSplClrBg="orange"
			lcOsSubTout="12"
		fi
		#! ======================================================================
		#! function [EXIT:ARB_B4B] # short menu.lst
		if [ "$EXIT" = "ARB_B4B" ] ; then
			lcOsSubDef="17"   # default position-selection
			lcOsSubId="B4B"
			lcC3MOsSubIdd="Upup-Bionic-Beaver"
			lcOsSubDir="pup_UpupBB-SDA"
			lcOsSubFn="/mnt/home/menu.lstB4B"
			lcOsSubSplXpm="${lcOsSubClrBase}/xpm-c-red.xpm"
			lcOsSubSplClrFg="yellow"
			lcOsSubSplClrBg="brown" # "brown" is 8B6914 is "darkred"
			lcOsSubTout="12"
		fi

		#! =======================================================
		#! function [EXIT:ARB_ShortMenu() { ; n=0 ; } # based on "C3M"
		#! config via Sys_Pup_State:  gcC3MConfigArbCfg="/root/my-applications/bin/C3M_Config_Arb"
		echo "${lcOsSubId}" > "${gcC3MConfigArbCfg}"
	#! -D----------------------------gtkdialog-- 
	/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrFg} -bg ${lcOsSubSplClrBg} -border true -close never -text "\
	.
	.  Install  Menu.lst     
	.  ${lcC3MOsSubIdd}     
	.           
	.					                     "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
        # Fall Thru 
		#-----------------------------------------------------------------------
		#-----------------------------------------------------------------------
		#=== begin menu short code ==================================================
		#(: ============================================================================
		#(: === SHORT MENU === shortmenu === menu short === MenuShort === function ===
		#(:  SHORT MENU is a Build by 'MGR'"
		#(:  'ID = '${lcC3MOsSubIdd}'"
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
        #~ lcOsSubSplClrID="bg=green/Black fg=yellow/red"
        #~ lcOsSubSplClrIfg="black"
        #~ lcOsSubSplClrIbg="yellow"	
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
		Sbr_Menu_Standard_Selection_Header # function  # Short menu # Standard Selection Header 
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
        echo "# In itself ...  Godly Living is a benefit without consequence. "
        echo "# I can hear God laughing at us, and saying, "
        echo "# 'I gave you one law and you made ten, then a hundered, then a thousand  "
        echo "# I gave you my soul to live a good life, and you play parlor games. "
        echo "# I gave you my NAME    and now   you want a 'sign' that I AM  ? ' "  
        echo "# ****************************************************************************"
        echo "# #######################################################"
		) > /mnt/home/menu.lst   #   "title  0{ 'C3M' '00'  Short Menu }---SDA"
        #
		sleep 3
		kill ${GtkPid_Mnu_Box_Splash}
		chmod +x "/mnt/home/menu.lst"
		#
		export gcE3Rcontrol=${EXIT}	# maintain this value
		#
        n=0
        Sbr_Cbx_ReBoot  "1"
        #~ Sbr_Cbx_ReStart "1" ### for quick test 
        #!
} # end: Menu Short List
#!
#! ======================================================================
#! ## end: Menu_Short_List   ############################################
#! ======================================================================
#!


#(: ============================================================
#(: ============================================================
#(: ============================================================


#(: ============================================================
#(: fx(Sbr_CDW_Embedded_Dialog_Colors)	#: Active Marker
#(: called by: 4764
#(: purpose: 
#(: receives param:
#(: returns:
#(: note:
#(:
#! ###########################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # setup color constants
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
} #end: Embedded_Dialog_Colors.sh
#!
#!
#!
#! #######################################################
#! BEGIN:     Embedded_Graphic_Images   "EmGr"
#! reference: rc.z_CDW_Embedded_Graphic_Images.sh
#! #######################################################
#
#!
#!
#!
#!
#!
#!
#!
#!
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#! begin: Sbr_CDW_Embedded_Graphic_Images
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#!
#(: ============================================================
#(: fx(Sbr_CDW_EGI_Long)	#: Active
#(: called by:
#(: purpose: (MGR) CDW EGI Long FORM
#(: receives param:
#(: returns:
#(: note:
#(:
#! ############################################################
function Sbr_CDW_EGI_Long() {    # LONG FORM called by CheckIF
#!
#=========================================================================================
#!
#!	cat ${lcEmGrImgTrg} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
#!
#=========================================================================================
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#(: ============================================================
#(: fx(Sbr_CDW_EGI_Long)	#: Active
#(: called by:
#(: purpose: (MGR) CDW EGI LONG FORM
#(: receives param:
#(: returns:
#(: note:
#! ##########################################################################
#~ set -x -e

lcEmGrImg="EmGa-Img-Fn-Trg-Txt-Master"   # Title for Master Gui .txt

#! ##########################################################################
n=0
#!
#! ##########################################################################
				#! 0 ### Dev XPM ##############################################################
				#! "EmGr" # Dev One Single Master Embedded Graphic Image file for  all <button> 
				#~ lcEmGrImgSrc="/tmp/EmGr-img-apple-XXX.svg"	# Used by Short Color Mode 
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo '<?xml version="1.0" encoding="UTF-8"?>
				#~ <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  #~ <g
				#~ style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
					#~ <path d="m 50,10 0,35"/>
					#~ <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  #~ </g>
				#~ </svg>
				#~ ' > ${lcEmGrImgSrc}
                #~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
                ###
                ### method:
                ### 1.echo one image Header to Master
                ### 2.define : cp lcEmGrImgSrc = "/tmp/EmGr-img---.svg" 
                ### 3.define : cp lcEmGaImgTrg = "/tmp/EmGa-img---.svg"
                ### copy Src to EmgaImg # build /Tmp/SourceFileImage 
                ###	cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
                #!

				#! X "EmGr"###########################################################
				#~ lcEmGrImgSrc="/tmp/EmGr-img-Serenity.xpm" ### fake green-PURPLE # major upper-left Image
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}Serenity" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo ' ' > ${lcEmGrImgSrc} # writing a new /tmp/SRC file 
                #~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen

                #! ##########################################################################
				n=0
                                #! 0 ### Dev XPM ##############################################################
                                #! "EmGr" # One Single Master Embedded Graphic Image file for  all <button> 
                                #~ lcEmGrImgTrg="/tmp/EmGr-img-hash-XXX.xpm"	# Not Used
                                #~ lcEmGrImgSrc="/tmp/EmGr-img-apple-XXX.svg"
                                #~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                                #~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
                                #~ echo '<?xml version="1.0" encoding="UTF-8"?>
                                #~ <svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
                                  #~ <g
                                #~ style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
                                    #~ <path d="m 50,10 0,35"/>
                                    #~ <path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
                                  #~ </g>
                                #~ </svg>
                                #~ ' > ${lcEmGrImgSrc}
                                #~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
                                ###
                                ### method:
                                ### 1.echo one image Header to Master
                                ### 2.define : cp lcEmGrImgSrc = "/tmp/EmGr-img---.svg" 
                                ### 3.define : cp lcEmGaImgTrg = "/tmp/EmGa-img---.svg"
                                ### copy Src to EmgaImg 
                                ###	cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster} 	# for Trg for "Dump" to screen
				#! ###########################################################
				#! begin:   HASH   
				#! ###########################################################
				#!
				#! 1 "EmGr"### HASH GRN ########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-hash-grn.xpm" ### fake green-PURPLE # major upper-left Image
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 7 "EmGr"############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 8 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 9 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 10 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-apple-redgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 11 "EmGr"#############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-rednnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 12 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-grnnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 13 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-quit-yelnnn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 14 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-bluxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
				  <g style="fill:yellow;stroke:blue;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
					<path d="m 31,31,31,31"/>
					<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
				  </g>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 15 "EmGr" ############################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxorange.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 16 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 17 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 18 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-grnxred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 19 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 20 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-jug-redxblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 21 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#!
				#! ############################################################
				#! begin: CHECK-X   colorXcolor is smaller   "X" is smaller 
				#! ############################################################
				#!
				#! 22 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 23 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:blue;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 24 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 25 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 26 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 27 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redXred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:red;fill-opacity:0.8;stroke:red;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 28 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grnXgrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#00FF00;fill-opacity:1.3;stroke:green;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 29 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelXyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:#888800;stroke-width:3"
				d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 30 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-bluXblu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
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
				#! 31 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-redred.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#FF1111;fill-opacity:0.8;stroke:#FF0000;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 32 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-grngrn.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:#11FF11;fill-opacity:0.8;stroke:#00FF00;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 33 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-yelyel.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:yellow;fill-opacity:0.8;stroke:yellow;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#!
				#! 34 "EmGr" ###########################################################
				lcEmGrImgSrc="/tmp/EmGr-img-Check-blublu.svg"
				echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				echo '<?xml version="1.0" encoding="UTF-8"?>
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
				  <path style="fill:blue;fill-opacity:0.8;stroke:blue;stroke-width:5"
				d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
				</svg>
				' > ${lcEmGrImgSrc}
				cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
				#!
				#! ############################################################
				#! begin:    RECTANGLE
				#! ############################################################
				#!
				#~ #! 35 "EmGr" ###########################################################
				#~ lcEmGrImgSrc="/tmp/EmGr-img-RectRed.svg"
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo '<?xml version="1.0" encoding="UTF-8"?>
					#~ <svg version="1.1" width="1000" height="1000">
					  #~ <defs>
						#~ <linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
						  #~ <stop style="stop-color:red;stop-opacity:1" offset="0" />
						#~ </linearGradient>
					  #~ </defs>
					  #~ <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
					#~ </svg>
				#~ ' > ${lcEmGrImgSrc}
				#~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#~ #!
				#~ #! 36 "EmGr" ###########################################################
				#~ lcEmGrImgSrc="/tmp/EmGr-img-RectGrn.svg"
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo '<?xml version="1.0" encoding="UTF-8"?>
					#~ <svg version="1.1" width="1000" height="1000">
					  #~ <defs>
						#~ <linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
						  #~ <stop style="stop-color:green;stop-opacity:1" offset="0" />
						#~ </linearGradient>
					  #~ </defs>
					  #~ <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
					#~ </svg>
				#~ ' > ${lcEmGrImgSrc}
				#~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#~ #!
				#~ #! 37 "EmGr" ###########################################################
				#~ lcEmGrImgSrc="/tmp/EmGr-img-RectYel.svg"
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo '<?xml version="1.0" encoding="UTF-8"?>
					#~ <svg version="1.1" width="1000" height="1000">
					  #~ <defs>
						#~ <linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
						  #~ <stop style="stop-color:yellow;stop-opacity:1" offset="0" />
						#~ </linearGradient>
					  #~ </defs>
					  #~ <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
					#~ </svg>
				#~ ' > ${lcEmGrImgSrc}
				#~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#~ #!
				#~ #! 38 "EmGr" ###########################################################
				#~ lcEmGrImgSrc="/tmp/EmGr-img-RectBlu.svg"
				#~ echo "################################## " >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo "${lcEmGrImg}" >> ${gcEmGaImgFnTrgTxtMaster}   # title for "Dump" to screen
				#~ echo '<?xml version="1.0" encoding="UTF-8"?>
					#~ <svg version="1.1" width="1000" height="1000">
					  #~ <defs>
						#~ <linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
						  #~ <stop style="stop-color:blue;stop-opacity:1" offset="0" />
						#~ </linearGradient>
					  #~ </defs>
					  #~ <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
					#~ </svg>
				#~ ' > ${lcEmGrImgSrc}
				#~ cat ${lcEmGrImgSrc} >> ${gcEmGaImgFnTrgTxtMaster}   # for "Dump" to screen
				#! ############################################################
				#!
			} # end:
			#!
			export -f Sbr_CDW_EGI_Long			
            #!
			#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
			#! end: Sbr_CDW_EGI_Long     Sbr_CDW_Embedded_Graphic_Images
			#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
			#!
#=========================================================================================
#=========================================================================================
#=========================================================================================
#=========================================================================================
#=========================================================================================
#!#########################################################
function Sbr_CDW_EGI_RmFlg() {   # Not Called 
	n=0
} # end:
export -f Sbr_CDW_EGI_RmFlg
#!
#!
#!
#!#############################################################################
#!
#! ##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!  CheckIF : SetUp for "FirstRun echo>/tmp/EmGa-Master-IMG.txt" 
#!
function Sbr_CDW_EGI_CheckIF() {   # # main () Setup for Short vs Long Image format.
	n=0
    #!
# working ???
    #!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #! CheckIF: LONG or SHORT 
    #!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #!
    lcMasterTrgImgTxtExt="IMG.txt"
    #! master IMG.txt file, for "dump" 
    #! gcMgrMasterSubDir basename is declared/assigned in top of code, line 41 .
    #! export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGr name rises to top of EmGr list
    #! 
    #! using Master_IMG.txt file as the flag  
    #! export gcMgrMasterSubDir="/tmp/EmGr-Master-" # EmGa name rises to top of EmGr list
    #! export gcMgrMasterSubDir="/root/myapplications/bin-"
    #!
    #! name changed to push Alpha index, to "EmGa" (top of list)
    gcEmGaImgFnTrgTxtMaster="/tmp/EmGa-Master-IMG.txt"
    #!
    #! E3R copies /initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CDW/rc.z_CDW_Embedded_Graphic_images.sh
    #!  to /applications/bin/My_Dev_/Edit_CDW/rc.z_CDW-EGI.sh
    #! /root/my-applicaions/bin/rc.z_CDW_EGI.sh 
    #! 
    #! Check "If Master_IMG.txt" flag file has been written via FirstRun.
    #! process will ALWAYS call for LONG Image format. 
    echo "# function Sbr_CDW_EGI_CheckIF"
    echo "# Call to: Sbr_CDW_EGI_CheckIF"
    echo "# CheckIF =   ${gcEmGaImgFnTrgTxtMaster} : LONG :"
    echo "# CheckIF <>  ${gcEmGaImgFnTrgTxtMaster} : Short :"
    echo "# ================================================="
    echo    "#! (1x) Check for /bin EGI Long : ${lcEmGrImgFnTrgTxtEGI} :" 
    #!
	if [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
				n=0   # lcEmGrImgFnTrgTxt="${gcMgrMasterSubDir}${lcMasterTrgImgTxtExt}" 
				echo    "#! (1) Check for Long : ${lcEmGrImgFnTrgTxtEGI} :" 
				if [ -f ${lcEmGrImgFnTrgTxtEGI} ] ; then
				echo    "! (1x) Call for Long : " 
 gxmessage -name "IMG_Code" -fg yellow -bg green -center -timeout 1 " ---(1)- Sbr_CDW_EGI-Long --- Writing LONG image files --- "
					Sbr_CDW_EGI_Long   # CheckIF   will write IMAGE Long files DIRECTLY, now. 
			   else
					n=0
				echo    "! (2) Call for Short : " 
 # working Not Active ???
 gxmessage -name "IMG_Code" -fg yellow -bg green -center -timeout 1 " ~--(2)- Sbr_CDW_EGI-ALREADY --- "
				fi
				#!
	fi # end: [ ! -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
    echo "! end: Sbr_CDW_EGI_CheckIF " > /dev/console
#sleep 3
	#!
	#! developing alternate 'faster' flag-check for restore/norestore . 
	#!
} # end:
export -f Sbr_CDW_EGI_CheckIF
#!
#!
#!
#! ############################################################
#! END:     Embedded Graphic Code   "EmGr"
#! ############################################################
#! ############################################################
#! ############################################################
#!
#!
#!
#!
#!
#!
#!
#!
#!
#!
#! #######################################################
#! BEGIN:     msg_DC_Msg_Windows
#! #######################################################
#!
#!
#! #######################################################
#! rc.z_CDW_Msg_Windows_code.sh
#! #######################################################
function Sbr_CDW_Msg_Windows_code() { # marker
    n=0
	c="place marker"
} # end: Sbr_CDW_Msg_Windows_code
#!
                    #! ### Double Click CTX #########################################################
                    #! window DC_CTX_PassThru /tmp/EmGr-img-jug-grnxred.svg  # TEST <window colors
                    #~ msg_DC_CTX_PassThru_window-x='
                    #~ <window title="msg_DC_CTX_PassThru_window"
                    #~ window-position="nearmouse"
                    #~ visible="true" >
                        #~ <frame>
                            #~ <hbox>
                                #~ <button> <label>"Clear the Cold-Tar-Backup Set-Up NOW  !  "</label>
                                    #~ <input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
                                    #~ <action function="closewindow">msg_DC_CTX_PassThru_window</action>
                                #~ </button>
                            #~ </hbox>
                        #~ </frame>
                        #~ <variable>msg_DC_CTX_PassThru_window</variable>
                    #~ </window>'
                    #~ export msg_DC_CTX_PassThru_window
#!
#! ############################################################
#! window DC_NoShow /tmp/EmGr-img-jug-grnxred.svg  # TEST <window colors # ACTIVE
msg_DC_NoShow_window='
<window  	
window-position="1" 
visible="1">
	<frame>
		<hbox>
			<button> <label>""  </label>
				<input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><height>46></height> <width>46</width>
				<action function="closewindow">msg_DC_NoShow_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_NoShow_window</variable>
</window>'
export msg_DC_NoShow_window # Small, preferred button msg window 
#!
                    #~ #! ############################################################
                    #~ #! window DC_0  /tmp/EmGr-img-hash-red.xpm  
                    #~ msg_DC_0_window_pet-X='
                    #~ <window title="msg_DC_0_window_pet"
                    #~ window-position="nearmouse"
                    #~ visible="true" >
                        #~ <frame>
                            #~ <hbox>
                                #~ <button> <label>"Clear_the_PET_Set-Up_NOW  !  "</label>
                                    #~ <input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
                                    #~ <action function="closewindow">msg_DC_0_window_pet</action>
                                #~ </button>
                            #~ </hbox>
                        #~ </frame>
                        #~ <variable>msg_DC_0_window_pet</variable>
                    #~ </window>'
                    #~ export msg_DC_0_window_pet
#!
#! ############################################################
#! window DC_0 # hash green for CBX
msg_DC_0_window='
<window title="msg_DC_0_window"
window-position="nearmouse"
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
#! ############################################################
#!
#!
#!
#! ############################################################
#! Begin: msg_DC_window COLOR #################################
#! ############################################################
#!
#! window DC_ReStart /tmp/EmGr-img-EmGr-hash-grn.xpm   S2F , E3R+CTB+ReStart
export gcMsgWindowReStart1="The ReStart function is active now ! "
export gcMsgWindowReStart2="Click the Menu Button again ! "
#!
msg_DC_ReStart_window='
<window title="msg_Chk_ReStart_window"
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowReStart1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowReStart2}'</b> </span> " </label>
		</text>
		<hbox>
			<button> <label>"Clear the Set-Up "</label>
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReStart_window</action>
			</button>
		</hbox>
	</frame>
	<variable>msg_DC_ReStart_window</variable>
</window>'
export msg_DC_ReStart_window
#! ############################################################
#!
#!
#! ############################################################
#! window DC_ReMenu /tmp/EmGr-img-EmGr-hash-grn.xpm   S2F , E3R+CTB+ReStart
export gcMsgWindowReMenu1="The ReMenu function is active now ! "
export gcMsgWindowReMenu2="Will Build a Generic Menu.lst ! "
export gcMsgWindowReMenu3="Click the ReMenu Button again ! "
#!
msg_DC_ReMenu_window='
<window title="msg_Chk_ReMenu_window"
visible="true" ><frame>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'red'"'> <b>'${gcMsgWindowReMenu1}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowReMenu2}'</b> </span> " </label></text>
<text editable="false" use-markup="true" xalign=".5"><label> "<span color='"'green'"'> <b>'${gcMsgWindowReMenu3}'</b> </span> " </label></text>
<hbox><button>
<label>"Clear the Set-Up "</label><input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
<action function="closewindow">msg_DC_ReMenu_window</action>
</button></hbox></frame>
<variable>msg_DC_ReMenu_window</variable>
</window>'
export msg_DC_ReMenu_window
#! ############################################################
#!
#!
#!
#!
#! ############################################################
#! END:     msg_DC_Msg_Windows
#! ############################################################
#!
#!
#!
#! ############################################################
#! ############################################################
#! Begin: msg_DC_Dev_window ### GTK window ####################
#! ############################################################
#! ### Development
#! ############################################################
#!
#! /tmp/EmGr-img-jug-grnxred.svg
#! used by EXIT:guiTest
#!
#! ############################################################
#! ############################################################
#! End: msg_DC_Dev_window #################################
#! ############################################################
#! ############################################################
#!
#!
#!
#!
#(: =====================================================================
#(: fx(Sbr_Cbx_ReStart)
#(: called by:  # CBX_ReStart et al
#(: param:
#(: purpose: ReStart $0 , fresh !
#(: calls:
#(: called by: most <button> CBX, ARB, E3R
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(: #! test     ### working if [ zero ]  for "${lcPupRamObjMsg}"
#(:
#! ############################################################
function Sbr_Cbx_ReStart() {   # Active Check-Box # ARB_ReStart
	n=0
if [ "${lcPupRamObjMsg}" ] ; then #  working ${lcPupRamObjMsg} 
    # First Time Run, so Message required . 
    #!
    if [ ! $1  ] ; then # No Param = control Splash
        #! if no param, then Kill this splash !
        lcMsgStr="+++++++++ MGR ReStart Display +++++++++"

        /usr/lib/gtkdialog/box_splash -fg orange -bg black -border true  -close never -text "\
        .     Manager Start-Up  " &  RETVAL=$?  
        GtkPid_Sbr_Box_Splash=$!  
        sleep 1.5 
        kill ${GtkPid_Sbr_Box_Splash}

        #~ #! -D----------------------------gtkdialog--
        #~ /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "--- MGR  Sbr_Cbx_ReStart ---" &
        #~ #-------------------
        #~ RETVAL=$?
        #~ GtkPidReStart=$!	# capture PID
        #~ sleep .3
        #~ kill ${GtkPidReStart} # clear current background red box after return
        #
    else
        n=0
        #! -D----------------------------gtkdialog--
    fi # end: [ $1 ne "0" ] ; then
    #!
fi
#!
Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
#! ReStart
 . ${gcZeroRun}      #: $ ZERO	# will run ReStart fresh , must control double ReStart/WriteImg	
#!
} # end:  Sbr_Cbx_ReStart
export -f Sbr_Cbx_ReStart
#!
#!
#(: ==========================================================
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
#! ############################################################
function Sbr_Cbx_ReBoot() {   # Active Check-Box # ARB_ReBoot
    n=0
	#
	if [ $1  ] ; then	# control Splash
		gxmessage -name "ReBoot" -bg yellow    -center -timeout 1
	fi
	#
 	lcFnRun="/usr/bin/wmreboot"	   # wmpoweroff wmreboot
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
		${lcFnRun}  && ${lcFnRun}  && exit
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " MGR_wmReBoot fell out"
	fi
    exit 1	# Should NOT get here !
} # end: Sbr_Cbx_ReBoot
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
		gxmessage -name "ReQuit" -bg yellow    -center -timeout 1
	fi
	#
	lcFnRun="/usr/bin/wmpoweroff"    # wmpoweroff calls /usr/bin/wmexit 
    if [ -f "${lcFnRun}" ]  ; then   # wmpoweroff calls /usr/bin/wmexit 
        n=0
         ${lcFnRun} && ${lcFnRun} && exit
     else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Sbr_Cbx_ReQuit () ${lcFnRun} not found"
		#
	fi
    exit 1
} # end:  Sbr_Cbx_ReQuit
export -f Sbr_Cbx_ReQuit
#!
#! ==================================================================
#!
#(: ======================================================================
#(: fx(Sbr_Cbx_ReQuit)
#(: called by: Exit:ARB_00, ARB_ReQuit
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
function Sbr_E3rArcDts() {   # Active E3R
	n=0
#!  E3R Arc + dts =================================================================
	lcMgrArcFnTrg="MGR"
    lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# UpupKK, UpupBB, UpupJJ
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
	lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_${lcMgrArcFnTrg}/arc_${lcMgrArcFnTrg}_dts_sh_/rc.z_${lcMgrArcFnTrg}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
	cp -f ${0} ${lcFnTrg}
} # end: 
#! =====================================================================
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
#! ############################################################
function Sbr_SDA_Only() {    # Active  if[!SDA] then restart
	#! Sbr_SDA_Only	# control: test "SDA" && ReStart
	n=0
    #! Key Routine !
    if [ ! -f "/initrd/mnt/dev_save/MARK-SDA" ] || [ ! -f "/initrd/mnt/dev_save/MARK-SDA1" ]; then  
        # this HD is NOT the Primary Boot Drive. 
        #!  fail = ReStart
        Sbr_Cbx_ReStart 1   ### Clean ReStart #  do not continue the called command.
    fi
    #! IF this is SDA1, THEN OK to run 
    #! ---> now return back to the caller
	/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "--- SDA ---" &
	#-------------------
    RETVAL=$?
	GtkPidReStart=$!	# capture PID
	sleep 1.3
	kill ${GtkPidReStart} # clear current background red box after return
#!
} # end: Sbr_SDA_Only
export -f Sbr_SDA_Only
#!
#(: ====================================================================
#(: ft(Sbr_KillProc)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Kill current Proc, stub , and restart
#(: calls: gxmessage, Sbr_Cbx_ReStart
#(: method: place this in fallthrough ( if [ "$EXIT"  )  code . 
#(: sends:
#(: rationale: Allows "killing" a <button> call for 'test' or 'demo' purposes.
#(:
#! ############################################################
function Sbr_KillProc() { # ACTIVE # permission control # Exit if Test Mode #
	n=0 # Allows to Skip a Proc , for use if Test file is released as sample. 
lcParam=$1   # "1" will enable ReStart 
if [ $gcSysKillProc -eq 1 ] ; then  # sets up a Sbr_Button_Only as a "stub" .
	lcMsgStr="Kill Process "
	gxmessage -name "$lcParam" -bg "#00FF00"  -nearmouse  -timeout 1  "
	 ${lcMsgStr}_STUB called via --- ${lcParam} ---_"
	gxmessage -name "$lcParam" -bg "#F8F800"     -nearmouse  -timeout 1  "
	 ${lcMsgStr}____STUB called via --- ${lcParam} ---____"
	gxmessage -name "$lcParam" -bg "#FF0000"        -nearmouse  -timeout 3  "
	 ${lcMsgStr}_______STUB called via --- ${lcParam} ---_______"
# working ???
	Sbr_Cbx_ReStart 1
fi
} # end: Sbr_KillProc
export -f Sbr_KillProc
#!
#!
#(: ====================================================================
#(: ft(Sbr_Cold_Splash)
#(: called by:  FallThru in Column 4
#(: param: called by initial <button> FallThru funxtion (  if [ "$EXIT"  )
#(: purpose: just a handy splash for Column 4  guiS2FReStart, ReBoot, PowerOff
#(: calls: "Warm" system exits
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sbr_Cold_Splash() {   # Active in Col 4
	n=0
lcMsgStr=":$1:"
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.
.         ${lcMsgStr}
.                                                                        "&
    RETVAL=$?
	GTKPID_Col4_Splash=$!
	sleep $2
    #
	kill ${GTKPID_Col4_Splash}
} # end: Sbr_Cold_Splash
export -f Sbr_Cold_Splash
#!
#!
#(: ======================================================================
#(: fx(Sbr_Str2Banner)
#(: called by:
#(: param:
#(:      ## STRING message
#(: purpose: Display "String" to Terminal
#(: calls:
#(: method: param : "char string"
#(: sends:
#(: rationale:
#(: note :
#! ############################################################
function Sbr_Str2Banner() {   #: ACTIVE display to xterm
    n=0  
    lcMsgStr=$1
	/bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m"
	#~ /bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m"
} # end: Sbr_Str2Banner
export -f Sbr_Str2Banner
#!
#!     
#(: ======================================================================
#(: fx(Sbr_Str2DevTrm)
#(: called by:
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
function Sbr_Str2DevTrm() {   #: ACTIVE in MGR.sh S15pupS64
#! ## param: "char string" "# color" "# margin"
lcS2TStr=${1}   # ## STRING message
lcS2TClr=${2}   # ## COLOR name or number
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal
#!
lcDevConsole=""	# ## default to "T"erminal
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
} # end: Sbr_Str2DevTrm
export -f Sbr_Str2DevTrm
#!
#!
#(: ======================================================================
#(: fx(Sbr_SetVerDts)
#(: called by: Main ( )
#(: param:
#(: purpose: 'gc' and 'Sys' System Standard Constants can be installed here.
#(: call this way:  Sbr_SetVerDts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note:
#(:
#! ############################################################
function Sbr_SetVerDts() {  #: ACTIVE in Main
#! requires Manual Entry for  Developers Version  Date-Time-Stamp
#! which is above in "header"
n=0    #: common "stub" so bare funxtion() will not fault during test/dev.
gcSysDvar=`date`
gcSysDts="`date +%y%m%d-%H%M-%S`"
#(: ===============
#(: gcSysDtsNow
#(: 		### Rationale: some Puppy OS default to GMT, we prefer Local time.
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
#(:
#!
lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
gcSysDtsNow="${lcNowDts}-local"
gcSysDtsNow="${lcNowDts}"
#!
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
gcMntAllLogP="/tmp/MGR_MntAllP.log "
gcMntAllLogU="/tmp/MGR_MntAllU.log "
#!
} # end: Sbr_SetVerDts
export -f Sbr_SetVerDts
#!
#!
#(: ======================================================================
#(: fx(Sbr_Mandelbrot)
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
function Sbr_Mandelbrot() {  # Active
    n=0 # ALWAYS install a stub, so 'funxtion' is legit code
	gxmessage -name "Sbr_Mandelbrot"  -fg yellow -bg red -timeout 7  -nearmouse  "_Sbr_Mandelbrot_()_
  should be run/viewed from Xterm
       may run 30 minutes   "
	#!/bin/bash
	#! 
	#! Required params:
	#! BAILOUT
	#! MAX_ITERATIONS
	#! 
	BAILOUT=16
	MAX_ITERATIONS=100	# 100 is ok for terminal screen.
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
			temp=$(printf "%s\n" "(($zi * $zi) + ($zr * $zr)) > $BAILOUT" | bc)
			if ((temp == 1))
			then
				return "$i"
			fi
			if ((i > MAX_ITERATIONS))
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
		for ((y = -39; y < 39; y++))
		do
			printf "\n"
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
				else
					printf "."
				fi
			done
		done
		printf "\n"
	}
#! # this is the mandelbrot main ()
sub_mandelbrot_main   # this is the mandelbrot main ()
} # end 
export -f Sbr_Mandelbrot
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
    echo "" && echo "=== Base64  cat /tmp/Base64-Encoded.txt ============"
    #! Display Information
	gxmessage -name "Sbr_Dump_SRC_Base64"  -fg blue -bg lightyellow -timeout 15  -nearmouse  "_Sbr_Dump_SRC_Base64_
  should be run/viewed from Geany Xterm. 
(
Usage: base64 [OPTION]... [FILE]
Base64 encode or decode FILE, or standard input, to standard output.

With no FILE, or when FILE is -, read standard input.

Mandatory arguments to long options are mandatory for short options too.
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
    #~ set +xe
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
if [ ! $1 ] ; then    # display active
    n=0
#! -D----------------------------gtkdialog--
#~ /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
#~ .
#~ .    ClearFlagsSystem !!!
#~ .                         "&
    #~ RETVAL=$?
	#~ GtkPid_ClearFlagsSystem=$!	# capture PID
	#~ sleep .7
	#~ kill ${GtkPid_ClearFlagsSystem} # after return
fi # end: [ $1 = "1" ]
		rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	###  but not E3R  CBX
		rm -f "/tmp/snapmergepuppy-error"  ### this is SMP flag ,  Not Used
		rm -f "/tmp/box_help"       ### remove the lingering temp file.
		rm -f "/tmp/box_source"       ### remove the lingering temp file.
		rm -f "${MGR_BackUpStatus}"
		gcMGRConfigArbIdd=""		### for 'next reboot' Menu Selection
	/bin/echo " " > /dev/console
} # end: Sbr_ClearFlagsSystem
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
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text "\
.
.    Clear Flags Quit !!!
.                        "&
    RETVAL=$?
	GtkPidClearFlagsQuit=$!	# capture PID
	sleep 1.5
	kill ${GtkPidClearFlagsQuit} # after return
fi # end: [ $1 = "1" ]
#!
	rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	   ###  but not E3R  CBX
	rm -f "${MGR_TouchCBXstatus}" # ## CBX applied flag must linger for GUI		# Carry-Over
	rm -f "${MGR_E3Rstatus}"	# ## E3R applied flag must linger for GUI 		# Carry-Over
	rm -f "${MGR_BackUpStatus}" # ## CBX applied  flag must linger for GUI		# Sbr_ClearFlagsQuit
    rm -f "${MGR_ReStart_flg}"  # ## MGR initial Re-ReStart to init GEANY		# Sbr_ClearFlagsQuit
	/bin/echo " " > /dev/console
#!
} # end: Sbr_ClearFlagsQuit
export -f Sbr_ClearFlagsQuit
#!
#!
#(: begin: *guiE3R* *E3R* Ext_Main_ : EXIT:''
#!
#!
#!
#!
#!
#(: =======================================================================
#(: fx(Sbr_guiCpyMyDev)
#(: called by:  EXIT:guiCpyMyDev 
#(: param:
#(: purpose:
#(: calls: 
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ### Sbr_CpyMyDev #########################################################
function Sbr_CpyMyDev() {
#------------------------------------------------------------------------------
#! only copies the $2 subdir from working /Edit 
#------------------------------------------------------------------------------
lcSrcParam=$1
lcTrgParam=$2
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg red -bg yellow -border true  -close never -text   "SYNC: ${lcTrgParam}  " &
GTKPIDMyDev1=$!	### kill #((GTKPIDUsrSync
cp -v -r  ${lcSrcParam}  ${lcTrgParam} 
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text   "guiUsrSync: ${lcTrgParam2}" &
GTKPIDMydev2=$!	### kill $GTKPIDMydev2
	sleep 1
	kill $GTKPIDMydev2
	kill $GTKPIDMyDev1
} # end: Sbr_CpyMyDev
export Sbr_CpyMyDev
#!
#!
#!
#(: #####################################################################
#(: fx(Sbr_Box_Message)	  # internal hack on gtkdialog box_help
#(: called by :
#(:    GuiHLP+  to  fx(Sys_Box_HLP)  to  Sbr_Box_Message
#(:    GuiFAQ+  to  fx(Sys_Box_FAQ)  to  Sbr_Box_Message
#(:
#(: receives param : Header$1 and loads '/tmp/box_help' for Top-Edge Window Title. 
#(: purpose : publish '/tmp/box_help'
#(:   custom Simple Message sbr
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
#
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
gtkdialog --center -p Box_MessageXML	# assumes '/tmp/box_help'
#
} # end: Sbr_Box_Message
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
#! ############################################################
function Sbr_ARB_Init() {   #: ACTIVE called at main () :  init for "ARB" config
### /root/my-applications/bin
    gcC3MConfigArbCfg="/root/my-applications/bin/C3M_Config_Arb"   #: ? ASSIGNED fx(Sys_PupState)
if [ -f ${gcC3MConfigArbCfg} ] ; then   #: read config
    n=0
    gcC3MConfigArbId=`cat ${gcC3MConfigArbCfg}`   #:  extract Id
    #
    chmod +x ${gcC3MConfigArbCfg}
    echo "gcC3MConfigArbId:${gcC3MConfigArbId}:"
else
	n=0
    touch ${gcC3MConfigArbCfg}
    #
	gcC3MConfigArbId="???"
    echo "${gcC3MConfigArbId}" > ${gcC3MConfigArbCfg}
	echo "ID:gcC3MConfigArbId:${gcC3MConfigArbId}:"
	echo "FN:${gcC3MConfigArbCfg}:Not Found:"
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.     ${gcC3MConfigArbId} Not Found
.     ${gcC3MConfigArbCfg} empty file created
.                                               "&
        RETVAL=$?
        PID_ARB_Init=$!	# capture PID
        sleep 1
        kill ${PID_ARB_Init}
        #
fi
} # end: Sbr_ARB_Init
export -f Sbr_ARB_Init
#!
#!
#(:===========================================================
#(: fx(Sys_MGR_pMount_One)
#(: called by:   Sys_MGR_pMount_All calls "Sys_MGR_pMount_One"
#(: purpose:  pMOUNT  only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:
#! ############################################################
function Sys_MGR_pMount_One() {   # ACTIVE # Sys_MGR_pMount_All
    n=0
lcParam1="${1}" # trg drive ID
lcActiveMntId="U"   # Id    # Not Used
lcMsgStr="${1}:trg drive ID"
#!
if [ "$gcActiveGui" = "1" ] ; then # Sys_MGR_pMount_One
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.      Quick Sys_MGR_pMount_One
.             '${1}'                              "&
    RETVAL=$?
	GTKPIDPMNTsbr=$!
fi
#! if -d /root then already mounted
	mkdir -pv /mnt/${1} drv
    mount         /dev/${1} /mnt/${1}
    mount -t ext3 /dev/${1} /mnt/${1}
    mount -t vfat /dev/${1} /mnt/${1}

if [ "$gcActiveGui" = "1" ] ; then # Sys_MGR_pMount_One
	sleep 1
    kill ${GTKPIDPMNTsbr}
fi
} # end: Sys_MGR_pMount_One
export -f Sys_MGR_pMount_One
#!
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
#! ############################################################
function Sys_MGR_pMount_All() {   #: ACTIVE ### ( each Mount All via E3R ) ###
	n=0
gcActiveGui="1"  # defaulted to show during testing
lcActiveMntId="P"   # Id    # Not Used
#!
set -x -e   # Sys_MGR_pMount_All
if [ "$gcActiveGui" = "1" ] ; then # Sys_MGR_pMount_All
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg purple -bg lightgreen -border true  -close never -text "\
.      MGR_P_Mount_All INTERNAL
.
.
.
.
.
.                                                          "&
    #
    RETVAL=$?
    GTKPIDPMNT1=$!
    sleep .1
fi
#!
set +x +e   # Sys_MGR_pMount_All
#! if -d /root then already mounted
#;;; multiple calls to subroutine , which runs a single "mount" routine
#;;; begin looping internal code ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
#!
if [ "$gcActiveGui" = "1" ] ; then  # Sys_MGR_pMount_All
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.                   DONE
.            fx(Sys_MGR_pMount_All)                         "&
    RETVAL=$?
	GTKPIDPMNT2=$!
	#
	sleep 1
    #
	kill ${GTKPIDPMNT2}
	sleep .3
	kill ${GTKPIDPMNT1}
    #
fi # end:  [ "$gcActiveGui" = "1" ]  # Sys_MGR_pMount_All
} # end: Sys_MGR_pMount_All
export -f Sys_MGR_pMount_All
#!
#!
#(:======================================================================
#(: fx(Sys_MGR_uMount_One)	#: Active
#(: called by:   ft(EXIT:guiUMntInt)  (each one)
#(: calls "Sys_MGR_pMount_One"
#(: purpose:  uMOUNT only one hard-drive
#(: receives param: "/mnt/sd?1"
#(: returns:
#(: note:
#(:    funxtion "Sys_MGR_uMount_All"  calls "Sys_MGR_uMount_One"
#! ############################################################
function Sys_MGR_uMount_One() {  # ACTIVE
    n=0
	lcParam1="${1}" # trg drive ID
	gcActiveGui="1"  # defaulted to show during testing
	lcActiveMntId="U"   # Id    # Not Used
#!
if [ "$gcActiveGui" = "1" ] ; then # Sys_MGR_uMount_One
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkgreen -border true  -close never -text "\
.        Sys_MGR_uMount_One
.             '${1}'                              "&
    sleep .1
    RETVAL=$?
	GTKPIDUMNTsbr=$!
fi
### must choose a different test subdir.  Not /root, which is the Current Active drive /root
### must choose a different test subdir.  Not /root, which is the Current Active drive /root
### must choose a different test subdir.  Not /root, which is the Current Active drive /root
	lcDirName="/root"
	if [ -d ${lcDirName} ] ; then # if target directory is real 
		umount -lv      /mnt/${1}
	else    ### else /root is the /root/home and cannot be unMounted !
		sleep .1
	fi
    sleep .1
if [ "$gcActiveGui" = "1" ] ; then  # Sys_MGR_uMount_One
    kill ${GTKPIDUMNTsbr}
fi
#(: called by:   ft(EXIT:guiUMntInt)  ( U Mnt Int )
} # end: Sys_MGR_uMount_One
export -f Sys_MGR_uMount_One
#!
#!
#(: ============================================================
#(: fx(Sys_MGR_uMount_All)
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
function Sys_MGR_uMount_All() {   # ACTIVE
	n=0
gcMntAllLogP="/tmp/MGR_MntAllU.log "
lcMntAllTrg=${gcMntAllLogU} # Active
gcActiveGui="1"  # defaulted during testing  # Sys_MGR_uMount_All
lcActiveMntId="U"   # ${lcActiveMntId}   # Not Used
#!
if [ "$gcActiveGui" = "1" ] ; then # Sys_MGR_uMount_All
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg purple -bg lightgreen -border true  -close never -text "\
.      MGR_Un_Mount_All INTERNAL
.         :${lcMntAllLogFn}:
.
.
.
.
.                                                          "&
    RETVAL=$?
	GTKPIDUMNT1=$!
    #
fi
#;;; repeat calls to rc.z_MNT.sh, which runs a single "mount" routine
sleep 1
#!
#;;; never try to unmount /dev/SDA
#;;; begin looping subroutine umount process ;;;;;;;;;;;;;;;;;;;
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
if [ "$gcActiveGui" = "1" ] ; then  # Sys_MGR_uMount_All
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.                DONE
.         fx(Sys_MGR_uMount_All)                         "&
    RETVAL=$?
	GTKPIDUMNT2=$!
	sleep 1
	kill ${GTKPIDUMNT2}
	sleep .3
	kill ${GTKPIDUMNT1}
    #
fi
} # end: Sys_MGR_uMount_All
export -f Sys_MGR_uMount_All
#!
#!
#(: ====================================================================
#(: ft(Sys_Sample_Button)
#(: called by : Main_GUI, ft(EXIT:Bugger_SB)
#(: purpose :  Simple Sample of Buttons
#(: receives param : none
#(: returns :
#(: note:
#(:		eval will not initiate "action"
#(:		gtdialog will activate "action"
#(:
#(:  	gtkdialog/box_help will handle format and embedded color text codes.
#(:  	xmessage will NOT handle format and color embedded text codes.
#! ############################################################
function Sbr_Multi_Button_01() {  # ACTIVE
	n=0
#! ????? Sbr_Multi_Button
# branch call to function Sbr_S2F_Main()

lcMsgStr=">>> trace >>> Sys_Multi_Button Dialog  IS  ACTIVE >>>" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
export Sys_Multi_Button_Dialog='

<vbox>

<vbox>
	<vseparator height-request="7" > </vseparator>
	<hbox>
		<button tooltip-text="'jug-redxyel'" has-focus="false" width-request="7" xalign=".5"  >
        <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
        <label> "" </label> <action>lxAction:image</action> </button>
        <hseparator width-request="11" ></hseparator>
    </hbox>
</vbox>


<vbox>
    <hbox>
        <hseparator width-request="11" ></hseparator>
		<button> <label>"#1. Multi_Button ACTIVE " </label>
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
            <action>echo { 1 ., {} Multi-Button } > /0-MB-1-MultiButton.txt </action>  
            <action>echo { 1 ., {} Multi-Button } </action>
		</button>
        <hseparator width-request="11" ></hseparator>
		<button> <label>"#2. Multi_Button ACTIVE " </label>
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
            <action>echo { Two MultiButton } > /0-MB-2-MultiButton.txt </action>  
            <action>echo { Two MultiButton } </action>
		</button>
        <hseparator width-request="11" ></hseparator>
    </hbox>
</vbox>

<vbox>
    <hbox>
        <hseparator width-request="11" ></hseparator>
		<button> <label>"#3. Multi_Button ACTIVE " </label>
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
            <action>echo { 3 MultiButton } > /0-MB-3-MultiButton.txt </action>  
            <action>echo { 3 MultiButton } </action>
		</button>
        <hseparator width-request="11" ></hseparator>
		<button> <label>"4 Multi_Button ACTIVE " </label>
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
            <action>echo { 4 Multi-Button } > /0-MB-4-MultiButton.txt </action>  
            <action>echo { 4 Multi-Button } </action>
		</button>
        <hseparator width-request="11" ></hseparator>
    </hbox>
</vbox>

<vbox>
		<button> <input file>"/tmp/EmGr-img-hash-grn.xpm"</input>
		  <action>echo action: You pressed the button with the pixmap.</action>
		</button>
		<button yes>  	<action>echo action: You pressed the Yes button. > /0-MB-Yes.txt</action> 	</button>
		<button no>   	<action>echo action: You pressed the No button. > /0-MB-No.txt </action> 	</button>
		<button ok>   	<action>echo action: You pressed the OK1 button. > /0-MB-OK1.txt</action>  	</button>
		<button ok>   	<action>echo action: You pressed the OK2 button. > /0-MB-OK2.txt</action>  	</button>
		<button help>   <action>echo H3 ${0} only .ext is visible Help3  > /0-MB-Help3.txt </action>  </button>
		<button help>   <action>echo H2 ${gcSysSave} SysSave Help2  > /0-MB-Help2.txt </action>  </button>
		<button help>   <action>echo H1 ${gcSysIdFull} SysIdFull  Help1  > /0-MB-Help1.txt </action>  </button>
</vbox>

<vbox>
            <button tooltip-text="_guiS2FReStart_">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
                <label>'_ReStart_DC_'</label>
                <action function="'launch'"     >msg_DC_ReStart_window</action>
                <action function="'closewindow'">msg_DC_ReStart_window</action>
                 <action>'EXIT:guiS2FReStart'</action>	</button>
</vbox>

    <vbox>
        <hbox>
            <hseparator width-request="11" ></hseparator>
            <button tooltip-text="'Margin-MB-Vertical'" has-focus="false" width-request="7" xalign=".5"  >
            <input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>   
            <label> "????????" </label> <action>lxAction:xxx</action> </button>
            <hseparator width-request="11" ></hseparator>
        </hbox>
        <hbox>
            <hseparator width-request="11" ></hseparator>
            <button cancel>	</button>
            <hseparator width-request="11" ></hseparator>
        </hbox>
        <vseparator height-request="7" > </vseparator>
    </vbox>
</vbox>
'
#~ eval "`gtkdialog --center  -p    Sys_Multi_Button_Dialog`"
gtkdialog  --center --program=Sys_Multi_Button_Dialog
lcMsgStr="<<< Sys_Multi_Button_DIALOG <<<" && Sbr_Str2DevTrm "$lcMsgStr" "7" "3"
} # 
export -f Sbr_Multi_Button_01
#!

#(: ====================================================================
#(: fx(Sbr_ShowBanner)
#(: called by:  fx(FT_EXIT='CBXARS')
#(: param:
#(: purpose:
#(: calls:        Sbr_ShowBanner "$lcMsgStr" "32m" "35m" & sleep .5
#(: method:
#(: sends:
#(: rationale:
#(: note : 
#(:
#! ############################################################
function Sbr_ShowBanner() {   # ACTIVE
	n=0
	#!
	/bin/echo -e "\\033[0G\\033[1;${3}*** \\033[1;${2} ${lcMsgStr} \\033[1;${3}***\\033[0;39m" 
    #!
} # end:  Sbr_ShowBanner
export -f Sbr_ShowBanner
#!

#(: ====================================================================
#(: fx(Sbr_ShowSplash)
#(: called by:  fx(FT_EXIT='CBXARS')
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note : parameters are ticky
#(:
#! ############################################################
function Sbr_ShowSplash() {   # ACTIVE
	n=0
	#~ lcPar1r=${1}    # text
	#~ lcPar2r=${2}	# fg
	#~ lcPar3=${3}     # bg
	#! -D----------------------------gtkdialog--
	/usr/lib/gtkdialog/box_splash -text "${1}" -fg "${2}" -bg "${3}" -border true  -close never &
    GTKPIDShowSplash=$!
} # end:  Sbr_ShowSplash
export -f Sbr_ShowSplash
#!
#!
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
#~ echo "Sbr_Dump_PUP" >  ${lcMsgTrgDP}    # preset First Line
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
sleep .1
gxmessage -name "PUPSTATE via cat + gxmesage" -bg lightyellow  -center -file "${lcMsgTrgDP}" -wrap
} # end: Sbr_Dump_PUP
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
#(:	note: uses CTB code
#(: note: requires /tmp/box_help
#(:  gcMGRDob is declared/assigned at beginning (top) of program
#(:  fx(MGR_SetVerDate) is called at top of '=== MAIN ( ) ==='
#(:  echo this out as one long string, to standard /tmp/help_box
#(:  then call it via Sbr_Box_Message "=== 'Sbr_Box_Message' for '/tmp/box_help'"
#(:
#! ############################################################
function Sbr_Dump_HLP() {   #: ACTIVE  echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
#~ <span background='"'brown'"'><span foreground='"'yellow'"'> "========"</span></span>\
#~ <span background='"'yellow'"'><span foreground='"'blue'"'>"       "${gcSysDistroName}" "</span></span>\
#~ <span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcSysNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
<b><span foreground='"'red'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
<b><span foreground='"'green'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
<b><span foreground='"'blue'"'>"${gcSysNameBase} 'Puppy Project Manager'"</span></b>
<b><span foreground='"'purple'"'>"     ${0} "</span></b>
"--- "
<span foreground='"'red'"'>"About : "</span> <span foreground='"'green'"'>"${gcSysNameBase} DEMO"</span>
<span foreground='"'green'"'>"${gcSysNameBase} is a General Menu framework ! "</span>
<span foreground='"'red'"'>"Special Features of ${gcSysNameBase}: "</span> <span foreground='"'green'"'></span>
<span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
<span foreground='"'blue'"'>"has Double-Click buttons ! "</span>
<span foreground='"'red'"'>" is written with BASH standard install "</span>
<span foreground='"'red'"'>" is written with GTKdialog standard install"</span>
"--- "
<span foreground='"'purple'"'>"${gcSysNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcSysNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"--- "
<span foreground='"'green'"'>"______________________________"</span>
<span foreground='"'blue'"'>"Authors note about MGR.sh coding :"</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular  code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"designed to prevent interaction "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"... between bash and gtkdialog "</span>
${gcSysNameBase} code is <span background='"'white'"' foreground='"'green'"'>"... has recruitment compentency "</span>
"--- "
<span foreground='"'green'"'>"${gcSysNameBase}.sh restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcSysNameBase}.sh requires 1 second to write all 37 images"</span>
<span foreground='"'green'"'>" . . . . . . . . . . . writes all images one time, at StartUp."</span>
<span foreground='"'green'"'>" . . . . . . . . . . . to 17 KBytes in /tmp "</span>
"--- "
<span foreground='"'green'"'>"__________________________________________"</span>
<span foreground='"'purple'"'>" Running Tests on 20 OS, including: "</span>
<span foreground='"'red'"'>"iso-KineticPup32-22.10+2________________230604"</span>
<span foreground='"'red'"'>"iso-BionicPup32-8.0+30_BionicBeaver____220407"</span>
<span foreground='"'blue'"'>"iso_BionicPup32-19.03-K5.9_231209.iso_231209"</span>
<span foreground='"'blue'"'>"iso_ManticPup32-23.10+1.iso____________231209"</span>
<span foreground='"'red'"'>"iso-JammyPup32-22.04+8_JammyJellyfish_22123"</span>
<span foreground='"'red'"'>"iso-UPupFF+D-20.12+4_Focal-Fossa______201210"</span>
<span foreground='"'red'"'>"iso-UpupTahr-6.0.6-k4.1.30-uefi__________190211"</span>
<span foreground='"'blue'"'>"iso-Slacko-7.0_DpupS7_14.2_____________220205"</span>
<span foreground='"'blue'"'>"iso-Xenial-64_7.5_XL____________________220401"</span>
<span foreground='"'blue'"'>"iso-S15Pup-64_22.12+1-T_________________220922"</span>
<span foreground='"'blue'"'>"iso-Quirky_April-7.0.1F-uefi_______________200511"</span>
<span foreground='"'blue'"'>"iso_devuanpup-9.7.0-chimaera_4.0_i386__211206"</span>
<span foreground='"'blue'"'>"iso_BookwormPup32-23.11-B4_____________231210"</span>
<span foreground='"'blue'"'>"iso_LxPupSc-slacko-20.01+0-T-k64________200129"</span>
<span foreground='"'blue'"'>"iso_slacko64_14.2_32-674-bit_comptible__220227"</span>
<span foreground='"'blue'"'>"iso_ManticPup32-23.10+1.iso______________231209"</span>
<span foreground='"'green'"'>"__________________________________________"</span>
"--- "
This 'MGR' project is posted on the Murga website
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
<span foreground='red'>" gtkdialog version 0.8.4 release  2003-2007  "</span>
<span foreground='green'>"     2003-2007 Laszlo Pere, 2011-2012 Thunor  "</span>
<span foreground='blue'>"  MGR is written with gtkdialog original install"</span>
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
Sbr_Box_Message "=== HELP === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end: Sbr_Dump_HLP
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
#
<span foreground='green'>   # Compiled: ${gcSysDevDob} </span> 
<span foreground='red'>'Note : the actual Length
of tar-zip compression run is unknown</span>
 all depending on the ability of Tar-zip
 to apply compression techniques
 to a variety of data files.
Here, we are guessing the post-tar-zip time
 required for write to USB.
Therefore, we may run a splash
 "Wait Some More"
...
Our several Linux systems include
several different types of \"Hard-Media\"
: SATA-PATA-HD, USB-HD, USB-FlashDrives.
 Each Drive device has unique specs
 which must be accomodated by code.
In general,
The <span foreground='red'>"PATA-SATA HardDrives"</span>
 receives/writes data 100MBytes second,
 so it seems immediate.'
'The <span foreground='red'>"USB-2 HardDrive"</span> buffers at 12 MByte,
 and writes quickly on 1 Mbyte files.
The <span foreground='red'>"USB-2 FlashDrives"</span> buffer quickly,
 at 12 MByte rate, in 1 MByte chunks,
 and then slowly transfer from buffer
 to \"burn-and-store\" the data on chip.
 USB-FlashDrives are \"EEPROM\" devices.
Note: USB-2 flash drives work max 12MByte
 transfer rate onto the chip buffer,
 then transfer-burn to a data area
 across the available chip space.
This can work well for 1MByte jpg files,
 but work slowly on 100MByte data files.
Some USB-2 FlashDrives maintain
 a shake-hands relation
 with the driving source device,
 and some USB-2 FlashDrives do not have
 the Ack/Nack hand-shake with the driving source.
Some of our USB-2 FlashDrives have
  an LED indicator of on-chip activity,
 and some of our USB-2 FlashDrives
  have no LED indicator.
Therefore,
 we may opt to have several
 Wait Some More splash messages in the prg.'
#
#(: ----------------------------------------------------
#(: gae, Geany  debug method :
#(: [ "Execute" for BASH-Terminal-Trace-Window ]
#(: write "echo" commands for tracing in the Terminal Window.
#(:----------------------------------------------------
#(:	NOTE:
#(: BASH stacking control quirk, and non-fatal error 
#(:    has been observed on some older computers (bios 2009).
#(:    and on some early Puppy Linux Distros. 
#(:
#(:		IF user selects "Scan", "Help", "FAQ", "Source", "UPL"
#(:		THEN "stack popping" error may exist
#(:		EVIDENCE may show in terminal screen
#(:            as a succession of "un-pop" messages.
#(:
#(:		The concept of strict "scope"
#(:        (isolation of levels of process 'stack')
#(:			is not implimented in BASH language. 
#(:
#(:		see Note On BASH language process stack
#(:		published in funxtion "Sbr_Dump_FAQ"
#(:
#(: ----------------------------------------------------
#(:  Note : "O.O.P."  [ Object Oriented Programming ]
#(:  BASH does NOT implement "OOP".
#(:  (gtk)dialog does NOT implement "OOP".
#(:  quoted from "hipersayanx.blogspot.com" ›
#(:      2012/12 › object-oriented-pr.
#(:
#(:  BASH is a very common *nix shell,
#(:  and it's programming language is purely procedural
#(:  and focused on command execution.
#(:  BASH was built upon, derived from,
#(:     'sh', 'T', 'A', 'K' , et al, 'shell' languages.
#(:
#(:  'O'bject 'O'riented 'P'rogramming (OOP)
#(:     is a programming paradigm
#(:  that represents the elements of a problem as entities
#(:  with a set of properties and actions that it can execute.
#(:  If you use Bash to write very simple and short scripts,
#(:  procedural programming is just fine, you don't need more.
#(:  But if your program becomes more and more bigger,
#(:  a monster BASH system program (such as this MGR.sh) ,
#(:  then you need a better way to structure your program ...
#(:  Dec 22, 2012
#(:  quotes from "hipersayanx.blogspot.com" ›
#(:     2012/12 › object-oriented-pr.
#(:
#(:  These "OOP" Concepts are foreign to *nix Shell Languages
#(:     Abstraction.
#(:     Encapsulation.
#(:     Inheritance.
#(:     Polymorphism.
#(:
#(:	 The concept of strict "scope"
#(:     (isolation of levels of process 'stack')
#(:      is not implimented in the BASH language.
#(:
#(:  A monster BASH script program like this 
#(:  ('MGR' core program has 8284 lines) 
#(:  ('MGR' system has > 12,000 lines )
#(:   would be better implemented via 
#(:   modern high-level language like Python.
#(:   and would have been a flash 
#(:   using FoxPro/VisualFox with imbedded T-SQL.
#(:
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
#(:
#(:  IF 'strict' lockfile block is written into a funxtion()
#(:     ( which is a "sub-routine" )
#(:		[which by definition is a sublevel in the stack],
#(:  THEN 'exit' will only "pop" one level
#(:     at the funxtion() stack level,
#(:  	and will not 'quit' or 'halt' the PRG as desired.
#(:
#(:  MGR.sh has a 'soft' lock method written
#(:     into main ( ) stack level. 
#(:		User is responsible for correcting 
#(:		repeated runs of MGR.sh . 
#(:  'soft' lock produces 'non-fatal' errors.  
#(:
#(: ----------------------------------------------------
............................................................."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end: Sbr_Dump_FAQ
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
#(: 	gtkdialog/box_help will handle format and embedded color text codes.
#(: 	xmessage will NOT handle format and color embedded text codes.
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
lcMsgSrc="${0}"	# "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"   # box_help is required by gtkdialog 
echo "# ${gcSysDistroName} # ${gcSysNameBase} #  textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
echo "# SOURCE CODE " >> ${lcMsgTrg}
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_SRC " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`"  >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "#       " >> ${lcMsgTrg}
#!
cat ${0} >> ${lcMsgTrg}     ### Sbr_Dump_SRC   /tmp/box_help ###
sleep 1		# wait for system 
gxmessage -title "SRC:::${gcSysDistroName}:::${gcSysNameBase}:::"  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
#!
#!
} # end: Sbr_Dump_SRC
export -f Sbr_Dump_SRC
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
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line
echo "# Compiled: ${gcSysDevDob}" >> ${lcMsgTrg}
echo "# Running fx Sbr_Dump_GUI " >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# This is Linux "  >> ${lcMsgTrg}
echo "#    This is Free Open Source  " >> ${lcMsgTrg}
echo "#       So, Read the Code" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg}
echo "# MGR Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MGR ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}
cat ${lcMsgSrc} >> /tmp/box_help	# ${lcMsgTrg}     ### /tmp/box_help ###
sleep 1		# wait for system 
gxmessage -title "GUI"  -name "-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_GUI
export -f Sbr_Dump_GUI
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
} # end: Sbr_Dump_IMG
export -f Sbr_Dump_IMG
#!
#!
#(: =====================================================================
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
#! ############################################################
function Sbr_Dump_UPL() {   #: ACTIVE
	n=0
lcStrUpPop="
Compiled: ${gcSysDevDob}
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
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_ok "=== Sys === Legal === Message box_ok" error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # end: Sbr_Dump_UPL
export -f Sbr_Dump_UPL
#!
#!
#(: =====================================================================
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
#! ############################################################
function Sbr_Dump_Sys() {   #: ACTIVE
	n=0
#! insert initial splash from /sbin/init 
lcStrUpPop="fx(Sbr_Dump_Sys)
====================================
DateCompiled: ${gcSysDevDob}
DistroName: ${DISTRO_NAME} 
DistroVersion: ${DISTRO_VERSION}
====================================
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
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_ok "=== Sys Notes and Var === Message box_ok" error "
.
${lcStrUpPop}
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # end: Sbr_Dump_Sys
export -f Sbr_Dump_Sys
#!
#!
#!
#! ###########################################################
function MGR_TouchLockFile() {   #: NOT USED
	n=0
} #
#!
#!
#! ############################################################
function MGR_TouchCBXstatus() {   #: NOT USED
	n=0
} #
#!
#!
#! ############################################################
function MGR_TouchE3Rstatus() {   #: NOT USED
	n=0
} #
#!
#!
#!
#(: ====================================================================
#(: fx(Sys_Sync)
#(: called by: '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' + splash
#(: param:
#(: purpose:  link into 'busybox' binary '/bin/busybox'
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ############################################################
function Sys_Sync() {   #: ACTIVE
/bin/echo -en "\\033[0;39m"		>  /dev/console
/bin/echo -en "\\033[60G"    >/dev/console
/bin/echo -en "\\033[1;33m"    >/dev/console
/bin/echo -e  "\\033[0;39m"   >/dev/console
#! 
if [ ! $1  ] ; then   # display
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.
.    < SYNC >  flush buffers
.                            "&
	GTKPIDSYNC1=$!
    sleep .5
	kill ${GTKPIDSYNC1}
fi # end: [ $1 = "1" ]
#!
	sync   	# # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'
#!
} # end: Sys_Sync
export -f Sys_Sync
#!
#!
#(: ====================================================================
#(: fx(Sys_SnapMergePuppy)
#(: called by:    EXIT:guiS2fReStart, ReBoot, ReQuit
#(: param:
#(: purpose: Multi-Button calls a window, but branch sub-call fails to activate. 
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
#! ############################################################
function Sys_SnapMergePuppy() {   #: ACTIVE 
    # called by EXIT:guiS2fReStart, ReBoot, ReQuit
	n=0
llRun01=1
llRun02=0
llRun03=0
llRun04=0
lcRunNum01="19"
lcRunNum02="18"
lcRunNum03="17"
lcRunNum04="16"

lcRunNum="${lcRunNum01}"

### write "C"syntax here
#~ if [ ! $1 ] ; then   # display
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.
.           ...Save-2-Flash...Standard...
.             nice -n ${lcRunNum} snapmergepuppy
.                                                                        "&
    RETVAL=$?
	GTKPIDSMP=$!
    sleep 7.5
#~ fi # end: [ ! $1 ]
#
	nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
#
	kill ${GTKPIDSMP}
lcRunNum="${lcRunTime02}"
#
} # end: Sys_SnapMergePuppy
export -f Sys_SnapMergePuppy
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
#note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then
	echo "BK ==============================================="
	lcSaveBkFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameMount = ${lcSaveFileNameMount}"
	lcSaveBkFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameBaseSrc = ${lcSaveFileNameBaseSrc}"
	echo "BK ==============================================="
	#
#note  fi
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
    lcMsgStr="Raw = ${lcPupSaveNameRaw}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupSaveName="`echo $lcPupSave | cut -f 3 -d "/"`"
    lcMsgStr="Name = ${lcPupSaveName}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupSaveNameDts="NameDts = ${lcPupSaveName}.BKP-`date +%y%m%d-%H%M-%S`"
    lcPupSaveNameTrg="${lcPupSaveNameDts}.tar.gz"
    lcMsgStr="NameTrg = ${lcPupSaveNameTrg}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupSaveNameSrc="${lcPupSaveName##*/}"
    lcMsgStr="NameSrc = ${lcPupSaveNameSrc}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupSaveData="`echo $lcPupSave | cut -f 2 -d "/"`"
    lcPupSaveData="/initrd${lcPupHome}/${lcPupSaveData}/${lcPupSaveName}"
    lcMsgStr=">>>SaveData = ${lcPupSaveData}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    echo "--- only valid if 'saveDATA name' is manually inserted hard-code ---"
    lcPupDistroVer="${PUPSFS}"
	echo
#! -D----------------------------gtkdialog-- PupState
#~ /usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "  Gather the 'state' variables  " &
    #~ RETVAL=$?
	#~ GTKPIDSMP=$!
    #~ sleep 2.5
	#~ kill ${GTKPIDSMP}
    #!
    #   echo "--- PupState  and saveDATA size calc so some wait ---"
    #	aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
    #	read -r b ccc <<< "$aa"	# --- saveDATA size calc
	lcSrcOneFnExt1="--- possible LONG wait ---"
	lcSrcOneFnExt2="--- $lcPupRamObjMsg ---"
    /usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text "
    -- - calculating (saveDATA size) ---
             ${lcSrcOneFnExt1}
             ${lcPupRamObjMsg}
    " &
    ### working "calc" if [ zero ]  for "${lcPupRamObjMsg}"
    #!  -lt -eq -gt for "strings" 
    #!   =<   ==   >=  for integer 
    #~ if [ "${lcPupRamObjMsg}" ] ; then   if [ zero ]  
    if [ "${lcPupRamObjMsg}" ] ; then  # NOT ZERO 
        sleep 1    # MGR has been run/initialized the "first" time. Show "RamObjMsg"
    fi
    echo "--- PupState  and saveDATA size calc long wait ---"  # to background 
	aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
	read -r b ccc <<< "$aa"	# --- saveDATA size calc
    #!
            #~ lcMsgStr="saveData: ${ccc}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
            #~ lcMsgStr="--- possible LONG wait ---" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupRamObj="${b}"
    lcPupRamObjMsg="# DATA size > ${lcPupRamObj} MB "
    #!
    lcMsgStr="$lcPupRamObjMsg" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"   # to background
            ### changed from leading grave [`] to enclosing double-apostrophe ["]
            ### FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '"
            ### export gcFreeRamNow="${FREERAM}"
            ### export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
    #!
    #~ sleep .5
	pidx=$!
	GTKPIDrunningCp=$!
            #~ sleep 1
	kill ${GTKPIDrunningCp}
    #!
	export gcPupSave="${PUPSAVE}"
    lcPupDts="`date +%y%m%d-%H%M-%S`"   # not used
    lcMGRverdts="${gcMGRDob}"
            #~ lcSleep="sleep 1"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
	export MGR_E3Rstatus="/tmp/MGR_E3R_Status"
	export MGR_LockFile="/tmp/MGR_LockFile"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"
            #~ export gcFreeRamNow="${FREERAM}"
            #~ export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
	export gcPupSave="${PUPSAVE}"
	export MGR_ReStart_flg="/tmp/MGR_ReStart.flg"
    export lcPupDts
    export lcPupHome lcPupSave  lcPupMode
    export lcPupSaveNameRaw lcPupSaveName lcPupSaveNameDts
    export lcPupSaveNameTrg lcPupSaveNameSrc gcPupSubDir
} # end: Sys_PupState
export -f Sys_PupState
#!
#!
#!
#(: ====================================================================
#(: fx(Sbr_E3R_Mnt_CTA)    
#(: called by: after Writing "Short" Menu 
#(: param: 
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
function Sbr_E3R_Mnt_CTA() { 
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.   {!} MGR running P-mount "&
	sleep 3
    RETVAL=$?
	GtkPid_Sbr_Box_Splash1=$!	# capture PID
	#!
	#========================================
    Sys_MGR_pMount_All      ### Sbr -> internal
	#========================================
	#!
	kill ${GtkPid_Sbr_Box_Splash1} # after return
	#!
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.   {!!}  MGR running CTA      "&
	sleep 3
    RETVAL=$?
	GtkPid_Sbr_Box_Splash2=$!	# capture PID
#! -D----------------------------------------------
	#
    lcFnRunDir="CTA"  # specific Directory-filename
    lcFnRunId="CTA"   # FnRun from "CTA" external
	lcFileRun="${gcSys_MyDev}/Edit_${lcFnRunDir}/rc.z_${lcFnRunId}.sh"
  	lcFnRun="${gcSys_MyDev}/Edit_${lcFnRunId}/rc.z_${lcFnRunId}.sh"   # CTA
	### lcFileRun is specific Directory-filename
    if [ -f ${lcFileRun} ] ; then   # EDIT CTA
		#========================================
		#========================================
		#========================================
        ${lcFnRun}  #  CTA external 
		#========================================
		#========================================
		#========================================
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error "{!!} MGR 'if guiE3RCTAR*' ${lcFnRun} Not Found: ${lcFnRun}"
    fi
	#kill ${GtkPid_Sbr_Box_Splash1} # after return
	kill ${GtkPid_Sbr_Box_Splash2} # after return
	#
    lcMsgStr="# check-if TarOpt files exists in OS system subdir"
#!

### should call rc.z_E3R.sh  external 
### should call rc.z_E3R.sh  external 
### should call rc.z_E3R.sh  external 


#! -D----------------------------gtkdialog--
	#
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.   {!!!}  MGR running U-mount      "&
	sleep 3
    RETVAL=$?
	GtkPid_Sbr_Box_Splash3=$!	# capture PID
	#========================================
    Sys_MGR_uMount_All      ### Sbr -> internal
	#========================================
	kill ${GtkPid_Sbr_Box_Splash3} # after return
    #
lcMsgStr="<<< Sys_MGR_uMount_One"
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.
.   {0}  E3R DONE:    E3R + pMnt + CTA  + uMnt
.                                      "&
	sleep 3
    RETVAL=$?
	GtkPid_Sbr_Box_Splash0=$!	# capture PID
	kill ${GtkPid_Sbr_Box_Splash0} # after return
		#
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true  -close never -text "\
.
.  Fall Thru to Terminating Routines:
.  ReStart or ReBoot or RePowerOff
.                                    "&
	sleep 3
    RETVAL=$?
	GtkPid_Sbr_Box_SplashF=$!	# capture PID
	kill ${GtkPid_Sbr_Box_SplashF} # after return
    EXIT="${gcE3Rcontrol}"  # Restore Value
    #!
} # end 
export -f Sbr_E3R_Mnt_CTA
#!
#!
#!
#(: ====================================================================
#(: fx(Sbr_E3R_Call)   #: 
#(: called by: after Writing "Short" Menu 
#(: param: 
#(: purpose: calls E3R external 
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
function Sbr_E3R_Call() { 
    n=0
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.     'Init'  MGR E3R.sh'
.     External w Long-List       !"&
	sleep 3
    RETVAL=$?
	       GtkPid_Sbr_Box_SplashI=$!	# capture PID
	kill ${GtkPid_Sbr_Box_SplashI} # after return
    #!
    #===================================================================
    lcFnRunId="E3R"   # FnRun via "/E3R" external program
	### editing E3R in $gcRootHomeMyUsrDev
	### transfer into $gcRootApps
	###    as  lcFileRun="${gcRootApps}rc.z_E3R.sh"
	### either way, E3R.sh is external module. 
	### =============================================================
	### Editing/Testing is done on this """/Edit""" file 

	lcFileRunEdit="${gcRootHomeMyUsrDev}Edit_E3R/rc.z_E3R.sh"
    lcFileRunRoot="/root/my-applications/rc.z_E3R.sh"

    if [ -f ${lcFileRunEdit} ] ; then   # /E3R
        lcFileRun="${gcRootHomeMyUsrDev}Edit_E3R/rc.z_E3R.sh"
    else    # else run via /root/my-applications
        lcFileRun="/root/my-applications/rc.z_E3R.sh"
    fi
    #!
    if [ -f ${lcFileRun} ] ; then   # /E3R
		n=0
		#! -D----------------------------gtkdialog--
		/usr/lib/gtkdialog/box_splash -fg yellow -bg green -border true  -close never -text "\
.  MGR Calling ${lcFileRun}
.     External w Long-List    .......!"&
		sleep 7
		RETVAL=$?
		       GtkPid_Sbr_Box_Splash=$!	# capture PID
		kill ${GtkPid_Sbr_Box_Splash} # after return
		#! ================================================================
        ${lcFileRun}  # "EDIT" priority version /E3R external will 'return'
		#! ================================================================
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error "${lcFileRun} Not Found:"
        exit 1
    fi
    #!    
#    Sbr_E3R_Mnt_CTA
    #!
} # end: return to caller 
export -f Sbr_E3R_Call


#!
#!
#!
#! ######################################################################
#! ######################################################################
#! ######################################################################
#!
#!  ## all function ( ) moved to top of code
#(: ## all GUI EXIT to "IF/fi" Selection blocks moved to bottom of code, "Fall-Thru" method
#(: fx(name) is "function"  real.
#(: ft(name) is "fall-thru" [ if [] fi ]
#(:
#! ######################################################################
#! ######################################################################
#! ######################################################################
#!
#!
#!
#!
#! #####################################################################
#! #####################################################################
#! ######   start  MAIN()  #############################################
#! ######   start  main()  #############################################
#! #####################################################################
#! #####################################################################
#!
#!
#
#!
#!
#(: ====================================================================
#(: fx(MGR_Main)
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:

#=========================================================================================

    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "5" "3"
    lcMsgStr=">>> Start M.G.N. Header " && Sbr_Str2DevTrm "$lcMsgStr" "5" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "5" "3"
	#
    Sbr_SetVerDts
    lcMsgStr="Ver Dts :${gcSysDts}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Now-Dts :${gcSysDtsNow}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Var date :${gcSysDvar}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
echo " "
echo " "
echo " "
Sbr_CDW_Embedded_Dialog_Colors		# main () # setup color constants
#!
Sbr_CDW_EGI_CheckIF		# main () Setup for Long Graphic Images.
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ARB_init  : config controls  menulst   menu.lst # during main run ( )
#(: purpose:
#(:    (1) read existing config for OS "Idd",
#(:    (2) install generic "full enough" "SHORT" MENU.lst
#(:         with default "0,1,2,3,4" matching config "Idd"
#!
# working ?   Sbr_MenuLst_Init
Sbr_ARB_Init   #: Main Run ( ) read config, write menu.lst
#!
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
Sys_PupState   ### Gather the "state" variables from OS
#!
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
#!
#(: ====================================================================
#(: begin lock-file
#(: Rationale: Lock-File "Soft" Version
#(: MGR is a Master Conrol program.
#(: MGR must have a 'LockFile' to control for "Run-Twice".
#(: ====================================================================
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
#(: begin lock-file section ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: generate the name of the 'lock-file' in 'export' section.
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr=">>> before Check :[ -f ${MGR_LockFile} ]:" && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	#(: begin Lock-File Section =====================================================
	#(: if previous lockfile is found, then throw a flag, cleanup, possibly exit '1'.
	#(: remember, we have written a "Soft-Lock"
	if [ -f ${MGR_LockFile} ]; then      #: this is Main () lockfile
		lcMsgStr=" Error: Soft LockFile Control
  		  ... MGR_Running_Already !!!
	  	  ... (1) Quit MGR program
		  ... (2) Clear Running MGR window
		  ... (3) Re-Start MGR program
		  ... (4) MGR program will continue (Soft Lock)"
		#(: if "Hard-Lock" then  ${MGR_LockFile} can prevent re-running program.
		#(: if "Soft-Lock" then  program allows "Continue"
		xmessage -timeout 1 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
		#(: Note on "Hard-Lock-File" method, which is NOT used.
        #(: Hard-Lock-File method :
        #(: IF previous lockfile is found,
        #(: THEN throw a flag, cleanup, exit 1 .
        #(:
        #(: MGR is already running.
        #(: User must clear lingering splash manually,
        #(: then restart program. "
        #(: box_ok requires user to hit the 'OK' button to clear box_ok splash.
 		#(: Note: compare Hard vs Soft :
        #(: if "Hard-Lock" then  ${MGR_LockFile} can linger, and prevent re-running program.
        #(: if "Soft-Lock" then  program allows "Continue" , user must handle double run.
 		#(: NOTE: "Soft" Lock-File method:
		#(: "Soft-LockFile control is a 'continue' method ."
        #(: Current 'Soft' Method :
        #(: (0) Leaving the lock-file in place.
        #(: (1) User has been warned,
        #(: (2) but,
        #(: 	this also allows next run program to be a possible 'twice' run
        #(:		which is a non-fatal process, and "OK".
        #(: (3) thus, the user will not be 'locked-out' of next program 'run'.
		#(:
        #(: rationale :
        #(: the 'soft' method written here allows user to ReStart.
		#(:
        #(: if "Hard-Lock" then  ${MGR_LockFile} can prevent re-running program.
        #(: if "Soft-Lock" then  program allows "Continue"
		#(:
 		#(: 'SOFT' lockfile method IS USED.
 		#(: Give clear 'error' passage to main program.
 		#(: Lock-File remains !
		#(:
		lcMsgStr=" = FOUND :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
        #(: ideally,
        #(: user will clear lingering splash, manually.
        #(: then restart program.
        #(:
	else
		lcMsgStr=" =  Not Found  :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	fi
	#!
    #(: >>> begin set lock-file
	#(: Always !
    #(: so Otherwise , SET the lock-file, during this program run.
    touch "${MGR_LockFile}"
    #(: remove this lockfile at end of "QUIT", bottom of code.
    #(: <<< end set lock-file
#(:
#(: This is the main () level, and 'exit' will drop out of prg.
#(: but,
#(: IF 'Lock-File found' check is inside a subroutine,
#(: THEREFORE 'exit 1' will only exit up to the caller level, not exit program.
#(: THEREFORE must pass back a RETVAL flag of '1' to trigger another 'exit'
#(: Note: This is a BASH system stack '0' concern,
#(:		Controlled by placing 'Check Lock-Flag' at stack base level '0'.
#(:
#(: end: Lock-File Section =====================================================
#!
###^^^ GUI ^^^^^^^ example:
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
#(:
#

#
lcSleep=.3
kill ${GtkPid_Sbr_Init_Splash}
#
#! end: Fall-Thru "initz" function 
#~ kill ${GtkPid_Sbr_Init_Splash1}
#~ kill ${GtkPid_Sbr_Init_Splash2}
#~ kill ${GtkPid_Sbr_Init_Splash3}
#! end: Fall-Thru "initz" function 

#! -D----------------------------gtkdialog--
#~ /usr/lib/gtkdialog/box_splash -fg orange -bg black -border true  -close never -text "\
#~ .     Manager Start-Up  " &  RETVAL=$?  
#~ GtkPid_Sbr_Box_Splash=$!  
#~ sleep 1.5 
#~ kill ${GtkPid_Sbr_Box_Splash}
#!
if [ -f "${MGR_CBXstatus}" ]; then
    rm -f "${MGR_CBXstatus}"
    export lcCBXstatus="   ...Applied..."
else
    export lcCBXstatus="   ,,,,,,CBX,,,,,,   "
fi
lcMsgStr="CheckBoxStatus=:${lcCBXstatus}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
if [ -f "${MGR_E3Rstatus}" ]; then
    rm -f "${MGR_E3Rstatus}"
    export lcE3Rstatus="   ...Applied..."
else
    export lcE3Rstatus="   ,,,,,,E3R,,,,,,   "
fi
lcMsgStr="lcE3Rstatus=:${lcE3Rstatus}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
#
#
#
#!
if [ -f ${gcC3MConfigArbCfg} ] ; then
    n=0
    gcC3MConfigArbCfg="/root/my-applications/bin/C3M_Config_Arb"   # ASSIGNED fx(Sys_PupState)
    gcMGRConfigArbIdd=`cat ${gcC3MConfigArbCfg}`   #  extract and export Idd
    echo "gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
else
    touch ${gcC3MConfigArbCfg}
	gcMGRConfigArbIdd="???"
	echo "ID:gcMGRConfigArbIdd:${gcMGRConfigArbIdd}:"
	echo "FN:${gcC3MConfigArbCfg}:Not Found:"
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.     ${gcMGRConfigArbIdd} Not Found  "&
    RETVAL=$?
	GtkPid_Sbr_Box_Splash=$!
	sleep 1
	kill ${GtkPid_Sbr_Box_Splash}
	#
fi	#
#------------------------------------------------------------------------------
#------------------------------------------------------------------
#!====================================================================
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
#(: 	this width=1500 works good on UpupBB. Other Distro may require adjustment.
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
#! begin: Test before possible ReStart so GEANY is initialized proper.
if [ ! -f ${MGR_ReStart_flg} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
    # If not file, then touch one. 
    # Generate a ReStart Message for First Time Run . 
    touch ${MGR_ReStart_flg}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
else    # # this is NOT a First-Time-Run  and  Requires NOT ReStart.
    # simple background message
    lcMsgStr="= = = Start-OK = = ="     # && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    Sbr_Str2Banner "$lcMsgStr"

    lcMsgStr="BUILD_FROM_WOOF >>>=== ${BUILD_FROM_WOOF} ===<<<"
    Sbr_Str2Banner "$lcMsgStr" 

    sleep .3
fi # end: ReStart so GEANY is initialized proper.
###
### MGR 
###
######################################################################
#!
#! problem: each time the Main Gui is run, 
#!    there is a delay ??? until Main Gui <button> are 'active'. 
#!      may be dependent on re-sizing each element of gui.
#!
#! cause: each OS has special display pixel count, font size, etc. 
#!
#! run gui test on each OS:__________Menu # __Distro Sub Name  
#! GTK gui is dependenton system theme and font size. 
######################################################################
#! run gui test on each OS:__________Menu # __Distro Sub Name  
#! export lcGuiWidthRequest="1730"		# 2 "upupKK" Raleigh theme
#! export lcGuiWidthRequest="1730"		# 1 "upupBB" Rustic theme
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
######################################################################

lcMainGuiVersion="MGR-R"    # Not Used

### if [ ${lcMainGuiVersion} = "MGR R" ] then ; # Not Used, will write MGS with Multi-Button .

######################################################################
###
### MGR 
###
export lcBSS_TrgSubDir="TrgSubDir"			# File Select # Not Used 
export gcPBKP_BACKUP_PATH="BACKUP_PATH"		# File Select # Not Used 
#! gcSysIdFull
#!
#!
#!
#! ## MAINGUI MGR R ### INIT ###################################################
#! ${gcMgrDistroName}
export lcGuiSplT0="${gcMgrDevId}"
export lcGuiSplT1="<span color='"'$lcGuiColorred'"'><b>'"{${gcMgrDevId}"'}</b></span>"	# not used 
export lcGuiSplT2="<span color='"'$lcGuiColorgrn'"'><b>'"${gcSysSave}"'}</b></span>"	# not used 
export lcGuiSplT2="<span color='"'$lcGuiColorgrn'"'></b></span>"	# not used 
export lnGuiW="21"	# not used 
export lnGuiH="21"  # not used 
#!
#! Primary Window title 
export lcGuiWindowTitle="___MGR_${gcSysDistroLoc}:-:${lcGuiSplT0}:-:_${gcSysSave}:-:${gcSysIdFull}:-:${gcSysKernName}:-:${gcSysDevHw}:-:${gcSysDevDob}:-:${gcMgrVer}"
#! Secondary Frame title 
export lcGuiFrameTitle="${gcMgrDevName}:${gcSysDistroLoc}__${gcMgrDistroName}__${gcSysIdFull}__Dob:${gcSysDevDob}_v:${gcMgrVer}-:"
#!
#! ## MAINGUI MGR R ### Dialog BEGIN ##############################################
#!
	
export MGR_Master_GUI='
<window  
	title="'${lcGuiWindowTitle}'" 
    window-position="1" 
	height-request="770" 
    width-request="1750"
	space-expand="true" 
 	border-width="2"
	resizable="true" 
>  
<vbox>
	<vseparator height-request="3" > </vseparator>
	<vbox>
      <button  height-request="35" width-request="540" size="large"  weight="bold" tooltip-text="Frame-Title Manager+ReStart 
       This is LINUX, 
       this is a Free OPEN SOURCE SYSTEM, 
       so READ the code and Learn !" 
        has-focus="false"  xalign=".5" >
        <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>50</width><height>50</height>
	        <label> "'${lcGuiFrameTitle}'"  </label> 
		<action>'EXIT:guiTopReStart'</action> </button>
	</vbox>
	<vseparator height-request="3"> </vseparator>
 
		<hbox>

<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>

			<vbox>
			<button has-focus="false" height-request="30"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-jug-grnxred.svg" >
			<input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width>  <height>25</height>
            <label> "'---C1---'" </label><action>lxAction:C1</action></button>
			<text height-request="17" editable="false" use-markup="true" xalign=".5">
				<label>
					"<span color='"'$lcGuiColorred'"'> <b>'--Check-Box-Select--'</b> </span>  "
				</label>
			</text>
			<button label="'Check-Box_Tool-Tip_'" 
				has-focus="false" height-request="29" use-stock="true" 
				tooltip-text="=== Check-Box Tool-Tip ===
				CBXC3C * Clear Caches ! 
				   will clear some browser aux storage 
				   which browsers rebuild on each run. 
				   Vars float. 
				CBXS2F * Snap-Merge-Puppy ! internal: 
				   will run several loops to clear 
				   internal non-fatal error flags.
				   Vars float.    
				CBXCTU * Cold-Tar-Backup*  local ! 
				   run Utility version 
				   will NOT run SMP 
				   CTU has NO GUI 
				   Vars float.    
				  ">
				   <action>lxAction:CBX-tool-tip</action>
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
			<button label="'==Begin=CBX==='" visible="false"></button>
			<button tooltip-text="NoShow: activate EXIT:CBXARS:ReStart" >
			   <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>"25"</width><height>"25"</height>
			   <label> '_CBx+ReStart'  </label>
                <action function="'launch'"     >msg_DC_0_window</action>
                <action function="'closewindow'">msg_DC_0_window</action>
               <action>'EXIT:CBXARS'</action>
            </button>
            <button tooltip-text="NoShow: activate EXIT:CBXARB:ReBoot" >
			   <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>"25"</width><height>"25"</height>
			   <label> '_CBx+ReBoot'   </label>
                <action function="'launch'"     >msg_DC_0_window</action>
                <action function="'closewindow'">msg_DC_0_window</action>
               <action>'EXIT:CBXARB'</action>
            </button>
            <button tooltip-text="NoShow: activate EXIT:CBXARQ:ReQuit" >
			    <label> '_CBx+ReQuit' </label>
				<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>"25"</width><height>"25"</height>
                <action function="'launch'"     >msg_DC_0_window</action>
                <action function="'closewindow'">msg_DC_0_window</action>
                <action>'EXIT:CBXARQ'</action>
            </button>
			<text editable="false" use-markup="true" xalign=".5">
				<label> "<span color='"'$lcGuiColorblu'"'> <b>'${lcCBXstatus}'</b> </span> " </label>
			</text>
			<button label="'===END==='" visible="false"></button>
			<vseparator height-request="3"></vseparator>
			<button has-focus="false" height-request="16"> <label> "" </label> 	</button>
		<vseparator height-request="3"></vseparator>
       <button visible="1"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxAction:C2</action></button>
		<button  visible="1" 
			tooltip-text="'EXIT:guiMCI' < MCI > 
            Embedded Graphics Sample Project  " gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'MCI_Project' }  " </label>
			<action function="'launch'">     msg_DC_0_window</action>
			<action function="'closewindow'">msg_DC_0_window</action>
			<action>'EXIT:guiMCI'</action> 
		</button>
       <button visible="1"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxAction:C2</action></button>
		<vseparator height-request="3"></vseparator>
		<button  visible="1" 
			tooltip-text="'EXIT:guiArcMgrDts' < Duplicate MGR with current DTS > " 
			gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'MGR-Arc+DTS' }  " </label>
			<action>'EXIT:guiMgrArcDts'</action> 
		</button>
		<button  visible="1" 
			tooltip-text="'EXIT:guiArcAllDts' < Duplicate MGR with current DTS > " 
			gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'All-Arc+DTS' }  " </label>
			<action>'EXIT:guiAllArcDts'</action> 
		</button>
		<vseparator height-request="3"> </vseparator>

                <text visible="false" editable="false" use-markup="true" xalign=".5">
                    <label> "<span color='"'$lcGuiColorblu'"'> <b>'${lcE3Rstatus}'</b> </span>  " </label>
                </text>
                <vseparator height-request="3"> </vseparator>
               <text  visible="false" editable="0" use-markup="true" xalign=".5">
                    <label> "<span color='"'$lcGuiColorgrn'"'> <b>'${lcPupRamObjMsg}'</b> </span>  " </label>
                </text>

                <vseparator  tooltip-text="* vseparator is Not-VISIBLE *" label="Not Showing Text" 
                    height-request="1"></vseparator>
                <vseparator  tooltip-text="* vseparator is Not-VISIBLE: can be a Internal Comment *" label="Any-Comment" 
                    height-request="1"></vseparator>
 

 
       <button visible="1" tooltip-text="'EXIT:guiMultiButton'"  height-request="35" has-focus="false">
			<input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>30</width><height>30</height>
			<label> "  'Multi_Button'  " </label>	
			<action>'EXIT:guiMultiButton'</action> 
		</button>
                   <button visible="false" tooltip-text="'EXIT:guiTest1'"  height-request="35" has-focus="false">
                        <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>30</width><height>30</height>
                        <label> "  'img-xpm-1'  " </label>	
                        <action>'EXIT:guiTest1'</action> 
                    </button>
                   <button visible="false" tooltip-text="'EXIT:guiTest2'"  height-request="35" has-focus="false">
                        <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>30</width><height>30</height>
                        <label> "  'img-xpm-2'  " </label>	
                        <action>'EXIT:guiTest2'</action> 
                    </button>
                   <button visible="false" tooltip-text="'EXIT:guiTest3'"  height-request="33" has-focus="false">
                        <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>30</width><height>30</height>
                        <label> "  'img-xpm-3'  " </label>	
                        <action>'EXIT:guiTest3'</action> 
                    </button>
             
                   <button visible="0"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-apple-redgrn.svg" >
                        <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
                        <label> " " </label><action>lxAction:C2</action></button>
                   <button visible="0"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-apple-redblu.svg" >
                        <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
                        <label> " " </label><action>lxAction:C2</action></button>
                   <button visible="0"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1-/tmp/EmGr-img-apple-redyel.svg" >
                        <input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
                        <label> " " </label><action>lxAction:C2</action></button>

		<vseparator height-request="3"> </vseparator>
       <text editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorgrn'"'> <b>'${lcPupRamObjMsg}'</b> </span>  " </label>
        </text>
		<vseparator visible="true" tooltip-text="* vseparator shows label *" label="v" 
			height-request="3"></vseparator>

	
		<button visible="0"  height-request="7" tooltip-text="* Bottom-C1-" 
			has-focus="false" > 
			<input file icon="gtk-select-color" ></input> 
			<action>lxAction:button-invisible</action> </button>
		<button visible="0"  label="" height-request="5" tooltip-text="------- spacer -------" use-stock="true" has-focus="false"> 
              <input file stock=""></input><action>lxAction=BC1</action> </button>
		<vseparator visible="0" tooltip-text="* vseparator shows label *" label="v" 
			height-request="3"></vseparator>
    </vbox>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
    <vbox>
        <button has-focus="false" height-request="30"  xalign=".5"  tooltip-text="C2-/tmp/EmGr-img-apple-redgrn.svg" >
            <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width><height>25</height>
            <label> "'---C2---'" </label><action>lxAction:C2</action> </button>
		<text editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorgrn'"'><b>'{-External-}'</b></span>"	</label>
        </text>
		<button  tooltip-text="" height-request="7" has-focus="false"> 
			<input file icon="gtk-select-color" ></input> 
			<action>lxAction:0</action> </button>
 
		<button tooltip-text="'EXIT:guiGTKsampler'< GTK-sampler >" gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'GTKsampler' }  " </label>
			<action>'EXIT:guiGTKsampler'</action> </button>
		<button tooltip-text="'EXIT:guiSFS'  < SFS Load >" gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'SFS-load' }  " </label>
			<action>'EXIT:guiSFS'</action> </button>
		<button tooltip-text="'EXIT:guiJWD' <  JW Desk >" gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-yelXyel.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'JWDesk' } " </label>
			<action>'EXIT:guiJWD'</action> </button>
        <button height-request="7" has-focus="false"> <input file icon="gtk-select-color" ></input> <action>lxAction:0</action> </button>
		<button tooltip-text="'EXIT:guiPPR' <  JW Desk >" gtk-apply="true" has-focus="false" > 
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width>"35"</width><height>"35"</height>
			<label> " { 'pProcess' }  " </label>
			<action>'EXIT:guiPPR'</action> </button>
        <button has-focus="false" height-request="26"> <label> "" </label> 
            <input file icon="gtk-select-color" ></input> 
            <action>lxAction:0</action></button>
		<button tooltip-text="before CTB" height-request="7" has-focus="false"> <input file icon="gtk-select-color" ></input> <action>lxAction:0</action> </button>
 
        <button     tooltip-text="'EXIT:guiCTX'__< 'CTX' from Local to SDA1 Drive, has GUI >" has-focus="true" height-request="66">
			<input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>27</width><height>27</height>
			<label> "'{}{_COLD_TAR_BACKUP_}'" </label>
			<action>'EXIT:guiCTX'</action> </button>
		<button tooltip-text="after CTB" height-request="7" has-focus="false"> <input file icon="gtk-select-color" ></input> <action>lxAction:0</action> </button>
 
        <button has-focus="false" height-request="26"> <label> "" </label> 
            <input file icon="gtk-select-color" ></input> 
            <action>lxAction:0</action> </button>
		<button label="" height-request="5" tooltip-text="------- spacer -------" use-stock="true" has-focus="false"> 
              <input file stock=""></input> <action>lxAction=0</action> </button>
		<button tooltip-text="'EXIT:gui-P-MntInt' <PupMount All Drives>" has-focus="false"> 
			<input file>"'/tmp/EmGr-img-Check-bluXgrn.svg'"</input><width>33</width><height>33</height>
			<label> "'P-Mount-All-INT'" </label>
			<action>'EXIT:gui-P-MntInt'</action> </button>
		<button tooltip-text="'EXIT:gui-P-MntInt' <PupMount All Drives>" has-focus="false"> 
			<input file>"'/tmp/EmGr-img-Check-bluXgrn.svg'"</input><width>33</width><height>33</height>
			<label> "'U-MountAll-INT'" </label>
			<action>'EXIT:gui-U-MntInt'</action> </button>
		<button label="" height-request="5" tooltip-text="------- spacer -------" use-stock="true" has-focus="false"> 
              <input file stock=""></input><action>lxAction="spacer"</action> </button>
<vbox> <button label="'---*---'"  tooltip-text="* Bottom-C2 *"    has-focus="false" height-request="17" width-request="35" space-expand="false"> <action>lxAction:Bottom-C2</action> </button> </vbox>
</vbox>
<button tooltip-text="'-C3-C3-C3-C3-C3'" visible="false"has-focus="false" width-request="7" xalign=".5"  >
            <input file icon="gtk-select-color" ></input><width>5</width><height>5</height>
            <label> "" </label> <action>lxAction:mC3</action> </button>

<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>

<vbox>
        <button has-focus="false" height-request="30"  xalign=".5"  tooltip-text="C3-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "'---C3---'" </label><action>lxAction:C3</action></button>
        <text editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorblu'"'> <b>'{-Internal-}'</b> </span>"	</label> </text>
        <button     tooltip-text="'EXIT:guiS2F_Basic_Internal' < SMP () = Do/While >"  height-request="35" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>35</width><height>35</height>
			<label> "'_S2F-3_' " </label>
  			<action>'EXIT:guiS2F3'</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>
	<hbox homogeneous="true">
        <button     tooltip-text="'EXIT:guiDumpHLP'  <HELP dump>"  has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
			<label>"'HELP'  " </label>
 			<action>'EXIT:guiDumpHLP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpPUP'  <Pup-State dump>"  has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
			<label> "'Pup'  " </label>
 			<action>'EXIT:guiDumpPUP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpFAQ'  <FAQ dump>" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
			<label> "'Faq'  " </label>
			<action>'EXIT:guiDumpFAQ'</action> </button>
	</hbox>
        <button     tooltip-text="'EXIT:guiDumpSRC'  <Source Code Dump>" heihas-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-All_Source=Code:'    " </label>
 			<action>'EXIT:guiDumpSRC'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpGUI'  <XML GUI Dump>"  has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-XML_GUI=Code:'    " </label>
 			<action>'EXIT:guiDumpGUI'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpIMG'  <XML GUI Dump>"  has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-svg-xpm_IMG=Code:'    " </label>
 			<action>'EXIT:guiDumpIMG'</action> </button>

    <hbox homogeneous="true">
        <button     tooltip-text="'EXIT:guiDumpUPL'  < Phil PeaBee : UpPopLegal_Flg >"  has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump_UPL'    " </label>
 			<action>'EXIT:guiDumpUPL'</action> </button>
       <button     tooltip-text="'EXIT:guiDumpSys'  < Display Devloper Var >"   has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump_Sys'  " </label>
 			<action>'EXIT:guiDumpSys'</action> </button>
    </hbox>
    <hbox homogeneous="true">
       <button    tooltip-text="'EXIT:guiBase64__Sbr_Base64'"   has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>44</width><height>44</height>
			<label> "'Dump_Source-to-Base64'" </label>	
            <action>'EXIT:guiBase64'</action> </button>
    </hbox>    
    <vseparator  tooltip-text="* vseparator is Not-VISIBLE *" label="Not Showing Text" height-request="5"></vseparator>
        <button visible="0" has-focus="false" height-request="1"  xalign=".5"   tooltip-text="visible-Half-Line" >
                <label> "''" </label> <action>lxAction:Before-CTX</action></button>
        <button visible="0" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>
        <button visible="1" label="" has-focus="false" height-request="5"> <action>lxAction:0</action> </button>
    <hbox>
        <button label="-NOTE-" visible="false" height-request="5"> <action>lxAction:spacer</action> </button>
        <button label="'-Apples-'" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
        <button     tooltip-text="'Quit-Red'" ><input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:00'"</action> </button>
        <button     tooltip-text="'Quit-Grn'" ><input file>"'/tmp/EmGr-img-quit-grnnnn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:00'"</action> </button>
        <button     tooltip-text="'Quit-Yel'" ><input file>"'/tmp/EmGr-img-quit-yelnnn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:00'"</action> </button>
        <button     tooltip-text="'apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:01'"</action> </button>
        <button     tooltip-text="'apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:02'"</action> </button>
        <button     tooltip-text="'apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:03'"</action> </button>
        <button     tooltip-text="'apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:04'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
    </hbox>
    <hbox>
        <button label="'-Jugs-'" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
        <button     tooltip-text="'jug-bluxyel'" ><input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:05'"</action> </button>
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
        <button label="" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
    </hbox>
	<hbox>
       <button label="-Hash-" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
        <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:12'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
	</hbox>
	<hbox>
        <button label="-Checks-" has-focus="false" height-request="5"> <action>lxAction:spacer</action> </button>
        <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>33</width><height>33</height>
			<label> "''" </label><action>"'n:18'"</action> </button>
        <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>33</width><height>33</height>
			<label> "''" </label><action>"'n:19'"</action> </button>
        <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>33</width><height>33</height>
			<label> "''" </label><action>"'n:20'"</action> </button>
        <button     tooltip-text="'Check-blublu'" ><input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>33</width><height>33</height>
			<label> "''" </label><action>"'n:21'"</action> </button>
	</hbox>

	<hbox homogeneous="true">
       <button    tooltip-text="'EXIT:guiMandelbrot'   "   has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>44</width><height>44</height>
			<label>"'Mandelbrot_'"</label>	
            <action>'EXIT:guiMandelbrot'</action> 
       </button>
       <button visible="1" tooltip-text="'EXIT:guiSample_for_StartUpSound+LogInDts'"   has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>36</width><height>36</height>
			<label>"'StartSound_' "</label>	
			<action>'EXIT:guiSample'</action> 
		</button>
	</hbox>

        <button label="" has-focus="false" height-request="2"> <action>lxAction:spacer</action> </button>
<vbox> 
	<button label="'---*---'"  tooltip-text="* Bottom-C3 *" has-focus="false" height-request="12" width-request="35" space-expand="false"> <action>lxAction:Bottom-C3</action> </button> </vbox>
</vbox>

<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>

<vbox>
<vbox>
		<button label="'---*---'" visible="false"  tooltip-text="*'workingC4-C4-C4-C4-C4'*"    has-focus="false" height-request="17" width-request="15" space-expand="false" > 
            <action>lxAction:Top-C4</action> </button> 
        <button has-focus="false"  xalign=".5" tooltip-text="C4" >
			<input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>20</height>
            <label> "'---C4---'"</label> <action>lxAction:C4</action></button>
        <button visible="false"has-focus="false" height-request="10"  xalign=".5"  tooltip-text="OS_ID_Save" >
            <label> "'---*---'" </label><action>lxAction:C4-s</action></button>
			
        <text visible="1" editable="false" use-markup="true" xalign=".5"> <label> 
        "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"MANAGER"'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
            </label> </text>

    <hbox homogeneous="true">
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
       <button has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
</hbox>
			
        <button visible="1" has-focus="false" height-request="3"  xalign=".5"  tooltip-text="Top-C4a" >
            <label> "'---*---'" </label> <action>lxAction:Top-C4pre</action></button>
        <button visible="1" has-focus="false" height-request="3"  xalign=".5"  tooltip-text="Top-C4b" >
            <label> "'---*---'" </label> <action>lxAction:Top-C4pre</action></button>
		<vseparator height-request="21"> </vseparator>
        <text editable="false" use-markup="true" xalign="0.5">
           <label> "<span color='"'$lcGuiColorblu'"'><b>{'_PreSet__1-of-17_PuppyOS__menu.lst_'}</b></span>"</label> </text>
    </vbox>
	<vbox>
        <hbox homogeneous="true">
            <hseparator width-request="5"></hseparator>

            <button has-focus="false" height-request="30" width-request="0" xalign=".5"  
                tooltip-text="'Generic_Menu.lst_Green/Black/Yellow/Red_'   
             Build Menu.lst and ReStart   ">
                <input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>25</width><height>25</height>
                <label>"'ReMenu=Grn/Blk'"</label> 
               <action function="'launch'">msg_DC_ReMenu_window</action>
               <action function="'closewindow'">msg_DC_ReMenu_window</action>
                <action>'EXIT:ARB_ORGGBYR'</action> </button>

            <hseparator width-request="220"></hseparator>
        </hbox>
		<vseparator height-request="21"> </vseparator>
    </vbox>

    <vbox>


        <hbox homogeneous="false">
           <hseparator visible="true" width-request="10"></hseparator>
           <button visible="true" has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <text editable="false" use-markup="true" xalign="0.5">
                <label> "<span color='"'$lcGuiColorgrn'"'><b>{'_Write_Menu.lst_+_ReBoot__'}</b></span>"</label> </text>
           <button visible="true" has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>10</width><height>10</height>
                <label>"''"</label><action>'0'</action> </button>
           <hseparator  visible="true"  width-request="150"></hseparator>
        </hbox>
        <hbox>
            <hseparator width-request="10"></hseparator>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'" </input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_K-K_'" tooltip-text="'[]_KineticKudu-Pup_EXIT:ARB_K-K'  
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_KK'</action>  </button>
            <button label="'_B5B_'"   tooltip-text="'[]_BionicBeaver:K5:_EXIT:ARB_B5B'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_B5B'</action>  </button>
            <button label="'_J-J_'"    tooltip-text="'[]_JammyJellyfish_EXIT:ARB_J-J'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_JJ'</action>  </button>
            <button label="'_S1564_'"  tooltip-text="'[]_S15pupSlacko64-K:5_FF_EXIT:ARB_S1564'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_S1564'</action>  </button>
            <button label="'_B4B_'"   tooltip-text="'[]_BionicBeaver:K4:_EXIT:ARB_B4B'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_B4B'</action>  </button>
            <button label="'_M-M_'"    tooltip-text="'[]_UpupMM_Mantic-Minotaur:_EXIT:ARB_MM'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_MM'</action>  </button>
            <button label="'_B-W_'"   tooltip-text="'[]_DpupBW_BookWormDebian:_EXIT:ARB_BW'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_BW'</action>  </button>
            <button label="'_X64_'"    tooltip-text="'[]_UpupXenial64_FF_EXIT:ARB_X64'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_X64'</action>  </button>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'right-smo'</action> </button>
            <hseparator width-request="40"></hseparator>
        </hbox>
        <hbox>
            <hseparator width-request="10"></hseparator>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'left-smo'</action> </button>
            <button label="'_T-6_'"     tooltip-text="'[]_Tahr_EXIT:ARB_T-6'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_T6'</action>  </button>
            <button label="'_S-7_'"    tooltip-text="'[]_Slacko7-Alternate_EXIT:ARB_S-7'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_S7'</action>  </button>
			<button label="'_uIMP_'"    tooltip-text="'[]_UpupIMP_EXIT:ARB_UIMP'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
					<action>'EXIT:ARB_UIMP'</action>  </button>
             <button label="'_S64_'"    tooltip-text="'[]_Slack64-Kern:4_EXIT:ARB_S64'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_S64'</action>  </button>
            <button label="'_F-F_'"    tooltip-text="'[]_FocalFossa_EXIT:ARB_F-F'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_FF'</action>  </button>
            <button label="'_X708_'"   tooltip-text="'[]_Xenial708_EXIT:ARB_X708'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_X708'</action>  </button>
            <button label="'_SLXSC_'"  tooltip-text="'[]_Slacko-LxSc-Kern:5.4_EXIT:ARB_SLXSC'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_SLXSC'</action>  </button>
            <button label="'_Q-7_'" tooltip-text="'[]_Quirky-7-April_EXIT:ARB_Q7'   
                Build Menu.lst + ReBoot  " has-focus="false" height-request="25"> 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                    <action>'EXIT:ARB_Q7'</action>  </button>
           <button has-focus="false" height-request="30"  xalign=".5">  
                <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>15</width><height>15</height>
                <label>"''"</label><action>'right-smo'</action> </button>
            <hseparator width-request="30"></hseparator>
        </hbox>
		<vseparator height-request="1" > </vseparator>
        <vseparator  tooltip-text="* vseparator is Not-VISIBLE *" label="Not Showing Text" height-request="5"></vseparator>

    </vbox>    

        <button visible="1" has-focus="false" height-request="1"  xalign=".5"   tooltip-text="visible-Half-Line" >
                <label> "''" </label> <action>lxAction:Before-E3R</action></button>
       <button visible="0" has-focus="false" width-request="10" height-request="5"  xalign=".5"   tooltip-text="visible-Half-Line" >
                <label> "''" </label> <action>lxAction:Before-E3R</action></button>

		<hbox homogeneous="true">
		<button label="'===-E3R-Tools-==='"
            visible="true" 		has-focus="false" height-request="33" use-stock="true"
            tooltip-text="
           '===-E3R-Double-Click-Buttons-==='
            E3R subroutine Will do a Copy/BackUp
             of all Editing Scripts
                 from--->
               '/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/'
                 into --->
              '/root/my_applications/'
                 Then --->
            Call pMnt + CTA + uMnt
                 Then --->
            EXIT via /'ReStart'/, /'ReBoot'/, /'PowerOff'/      
            ">
            <action>lxAction:E3R-Tool-Tip</action>
        </button>
        </hbox>

    <vbox>
		<hbox homogeneous="false">
            <hseparator width-request="10"></hseparator>
			<button  visible="true" tooltip-text="'!---EXIT:guiE3RCTARS---!'
	E3R +'ReSTART' program {!}" >
			<input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><width>23</width><height>23</height>
			<label>'E3R+ReStart'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                <action>'EXIT:guiE3RCTARS'</action>
			</button>
            <hseparator width-request="3"></hseparator>
			<button visible="true" tooltip-text="'!!---EXIT:guiE3RCTARB---!!'
	ArcDts +E3R +S2F +pMnt +CTB +uMnt,   .
	+'ReBOOT' system {!}" >
			<input file>"/tmp/EmGr-img-jug-grnxorange.svg"</input><width>23</width><height>23</height>
			<label>'E3R+C+ReBoot'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                <action>'EXIT:guiE3RCTARB'</action>
			</button>
            <hseparator width-request="3"></hseparator>
			<button visible="true" tooltip-text="'!!!---EXIT:guiE3RCTARQ---!!!'
	ArcDts +E3R +S2F +pMnt +CTB +uMnt,   .
	+ 'PowerOff' system {!}">
			<input file>"/tmp/EmGr-img-jug-redxgrn.svg"</input><width>23</width><height>23</height>
			<label>'E3R+C+PowerOff'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
				<action>'EXIT:guiE3RCTARQ'</action>
            </button>
            <hseparator width-request="40"></hseparator>
		</hbox>
    </vbox>






    <button visible="false" tooltip-text="##################################################" ><label>""</label><action>'EXIT:xxx'</action></button>
    <hbox homogeneous="true">
        <vbox>
            <vseparator height-request="1" > </vseparator>
            <vseparator  tooltip-text="* vseparator is Not-VISIBLE *" label="Not Showing Text" height-request="0"></vseparator>
            <button visible="1" has-focus="false" height-request="5"  xalign=".5"   tooltip-text="visible-Half-Line" >
                    <label> "''" </label> <action>lxAction:Before-Quit</action></button>
            <hbox homogeneous="true">
                <button tooltip-text="'Double-Click-Program_Quit_'" >
                    <input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>44</width>  <height>44</height>
                    <label>'_QUIT-MGR_PROGRAM_'</label> 
                    <action function="'launch'"     >msg_DC_PrgQuit_window</action>
                    <action function="'closewindow'">msg_DC_PrgQuit_window</action>
                    <action>'EXIT:guiMainQUIT'</action>
                </button>
            </hbox>
            <vseparator height-request="1" > </vseparator>
        </vbox>
	</hbox>
		<vseparator height-request="10" > </vseparator>
		<vbox> 
			<button label="'---*---'"  tooltip-text="* Center-C4 *"
			has-focus="false" height-request="15" width-request="35" space-expand="false" > 
			<action>lxAction:Center-C04</action> </button> 
		</vbox>

<hbox>
       <hseparator tooltip-text="-*-" label="-*-" width-request="70"></hseparator>

       <button visible="1" has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
		<button visible="1" label="'{:...M.G.S..:}'"  tooltip-text="{:_S2F_+_Activate_MGR-S1_:}"	 height-request="23"  > 
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
			<action>'EXIT:guiReMGS'</action> </button> 
       <button visible="1" has-focus="false" height-request="15"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "" </label><action>lxAction:C4bar</action></button>
 
       <hseparator  tooltip-text="*" label="-*-" width-request="250"></hseparator>

</hbox>

		<vbox> 
			<button visible="0" label="'---*---'"  tooltip-text="* Center-C4 *"
			has-focus="false" height-request="15" width-request="35" space-expand="false" > 
			<action>lxAction:Center-C04</action> </button> 
		</vbox>

        <hbox homogeneous="false">
           <hseparator width-request="30"></hseparator>
     
            <button tooltip-text="_guiS2FReStart_">
                <input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
                <label>'_ReStart__'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                <action>'EXIT:guiS2FReStart'</action>	</button>
            <button tooltip-text="_guiSfs-ReBoot_">
                <input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
                <label>'_ReBoot__'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                <action>'EXIT:guiS2FReBoot'</action> </button>
            <button tooltip-text="_guiSfs-PowerOff_">
                <input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
                <label>'_PwrOff__'</label>
                <action function="'launch'">msg_DC_NoShow_window</action><action function="'closewindow'">msg_DC_NoShow_window</action>
                <action>'EXIT:guiS2FPowerOff'</action> </button>
            <hseparator width-request="140"></hseparator>
        </hbox>
        <vseparator  tooltip-text="* vseparator is Not-VISIBLE *" label="Not Showing Text" height-request="0"></vseparator>
		<vseparator height-request="1" > </vseparator>
        <button has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxAction:C4</action></button>
	</vbox>

<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>
<button tooltip-text="'Margin-C0vert'" width-request="7"> <action>lxAction:mC0</action> </button>

		<hseparator width-request="10"></hseparator>
   </hbox>
</vbox>
</window>'
#!
#! ##############################################################################
lcEmGrGuiFnTrg="/tmp/EmGa-Master-GUI.txt"   # master GUI IMG.txt, for "dump" .
echo "${MGR_Master_GUI}" > ${lcEmGrGuiFnTrg}
echo "### end of Graphical User Interface Code ############ " >> ${lcEmGrGuiFnTrg}   # title for "Dump" to screen
#!
echo "${MGR_Master_GUI}" > ${lcEmGrGuiFnTrg}
echo "### end of Graphical User Interface Code ############ " >> ${lcEmGrGuiFnTrg}   # title for "Dump" to screen
#!
#! ## MAINGUI MGR R ### Dialog END ###############################################

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
case $EXIT in
	"DUMP" ) echo "$MGR_Master_GUI" ;;
	*) eval "`gtkdialog --center -p MGR_Master_GUI`" ;;
esac

if [ lcSetCtrl ] ; then   # Main Gui Eval
    n=0
    set +x
    set +e
fi
#(: end: Main Gui eval

### fi # #(: end: Main Gui MGR Dialog   lcMainGuiVersion="MGR"




###  MAINGUI R ### Dialog Fall-Thru #################################################

lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------  Main Gui   --- ${EXIT} ----------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
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
#! Each regular "function" has a header that begins with label like this:
#!
#! function Sys_??????????() {  
#!
#! end: regular "function"
#!
#!
#!
#!
#!
#!
#!
#! case $EXIT in
#!	"Check-Box" ) echo "${EXIT}" ;;

#!	*) # eval "`gtkdialog --center -p MGR_Master_GUI`" ;;
#! esac
#!
#!
#! ###########################################################
#! begin: # 1 Column  CBX, MCI, Arc 
#! ###########################################################
#!
#!
#(:======================================================================
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
#! Fall-Thru Method 
#!
#(:======================================================================
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
#! Fall-Thru Method 
#!
#! ############################################################
#! function #! function [EXIT:CBXARS() #! function [EXIT:CBXARB() #! function [EXIT:CBXARQ()
if [ "${EXIT}" == "CBXARS" ] || [ "${EXIT}" == "CBXARB" ] || [ "${EXIT}" == "CBXARQ" ] ; then
#(: Apply button
#(: check for prior "APPLY Checks" commands
 	#(: function ft(FT_EXIT=') [ ${llCBXMASTER} = "1" ]
    #! ####################################################################################################
	if  [ $CBXC3C = "true" ] || [ $CBXS2F = "true" ] || [ $CBXCTU = "true" ] ; then
		n=0
		CBXALL=""
		llCBMASTER="1"
		lcMsgStr=">>> if CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		Sbr_KillProc  "CBXALL CBXC3C CBXS2F CBXCTU" # check for KillProc flag up.
		#!
		#! 		#!		#!		#!
		#(: ##=== CheckBox === C3C === Clear 3 Cache
        #! purpose: Clear Large Cache data which lingers 
		#!  ##################################################
		if [ ${CBXC3C} = "true" ] ; then
			lcMsgStr="=== C3C" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0
			CBXC3C=""
			###	
			echo "=== C3C ========================"
			### Clear 3 Cache, Fast Direct Calls
			###
            n=0
            #! -D----------------------------gtkdialog--
            /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text ".    Clear 3 Cache !!! " &
            RETVAL=$?
            GtkPid_CBX_C3C=$!	# capture PID
            sleep .7
            kill ${GtkPid_CBX_C3C} # after return
			#!
            #! Literal Spell-Out locations
            #!
            #! purpose: Clear Large Cache data which lingers 
            #!
			#!==========================================================
			### Cache ### FireFox 
			lcFileSrc="/root/.cache/mozilla/firefox/"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/mesa_shader_cache/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### Cache ###
			lcFileSrc="/root/.cache/event-sound-cache*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==========================================================
			### Cache ### LIGHT
			lcFileSrc="/root/.light/light/Light.default"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
            #!
			#!==========================================================
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/cache/cups".
			lcFileSrc="/var/cache/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/tmp/*".
			lcFileSrc="/var/spool/cups/tmp/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			### CUPS ###
			###  [06/Mar/2020:04:45:39 +0500] Cleaning out old files in "/var/spool/cups/*".
			lcFileSrc="/var/spool/cups/*"
			echo "===> execute: rm -fr  $lcFileSrc"
			sleep .1
			rm -fr  $lcFileSrc
			#!
			echo "=== DONE ======================="
			sleep 1
		fi
		#!
		#!
		#!
		#!
		#(: function ft(FT_EXIT='CBXALL')
		#(: function ft(FT_EXIT='CBXS2F')
		#(: ##=== CheckBox === S2F	=== no need to also call SMP inside of CTU
		#!  ##################################################
		if [ ${CBXS2F} = "true" ] ; then
			lcMsgStr="=== S2F" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			n=0    
			#~ if [ ! $1 ] ; then    # display active
				n=0
			#! -D----------------------------gtkdialog--
			/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text ".    Save2Flash !!! " &
				RETVAL=$?
				GtkPid_CBX_S2F=$!	# capture PID
				sleep .7
				kill ${GtkPid_CBX_S2F} # after return
			#~ fi # end: [ $1 = "1" ]
			#
			CBXS2F=''
			lcFnRun="${gcRootApps}rc.z_S2F.sh" # S2F
			if [ -f "$lcFnRun" ] ; then		# S2F
				[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
			else
				n=0
				#! -D----------------------------gtkdialog--
				/usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
			fi
		fi
		#(: function ft(FT_EXIT='CBXALL')
		#(: function ft(FT_EXIT='CBXCTU')
		#(: ##=== CheckBox === CTU-NSMP   # No SMP   ### handle everything in this block ###
		#! ##################################################
		if [ ${CBXCTU} = "true" ] ; then
			n=0
			#~ if [ ! $1 ] ; then    # display active
				n=0
			#! -D----------------------------gtkdialog--
			/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text ".    Cold Tar Backup  !!!" &
				RETVAL=$?
				GtkPid_CBX_CTB=$!	# capture PID
				sleep 1
				kill ${GtkPid_CBX_CTB} # after return
			#~ fi # end: [ $1 = "1" ]
			#!
			CBXCTU=""
			lcMsgStr="=== CTU-NSMP" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
			lcFnRun="${gcRootApps}rc.z_CTU-NSMP.sh"
			if [ -f "$lcFnRun" ] ; then		# CTU-NSMP
				[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
			else
				n=0
				#! -D----------------------------gtkdialog--
				/usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
			fi
		fi
		touch "${MGR_CBXstatus}"
		lcMsgStr="<<< if any Check-Box" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		#================================================
		#(: fx(FT_EXIT='CBX APPLY')
		lcMsgStr=">>> if any CheckApply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"
		#!
		#! ##################################################
        if [ "$EXIT" = "CBXARS" ] ; then   # ReStart
			n=0
			CBXARS=""
			Sbr_ClearFlagsSystem 0   # CBXARS
			Sbr_Cbx_ReStart 1   # no wait # CBXARS
		fi
		#! #############################################
        if [ "$EXIT" = "CBXARB" ] ; then   # ReBoot
			n=0
			CBXARB=""
			Sbr_ClearFlagsSystem 0   # CBXARB
			Sbr_Cbx_ReBoot
		fi
		#! #############################################
		if [ "$EXIT" = "CBXARQ" ] ; then
			n=0
			CBXARQ=""
			Sbr_ClearFlagsSystem ""   # CBXARQ
			Sbr_Cbx_ReQuit  1 # EXIT:CBXARQ
		fi
		#
		llCBMASTER="0"
		lcMsgStr="<<< if any Apply" && Sbr_Str2DevTrm "$lcMsgStr" "6" "1"

    else
    	### end: Activation buttons
        lcMsgStr="=== Bottom of Apply" && Sbr_Str2DevTrm "$lcMsgStr" "5" "1"
        ### Sbr_ShowSplash: will capture all params text, fg, bg, sleep
        Sbr_ShowSplash "\
        '===      WARNING         ==='
        '===  Bottom of CBX APPLY ==='
        '=== No-Checkbox-Selected ==='" "yellow" "blue" && 	sleep 3 && 	kill ${GTKPIDShowSplash}
        #
        Sbr_Cbx_ReStart 1  	 # no wait # CBX APPLY+ in case something fails

	fi	#
	#
fi	# end: check for "APPLY Checks" command
#! end: ( EXIT:'CBX APPLY+')
#!
#(: end: check for "APPLY Checks" command   Ch3ck-Box "CBX"  # External calls
#(: fx(FT_EXIT='APPLY_Checks_All_')
#(: fx(FT_EXIT='CBXARR')
#(: fx(FT_EXIT='CBXARS')
#(: fx(FT_EXIT='CBXARB')
#(: fx(FT_EXIT='CBXAPO')
#!
#! end: ft( EXIT:'CBX APPLY+')
#!
#!
#!
#! Fall-Thru Method 
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiE3RCTAR?)        #	# Active guiE3R---ReStart
#(: ft( [ "$EXIT" = "guiE3RCTARS" ] ||  [ "$EXIT" = "guiE3RCTARB" ] ||  [ "$EXIT" = "guiE3RCTARQ" ] )
#(: called by: Main GUI Fall-Thru: EXIT:guiE3RCTARS  EXIT:guiE3RCTARB  EXIT:guiE3RCTARQ
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
#(: ==================================================================
#! ###################################################################
#! function: from E3R-CTALL : RS, RB, RQ
#! function if [ "$EXIT" = "guiE3R  ...     # All E3R Internal pass thru here
#! function if [EXIT:guiE3RCTALL ()    if [ "$EXIT" =
#! gui Exits with guiE3RCTARS or guiE3RCTARB or guiE3RCTARQ
#!
#! #####################################################################
#! if [ E3R_Main ] 
#
#! all guiE3RCTAR? enter here to perform main functions.  
#!    final functions RS / RB / RQ are captured after fall-thru. 
#! ###################################################################################################
if [ "$EXIT" = "guiE3RCTARS" ] ||  [ "$EXIT" = "guiE3RCTARB" ] ||  [ "$EXIT" = "guiE3RCTARQ" ] ; then
#! ###################################################################################################
#~ set -e
	echo "guiE3RCTARS || guiE3RCTARB || guiE3RCTARQ ]"
    echo "--- Edit3Root + pMNT + Cold Tar Auto-Scan + uMNT ---"
    n=0
	#
    Sbr_SDA_Only 1
	Sbr_KillProc "${EXIT}  guiE3RCTAR ?R ?B ?Q ?"
    export gcE3Rcontrol=${EXIT}	# maintain this value,might restore 
	#
    Sbr_E3R_Call    # E3RCTARS "RS"  , E3RCTARB "RB" , E3RCTARQ "RQ"  must run E3R 
    #!
    # working E3R 
    #
    # RS is done ( No E3R )
    # RB and RQ still must do more 
    if [ "$EXIT" = "guiE3RCTARB" ] ||  [ "$EXIT" = "guiE3RCTARQ" ] ; then
        Sbr_E3R_Mnt_CTA
    fi
    #~ # lingering splash ? 
    #~ # move CTA from E3R to here.
	#!
fi  # 
#! ###################################################################################################
#! end: if [ "$EXIT" = "guiE3RCTARS" ] ||  [ "$EXIT" = "guiE3RCTARB" ] ||  [ "$EXIT" = "guiE3RCTARQ" ]
#! ###################################################################################################
#!
#! ## FALL-THRU ===> .  Local Fall Thru to Terminating Routines:
#! 
#! ===========================================================
#! ===>  E3R Ending Routines:  ReStart or ReBoot or RePowerOff
#! ===========================================================
#!
#(: function if [EXIT:guiE3RCTARS]
#! ###########################################################
#! function if [EXIT:guiE3RCTARS]       # ReStart E3R
if [ "$EXIT" = "guiE3RCTARS" ] ; then   # ReStart E3R
    n=0
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.
.  E3R Processing System ReStart
.                                                            "&
    RETVAL=$?
	GtkPid_Sbr_Box_Splash=$!	# capture PID
	sleep 1
	kill ${GtkPid_Sbr_Box_Splash} # after return
		#
    #=======================
    Sbr_Cbx_ReStart 1 	 # no wait  # OK to use ReStart here
    #=======================
        #
fi # end: [ "$EXIT" = "guiE3RCTARS" ]
#! ###########################################################
#! function if [EXIT:guiE3RCTARB]       # ReBoot E3R  
if [ "$EXIT" = "guiE3RCTARB" ] ; then   # ReBoot E3R
    n=0
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.
.   E3R  System WRM-ReBoot
.                                                         "&
    RETVAL=$?
	GtkPid_Sbr_Box_Splash=$!	# capture PID
	sleep 3
	kill ${GtkPid_Sbr_Box_Splash} # after return
            #
        #=======================
        Sbr_Cbx_ReBoot
        #=======================
   		#
fi # end: [ "$EXIT" = "guiE3RCTARB" ]
#(: # ########################################################
#! ###########################################################
#! function if [EXIT:guiE3RCTARQ]       # ReQuit E3R
if [ "$EXIT" = "guiE3RCTARQ" ] ; then   # ReQuit E3R
    n=0
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "\
.
.   E3R  System WRMpoweroff ReQUIT
.                                                            "&
    RETVAL=$?
	GtkPid_Sbr_Box_Splash=$!	# capture PID
	sleep 3
	kill ${GtkPid_Sbr_Box_Splash} # after return
            #
       #=======================
       Sbr_Cbx_ReQuit 1 # EXIT:guiE3RCTARQ
       #=======================
			#
fi # end: [EXIT:guiE3RCTARQ]
#! ###########################################################
#! end:  EXIT:guiE3RCT
#! ###########################################################
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiMCI]
if [ "$EXIT" = "guiMCI" ] ; then
    echo "--- MCI Process --- Run MCI Sample Project  ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	lcFnRun="/root/my-applications/rc.z_MCI.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}
    Sbr_Cbx_ReStart 1 	 # no wait
	exit 0
	#
fi # end: EXIT:guiMCI
#!
#!
##(: ====================================================================
#(: ft(EXIT:guiMgrArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
##(: purpose: Backup/Archive with DTS, only MGR "Manager" Edit Shell Script
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiMgrArcDts]
if [ "$EXIT" = "guiMgrArcDts" ] ; then
    echo "--- MGR Archive+DTS ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
#!
#!
#! ===============================================================================
#! === MGR Arc+DTS ===============================================================
	###
	lcMgrArcFnTag="${gcMgrVer}"
	###
	lcMgrArcFnSrc="MGR"
    lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
	lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
    #!
	lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR.sh"
	#~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_MGR_dts_sh_/rc.z_MGR-${lcMgrArcSubName}${lcMgrArcDtsNow}"
    lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_MGR-${lcMgrArcSubName}${lcMgrArcDtsNow}"
   #!
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
.   ${lcMgrArcFnSrc}
.   ${lcFnTrg}
." &
    sleep 1
	pidx=$!
	GTKPIDmgrarcdts=$!
    sleep .1
	#! from MGR(with suffixed surname)
	cp -f ${lcFnSrc} ${lcFnTrg}
	#! out to arc_MGR_dts_sh_
    sleep .1
	kill ${GTKPIDmgrarcdts}
#!
#! ===============================================================================
#!
    sleep 3
    Sbr_Cbx_ReStart 1 	 # display and no wait
fi # end: EXIT:guiMgrArcDts
#!
#!
#!
##(: ====================================================================
#(: ft(EXIT:guiAllArcDts)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: Backup/Archive with DTS, all Major Edit Shell Scripts
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#(: function guiAllArcDts() n=0 }
#! ######################################################################
#! function [EXIT:guiAllArcDts]
if [ "$EXIT" = "guiAllArcDts" ] ; then
    echo "--- ALL_ Archive+DTS ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
#!  Background
    #!
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true -close never -text "\
.   Backup/Archive  EDIT Shell Scripts 
.         MGR, MGR-S1, MCI, E3R, CTX   and geany.config   with DTS  
.   into /My_Dev_/Edit_MGR/arc_Common_dts_sh_
.
.
.
.
.
.
.
.
.   
_________________________________________________________________________________________" &
    sleep .3
	pidx=$!
	GTKPIDmgrarcdtsA=$!
    sleep .3

        #!
        #! ===============================================================================
        #! === MGR Arc+DTS ===============================================================
        ###
        lcMgrArcFnTag="${gcMgrVer}"
        ###
        lcMgrArcFnSrc="MGR"
        lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #!
        lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_MGR.sh"
        #~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_MGR-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGR(with suffixed surname)
        cp -f ${lcFnSrc} ${lcFnTrg}
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
        #!
        #! ===============================================================================
        #! === MGS Arc+DTS ===============================================================
        ###
        lcMgrArcFnTag="${gcMgrVer}"
        ###
        lcMgrArcFnSrc="MGS"
        lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #!
        lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGS(with suffixed surname)
        cp -f ${lcFnSrc} ${lcFnTrg}
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
        #!
        #! ===============================================================================
        #! === MGT Arc+DTS ===============================================================
        ###
        #~ lcMgrArcFnTag="${gcMgrVer}"
        #~ ###
        #~ lcMgrArcFnSrc="MGT"
        #~ lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        #~ lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #~ #!
        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        #~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #~ #!
    #~ /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    #~ .   ${lcMgrArcFnSrc}
    #~ .   ${lcFnTrg}
    #~ ." &
        #~ sleep .3
        #~ pidx=$!
        #~ GTKPIDmgrarcdts=$!
        #~ sleep .3
        #~ #! from MGS(with suffixed surname)
        #~ cp -f ${lcFnSrc} ${lcFnTrg}
        #~ #! out to arc_MGR_dts_sh_
        #~ sleep .3
        #~ kill ${GTKPIDmgrarcdts}
        #~ #!
        #~ #!
        #! ===============================================================================
        #! === MCI Arc+DTS ===============================================================
        ###
        lcMgrArcFnTag="${gcMgrVer}"
        ###
        lcMgrArcFnSrc="MCI"
        lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #!
        lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MCI/rc.z_MCI.sh"
        #~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_MCI-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGR(with suffixed surname)
        cp -f ${lcFnSrc} ${lcFnTrg}
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
        #!
        #! ===============================================================================
        #! === E3R Arc+DTS ===============================================================
        ###
        lcMgrArcFnTag="${gcMgrVer}"
        ###
        lcMgrArcFnSrc="E3R"
        lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #!
        lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_E3R/rc.z_E3R.sh"
        #~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_E3R-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGR(with suffixed surname)
        cp -f ${lcFnSrc} ${lcFnTrg}
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
        #!
        #! ===============================================================================
        #! === CTX Arc+DTS ===============================================================
        ###
        lcMgrArcFnTag="${gcMgrVer}"
        ###
        lcMgrArcFnSrc="CTX"
        lcMgrArcSubName="${DISTRO_DB_SUBNAME}"	# Upupkk, Upupbb, Upupjj
        lcMgrArcDtsNow="-`date +%y%m%d-%H%M-%S`-dts.sh"
        #!
        lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/rc.z_${lcMgrArcFnSrc}.sh"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_${lcMgrArcFnSrc}-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #~ lcFnSrc="/mnt/home/MY_/usr-share/My_Dev_/Edit_CTX/rc.z_CTX.sh"
        #~ lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/rc.z_CTX-${lcMgrArcSubName}${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGR(with suffixed surname)
        cp -f ${lcFnSrc} ${lcFnTrg}
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
        #! ==================================================================
        #! === geany.conf Arc+DTS ===============================================================
        lcMgrArcFnSrc="Geany.conf"
        lcFnSrc="/root/.config/geany/geany.conf"
        lcFnTrg="/mnt/home/MY_/usr-share/My_Dev_/Edit_MGR/arc_Common_dts_sh_/geany-conf${lcMgrArcDtsNow}"
        #!
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   ${lcMgrArcFnSrc}
    .   ${lcFnTrg}
    ." &
        sleep .3
        pidx=$!
        GTKPIDmgrarcdts=$!
        sleep .3
        #! from MGR(with suffixed surname)
        echo "===      ${lcFnSrc}  "
        echo "===      ${lcFnTrg}   "
        #!
        cp -f ${lcFnSrc} ${lcFnTrg}
        #!
        #! out to arc_MGR_dts_sh_
        sleep .3
        kill ${GTKPIDmgrarcdts}
        #!
    sleep .1
	kill ${GTKPIDmgrarcdtsA}
    #!
    Sbr_Cbx_ReStart 1 	 # no wait
	#
fi # end: EXIT:guiAllArcDts
#!
#!
#! #######################################################################
#! end: #1 Column  CBX, E3R
#! #######################################################################
#!
#!
#! Fall-Thru Method 
#!
#!
#! #######################################################################
#! begin: #1 Column TEST
#! #######################################################################
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiSample)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################################
#! function [EXIT:guiSample]    # "SAMPLE" buttons call this if[] .
if [ "$EXIT" = 'guiSample' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
.   guiSample StartUp-Sound and LogIn-DTS 
.                                   " &
        sleep 1
        pidx=$!
        GTKPIDS3=$!
        sleep 3

mplayer /usr/share/audio/bark.au &
sleep 1.4
mplayer /usr/share/audio/2barks.wav &
sleep 1.4
mplayer /usr/share/audio/2barks.wav &
sleep 1.4
mplayer /usr/share/audio/sys-login.mp3 &

touch /0-LogIn-DTS

        kill ${GTKPIDS3}
### HERE:  we have left the gtkdialog system.
### HERE:  we are operating in the BASH system.
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiSample'
#!
#(!
#(: ====================================================================
#(: ft(EXIT:guiTest1)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################################
#! function [EXIT:guiMultiButton]    
if [ "$EXIT" = 'guiMultiButton' ] ; then n=0  ;
	n=0
    #~ /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    #~ .   MultiButton
    #~ ." &
        #~ sleep 1
        #~ pidx=$!
        #~ GTKPIDMultiButton=$!
        #~ sleep .3
        #~ kill ${GTKPIDMultiButton}
#!
Sbr_Multi_Button_01
#! does not activate the call function, 
#! returns here, and continues.  
echo "======================================="
echo "EXIT:${EXIT}" && echo "EXIT:${EXIT}" > /dev/console
echo "======================================="
### HERE:  we have left the gtkdialog system.
### HERE:  we are operating in the BASH system.
### HERE:  splash: green, yellow, red .
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'Multi_Button'
#(!
#(: ====================================================================
#(: ft(EXIT:guiTest1)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################################
#! function [EXIT:guiTest1]    
if [ "$EXIT" = 'guiTest1' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest1
    ." &
        sleep 1
        pidx=$!
        GTKPIDT1=$!
        sleep .3
        kill ${GTKPIDT1}
### HERE:  we have left the gtkdialog system.
### HERE:  we are operating in the BASH system.
### HERE:  splash: green, yellow, red .
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest1'
#!
#(!
#(: ====================================================================
#(: ft(EXIT:guiTest2)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################################
#! function [EXIT:guiTest2]    
if [ "$EXIT" = 'guiTest2' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest2
    ." &
        sleep 1
        pidx=$!
        GTKPIDT2=$!
        sleep .3
        kill ${GTKPIDT2}
### HERE:  we have left the gtkdialog system.
### HERE:  we are operating in the BASH system.
### HERE:  splash: green, yellow, red .
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest2'
#!
#(!
#(: ====================================================================
#(: ft(EXIT:guiTest3)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ##################################################################
#! function [EXIT:guiTest3]    
if [ "$EXIT" = 'guiTest3' ] ; then n=0  ;
	n=0
    /usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
    .   guiTest3
    ." &
        sleep 1
        pidx=$!
        GTKPIDT3=$!
        sleep .3
        kill ${GTKPIDT3}
## HERE:  we have left the gtkdialog system.
### HERE:  we are operating in the BASH system.
### HERE:  splash: green, yellow, red .
    Sbr_Cbx_ReStart 1
fi # end: "$EXIT" = 'guiTest3'
#!
#!
#! #######################################################################
#! end: #1 Column TEST
#! #######################################################################
#!
#!
#! Fall-Thru Method 
#!
#!
#! #######################################################################
#! begin: #2 Column EXTERNAL 
#! #######################################################################
#!
#(:   PBB+ Dev+ E3R+ E2D+ GTK+ GEANY+ SFS+ PCP+ PPR+ CTB+ CTU+ CTnsmp+
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiDEV)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ###########################################################
#! function [EXIT:guiDEV]
if [ "$EXIT" = "guiDEV" ] ; then
    echo "--- guiDEV ------ Show 'My_Dev_' SubDir"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"   # cd
    echo "=== running ${lcFnRun} external ===================="
    cd /initrd/mnt/dev_save/MY_/usr-share/My_Dev_ && rox
    echo "<<< running cd ${lcFnRun} external ================="
    Sbr_Cbx_ReStart 1   # no wait # includes clear flags.
	#
fi # end: EXIT:guiDEV
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiGTKsampler)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:  call to GTK main program
#(: calls: GTK-sampler.sh
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! #####################################################################
#! function if [EXIT:guiGTKsampler]
if [ "$EXIT" = "guiGTKsampler" ] ; then
    echo "--- guiGTK samples --- MGR script"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	echo "--- GTK-sampler ---"
	lcFnRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_GTK/rc.z_GTK-sampler.sh"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # sfs_load
	Sbr_Cbx_ReStart 1   # no wait # guiGTKsampler
fi # end: EXIT:guiGTKsampler
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiSFS)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiSFS]
if [ "$EXIT" = "guiSFS" ] ; then
    echo "--- Load SFS file --- System Application Desktop ---"
    n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="/usr/sbin/sfs_load"
    [ -f "$lcFnRun" ]  &&  ${lcFnRun}     # sfs_load
	Sbr_Cbx_ReStart 1 	 # no wait
fi # end: EXIT:guiSFS
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiJWD)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiJWD]
if [ "$EXIT" = "guiJWD" ] ; then
    echo "--- JWD desk --- Desktop ---"
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
#(: ====================================================================
#(: ft(EXIT:guiPPR)
#(: called by: Main GUI Fall-Thru
#(: param:
#(: purpose: call for Puppy Process Routine
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiPPR]
if [ "$EXIT" = "guiPPR" ] ; then
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
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:gui-P-MntInt]
if [ "$EXIT" = "gui-P-MntInt" ]  ; then	   # Internal Code still "mount" internal
    n=0
	Sbr_KillProc "${EXIT}"
    Sys_MGR_pMount_All "1"  ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-P-MntInt (main)
#!
#!
#(: ============================================================
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
#! ######################################################################
#! function [EXIT:gui-U-MntInt]
if [ "$EXIT" = "gui-U-MntInt" ]  ; then	   # Internal Code calls "UnMount" Internal
    n=0
	Sbr_KillProc "${EXIT}"
    Sys_MGR_uMount_All "1" ### Sbr -> internal
	Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:gui-U-MntInt (main)
#!
#!
#! #######################################################################
#! end: #2 Column EXTERNAL 
#! #######################################################################
#!
#!
#!
#(: Fall-Thru Method 
#!
#!
#! ###########################################################
#! begin: # 3 Column
#! ###########################################################
#!
#!
#! : 'S2F+', 'Gears+', 'Call+', 'Src+', 'GTK', 'IMG', 'PUP+' , 'Faq+' , 'Hlp+'
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiS2F3]   # "_S2F-3_"
if [ "$EXIT" = "guiS2F3" ]  ; then
    n=0
	gcS2FstartCount="1"
    gcS2FwaitCount="1"
    gcS2FloopCount="3"
    gcGtkDialog="1"
    echo "--- S2F--- ${gcS2FwaitCount} loops "
	lcFnRun="MGR-S2F-0"
	echo "=== running Save2Flash ${gcS2FloopCount} loops ====="
    /bin/echo -en "\\033[0;39m"		>  /dev/console
    /bin/echo -en "\\033[60G"    >/dev/console
    /bin/echo -en "\\033[1;31m "    >/dev/console
    echo "======================================================"
    #
    echo ">>> Sync ..."
    Sys_Sync   "1"   # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox' + splash
    echo "<<< Sync ..."
    sleep .5
    #
    echo "======================================================"
    echo "=== '_S2F-3_' ==================================================="
            n=0
            export gcFlgGitHub="<STD>"
            export gcRunFile="snapmergepuppy  /initrd/pup_ro1 /initrd/pup_rw"
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"   ### grave-mark in date() !!!
        lcSysNowDts00="`date +%y%m%d-%H%M-%S`"		### grave-mark in date() !!!
        lcSysNowDts01="`date +%y%m%d-%H%M-%S`" 		### allow visual timing of each cycle
        lcMsgStrTime="    --- Start Time --- ${lcSysNowDts00} "
    #! ###########################################################
    if [ "$gcGtkDialog" -eq "1" ] ; then
    #! -D----------------------------gtkdialog -- background splash
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
        sleep .5 # ${gcS2fSleep}
      /bin/echo "- "
      /bin/echo "- "
      /bin/echo "- "
    fi # gtk
    echo "=== '_S2F-3_' begin: While Do Loop ==================================================="
	WAITCNT="${gcS2FstartCount}"	# MGR-S2F-2 will Loop 1,2,3 times.
    while [ ${WAITCNT} -lt 4 ];do
		gcRunCnt="${WAITCNT}" 			# 2
		gcNiceNum="19" 					# 3
		gcFlgGitHub="${gcFlgGitHub}"	# 4
		#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		lcMsgStr="-- Running Cnt:${gcRunCnt} -- Nice:${gcNiceNum} --"
		#! -D----------------------------gtkdialog -- inside of background splash 
		/usr/lib/gtkdialog/box_splash -fg blue -bg lightgreen -border true  -close never -text "$lcMsgStr" &
        #!
		nice -n ${gcNiceNum} ${gcRunFile} /initrd/pup_ro1 /initrd/pup_rw
        #!
		GTKPIDRUN=$!
		sleep .5 # ${gcS2fSleep}
		kill $GTKPIDRUN
		#;;;;;;;;;;;;;;;;;;;;;;;;;
		WAITCNT=`expr $WAITCNT + 1`		### count down to zero
		sleep .1
		echo -n " $WAITCNT" >/dev/console
    done
    echo "=== '_S2F-3_' end: While Do Loop ==================================================="
    ### that's all.
   /bin/echo "- " >/dev/console
   /bin/echo " - " >/dev/console
   /bin/echo "  - " >/dev/console
   /bin/echo "   - " > /dev/console

	#! ###########################################################
	if [ "$gcGtkDialog" -eq "1" ] ; then
		lcSysNowDtsDone="`date +%y%m%d-%H%M-%S`"
		lcMsgStr="======= DONE : ${lcSysNowDtsDone} ======="
		#! -D----------------------------gtkdialog--
		/usr/lib/gtkdialog/box_splash -fg darkgreen -border true  -bg yellow -close never -text "${lcMsgStr}" &
		GTKPIDDONE=$!
		sleep 3
		kill ${GTKPIDDONE}	# ## has lingered
		sleep .1
		kill ${GTKPIDSMP}	# ## has lingered
		sleep .1
		kill ${GTKPIDMAIN2}	# ## has lingered
		sleep .1
		kill ${GTKPIDMAIN1}	# ## has lingered
	fi # end: gtk
	echo "<<< running Save2Flash ============================="
	Sbr_ClearFlagsSystem 0  	# so that ReStart can run.
    Sbr_Cbx_ReStart 1  # no wait
    exit 0
fi #
#!
#!
#(: Fall-Thru Method 
#!
#!
#! #####################################################################
#! begin: #3 Column DUMP 
#! #####################################################################
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiDumpPUP]
if [ "$EXIT" = "guiDumpPUP" ] ; then
    echo "--- Dump/Display Pup Source Code ---"
    n=0
    Sbr_Dump_PUP	# MGR_Pup_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiDumpHLP]	DumpHELP
if [ "$EXIT" = "guiDumpHLP" ] ; then
    echo "--- HELP --- Sbr_Dump_HLP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiDumpFAQ]
if [ "$EXIT" = "guiDumpFAQ" ] ; then
    echo "--- FAQ --- Sbr_Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ	# MGR_Faq_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#! ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ######################################################################
#!
#! function [EXIT:guiDumpSRC]
if [ "$EXIT" = "guiDumpSRC" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_SRC ---${gcSysDistroName} ---"
    Sbr_Dump_SRC	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSRC
#!
#! ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ######################################################################
#! function [EXIT:guiDumpGUI]
if [ "$EXIT" = "guiDumpGUI" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_GUI ---${gcSysDistroName} ---"
    Sbr_Dump_GUI	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#! ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ######################################################################
#! function [EXIT:guiDumpIMG]
if [ "$EXIT" = "guiDumpIMG" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_IMG ---${gcSysDistroName} ---"
    Sbr_Dump_IMG	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#! ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiDumpUPL)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:  Show Legal
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiDumpUPL]
if [ "$EXIT" = "guiDumpUPL" ] ; then
    n=0
    lcMsgStr="--- UPopLegal --- Sbr_Dump_UPL --- ${gcSysDistroName} ---"
	Sbr_Dump_UPL	# MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDump_UPL
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiDumpSys]
if [ "$EXIT" = "guiDumpSys" ] ; then
    n=0
    lcMsgStr="--- Sys Notes --- ${gcSysDistroName} ---"
	Sbr_Dump_Sys
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSys
#!
#!
#(: Fall-Thru Method 
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiCTX)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiCTX]
if [ "$EXIT" = "guiCTX" ] ; then
   n=0
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	#
    lcFnRun="${gcRootApps}rc.z_CTX.sh"
	if [ -f "$lcFnRun" ] ; then		# CTX
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
	#
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
    #
	exit 0
	#
fi # end: EXIT:guiCTX
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiCTB)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiCTB]
if [ "$EXIT" = "guiCTB" ] ; then
    echo "--- guiCTB Cold Tar Backup  -----------"
    n=0
	Sbr_KillProc ${EXIT}   # guiCTB
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	#
    lcFnRun="${gcRootApps}rc.z_CTB.sh"
	if [ -f "$lcFnRun" ] ; then		# CTB
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
	#
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
    #
	exit 0
	#
fi # end: EXIT:guiCTB
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiCTB-SL)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiCTB-SL]
if [ "$EXIT" = "guiCTB-SL" ] ; then
    echo "--- guiCTB-SL Cold Tar Backup  ---"
    n=0
	Sbr_KillProc "${EXIT}"   # CTB-SL
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
        #
    lcFnRun="${gcRootApps}rc.z_CTB-SL-4.sh"
	if [ -f "$lcFnRun" ] ; then		# CTB-SL
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
        #
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
        #
	exit 0
	#
fi # end: EXIT:guiCTB-SL
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiCTA]
if [ "$EXIT" = "guiCTA" ] ; then
    echo "--- guiCTA Cold Tar Backup  ---"
    n=0
	Sbr_Button_Only ${EXIT}   # guiCTA
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTA.sh"
	if [ -f "$lcFnRun" ] ; then		# CTA
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
        #
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use here --- CTB ---
        #
	exit 0
	#
fi # end: EXIT:guiCTA
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiCTU)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiCTU() { ; n=0 ; }
if [ "${EXIT}" = "guiCTU" ] ; then
    echo "--- guiCTU ------------"
    n=0
	Sbr_Button_Only ${EXIT}   # guiCTU
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
	#
    lcFnRun="${gcRootApps}rc.z_CTU.sh"
	if [ -f "$lcFnRun" ] ; then		# CTA
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
	#
    Sbr_Cbx_ReStart 1 	 # no wait # OK to use after CTU script
	#
	exit 0
	#
fi # end: EXIT:guiCTU
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiCTUnsmp)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiCTUnsmp] { ; n=0 ; }
if [ "${EXIT}" = "guiCTUnsmp" ] ; then
    echo "--- guiCTUnsmp ------------"
    n=0
	Sbr_Button_Only ${EXIT}   # guiCTUnsmp
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that ReStart can run.
    lcFnRun="${gcRootApps}rc.z_CTU-NSMP.sh"
	if [ -f "$lcFnRun" ] ; then		# CTU-NSMP rc.z_CTU-NSMP
		[ -f "${lcFnRun}" ]  &&  ${lcFnRun}
    else
        n=0
		#! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error " Not Found: ${lcFnRun}"
    fi
 	#
    Sbr_Cbx_ReStart 1 	 # no wait  OK to use after CTU script
	#
	exit 0
	#
fi # end: EXIT:guiCTUnsmp
#!
#!
#!
#! ###########################################################
#! end: #3 Column
#! ###########################################################
#!
#!
#(: Fall-Thru Method 
#!
#!
#! ###########################################################
#! begin: #4 Column   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###########################################################
#!
#!
#(: ====================================================================
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
#! ######################################################################
#! function [EXIT:guiTopReStart]
if [ "$EXIT" = "guiTopReStart" ] ; then
    n=0
	Sbr_Cold_Splash "Re-Start MGR" "1"
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	#
    Sbr_Cbx_ReStart 1
	#
fi  # end: EXIT:guiTopReStart
#(: 'S2F' "QUIT" version
#(: 	Save  &  ReStart / Reboot / PowerOff
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiS2FReStart)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiS2fReStart]
if [ "$EXIT" = "guiS2fReStart" ] ; then
    n=0
	Sbr_Cold_Splash "Save  &  Re-Start MGR" "1"
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	#
	Sbr_Cold_Splash "=== SnapMergePuppy ===" "1"
    #
	Sys_SnapMergePuppy 1
	#
    Sbr_Cbx_ReStart 1
	#
fi  #
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiS2FReBoot)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiS2FReBoot]
if [ "$EXIT" = "guiS2FReBoot" ];then
	#
    n=0
	#
	Sbr_Cold_Splash "Save  &  Warm ReBoot" "1"
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	#
	Sbr_Cold_Splash "=== SnapMergePuppy ===" "1"
	Sys_SnapMergePuppy 1
	#
	Sbr_Cbx_ReBoot 1
	#
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails.
    #
	exit 0
	#
fi
#!
#!
#(: ====================================================================
#(: ft(EXIT:guiS2FPowerOff)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiS2FPowerOff]
if [ "$EXIT" = "guiS2FPowerOff" ] ; then
	#
    n=0
	#
	Sbr_Cold_Splash "Save  &  Power-Off  via  WrmPowerOff" "1"
	#
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that WrmPowerOff can run.
	#
	Sbr_Cold_Splash "=== SnapMergePuppy ===" "1"
	Sys_SnapMergePuppy 1
	#
    Sbr_Cbx_ReQuit 1   # EXIT:guiS2FPowerOff
	#
    EXIT=""	### force "Fall Thru" if "exit 0" fails.
	#
	### "exit 0' should terminate this program.
    exit 0
	#
fi # # end: ft(EXIT:guiS2FPowerOff)
#(:=====================================================================
#!
                #~ #!
                #~ #! #####################################################################
                #~ #(: ====================================================================
                #~ #(: ft(EXIT:guiReMGR)       # Not Used 
                #~ #(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
                #~ #(: param:
                #~ #(: purpose: ? ReStart CheckIf ? 
                #~ #(: calls:
                #~ #(: method:
                #~ #(: sends:
                #~ #(: rationale:
                #~ #(: note :
                #~ #(:
                #~ #! ######################################################################
                #~ #! function [EXIT:guiReMGR]       # Not Used    ? ReStart CheckIf ? 
                #~ if [ "$EXIT" = "guiReMGR" ] ; then
                    #~ n=0
                    #~ Sbr_Cold_Splash "Save  &  Re-Start M.G.R." "1"
                    #~ #
                    #~ Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
                    #~ #
                    #~ Sbr_Cold_Splash "=== Activate MGR ===" "1"
                    #~ #
                    #~ lcFnRunDirMgr="MGR"  # specific Directory-filename
                    #~ lcFnRunIdMgr="MGR"   # FnRun from "MGR-S1" external
                    #~ lcFileRunMgr="${gcSys_MyDev}/Edit_${lcFnRunDirMgr}/rc.z_${lcFnRunIdMgr}.sh"
                      #~ lcFnRunMgr="${gcSys_MyDev}/Edit_${lcFnRunIdMgr}/rc.z_${lcFnRunIdMgr}.sh"  
                    #~ ### lcFileRun is specific Directory-filename
                    #~ if [ -f ${lcFileRunMgr} ] ; then  
                        #~ #========================================
                        #~ Sbr_Cold_Splash "=== MGR ===" "1"
                        #~ ${lcFileRunMgr}  #  MGR external 
                        #~ #========================================
                    #~ else
                        #~ n=0
                        #~ #! -D----------------------------gtkdialog--
                        #~ /usr/lib/gtkdialog/box_ok "ERROR" error "{!!} MGR 'if guiReMGR*' Not Found:"
                    #~ fi
                    #~ #
                    #~ Sbr_Cbx_ReStart 1
                    #~ #
                #~ fi  #
                #~ #! end: guiReMGR
#!
#!
#! #####################################################################
#(: ====================================================================
#(: ft(EXIT:guiReMGS)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGS
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! ######################################################################
#! function [EXIT:guiReMGS]
if [ "$EXIT" = "guiReMGS" ] ; then
    n=0
    Sbr_Cold_Splash "Re-Start M.G.S." "1"
    #
    Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    #
    Sbr_Cold_Splash "=== Activate M.G.S. ===" "1"
    #
    lcFnRunDirMgr="MGR"  # specific Directory-filename
    lcFnRunIdMgs="MGS"   # FnRun from "MGR-S1" external
    #
    #~ lcFileRunMgr="${gcSys_MyDev}/Edit_${lcFnRunDirMgr}/rc.z_${lcFnRunIdMgr}.sh"
      #~ lcFnRunMgr="${gcSys_MyDev}/Edit_${lcFnRunIdMgr}/rc.z_${lcFnRunIdMgr}.sh"  
    lcFileRunMgr="${gcSys_MyDev}/Edit_${lcFnRunDirMgr}/rc.z_${lcFnRunIdMgs}.sh"
      lcFnRunMgr="${gcSys_MyDev}/Edit_${lcFnRunIdMgr}/rc.z_${lcFnRunIdMgs}.sh"  
    ### lcFileRun is specific Directory-filename
    if [ -f ${lcFileRunMgr} ] ; then  
        #========================================
        Sbr_Cold_Splash "=== M.G.S. ===" "1"
        ${lcFileRunMgr}  #  MGS external 
        #========================================
    else
        n=0
        #! -D----------------------------gtkdialog--
        /usr/lib/gtkdialog/box_ok "ERROR" error "{!!} MGR 'if guiReMGS*' Not Found:"
    fi
    #
    Sbr_Cbx_ReStart 1
    #
fi  #
#! end: guiReMGS
#! #####################################################################
#!
#(:
#!
#(: end: #4 Column   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ##################################################################
#!
#!
#(: Fall-Thru Method 
#!
#!
#! ##################################################################
#(: begin: #4 Column   ;;;  Menu Setup   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: === begin: build menu code ======================================
#!
#!
#! === SHORT MENU ===================================================
#! === SHORT-MENU === SHORT-MENU === SHORT-MENU === SHORT-MENU ======
#! === SHORT-MENU ===================================================
#!
#(: ====================================================================
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
#(: Fall-Thru Method 
#!
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: ft( EXIT:ARB_ORG || EXIT:ARB_ "ALL"  )
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method: (1) Install only a Two-Character "Id" into config-file
#(:         (2) call Sbr_ARB_00 to initz the Build Menu routines
#(: sends:
#(: rationale:
#(: note : main run ( )   calls init: fx(Sbr_ARB_Init) to fetch configfile data.
#!
#! ############################################################
#! begin: Build Short Menu  ##################################
#! ############################################################
#! if [ EXIT:ARB_00 and EXIT:ARB_?? ]
#!
#! function "if"    
if [ "$EXIT" = "ARB_00" ] || [ "$EXIT" = "ARB_KK" ] || [ "$EXIT" = "ARB_B4B" ] || [ "$EXIT" = "ARB_B5B" ] || [ "$EXIT" = "ARB_JJ" ] || [ "$EXIT" = "ARB_MM" ] || [ "$EXIT" = "ARB_BW" ] || [ "$EXIT" = "ARB_BC" ] || [ "$EXIT" = "ARB_FF" ]  || [ "$EXIT" = "ARB_S7" ] || [ "$EXIT" = "ARB_T6" ] || [ "$EXIT" = "ARB_X64" ] || [ "$EXIT" = "ARB_X708" ]  || [ "$EXIT" = "ARB_UIMP" ] || [ "$EXIT" = "ARB_S64" ] || [ "$EXIT" = "ARB_S1564" ]   || [ "$EXIT" = "ARB_SLXSC" ] || [ "$EXIT" = "ARB_Q7" ]  ; then
    n=0
    #!
	Sbr_SDA_Only	# control: test "SDA" else  ReStart
	Sbr_KillProc  "$EXIT"   # permission control 
    #!
    Sbr_MenuShortList    ### fun function at top of code
    #!
    export gcC3MConfigArbId="${gcC3MConfigArbId}"
    #
    echo "${lcC3MOsSubIdd}" > "${gcC3MConfigArbCfg}"  # config of menu
    #
fi # end: ARB_00, KK, JJ, B5B, S1564, X64, MM, BW, T6, S7, X6, JF, B4B
#
#! ======================================================================
#! ## end: Build Short Menu  ############################################
#! ======================================================================
#!
#!
#!
#! === LONG MENU ===================================================
#! === LONG-MENU === LONG-MENU === LONG-MENU === LONG-MENU ======
#! === LONG-MENU ===================================================
#!
#! ======================================================================
#! ## begin: Build Long Menu   ##########################################
#! ======================================================================
#!
#(: ft(EXIT:ARB_ORG) ||ft(EXIT:ARB_ORGYBYR) ||ft(EXIT:ARB_ORGGBYR) ||ft(EXIT:ARB_ORGRYBG)
#!
#(: =======================================================
#(: function Menu.lst() { # menu Long === "Original" Menu.lst default = 0
	#(: n=0
#(: } # end: Menu.lst
#! ===========================================================
#! generate "Original" Menu.lst 
#! function if [ EXIT:ARB_ORGGBYR ]
if [ "$EXIT" = "ARB_ORGGBYR" ] ; then 
  	#!
	Sbr_SDA_Only	# control: only run from  "SDA" && ReStart
    #!
#! ======================================================================
#! ## begin: Build Long Menu   ##########################################
#! ======================================================================
#!
#! === LONGMENU ==============================================
#! function EXIT:ARB_OriginalMenu() { ; n=0 ; } # based on "C3M" # custom long "original" is generated.
    n=0
	#!
    export lcOsSubSplClrIfg="yellow"
    export lcOsSubSplClrIbg="blue"	
	#!
#! -D----------------------------gtkdialog--
/usr/lib/gtkdialog/box_splash -fg ${lcOsSubSplClrIfg} -bg ${lcOsSubSplClrIbg} -border true --center -close never -text "\
.     MGR - Build 'Large' Menu.lst:
.      ${lcOsSubSplClrID}
.      ${EXIT} = menu.lst  "&
		RETVAL=$?
		GtkPid_Mnu_Box_Splash=$!	# capture PID
		sleep 3
        kill ${GtkPid_Mnu_Box_Splash}
    #!
    #===============
    Sbr_MenuLongList
    #===============
    #!
    #!
    #===============
    Sbr_Cbx_ReStart  "1" #  Long Menu ReStart
    #=============== 
    #
fi # end: MenuLongList 
#!
#! ======================================================================
#! ## end: LongMenuList  ################################################
#! ======================================================================
#!
#!
#!
#!
#! ###########################################################
#! end: #4 Column   ;;;  Menu Setup   ;;;;;;;;;;;;;;;;;;;;;;;;
#! ###########################################################
#!
#!
#!
#!
#! #######################################################################
#! begin: #3 Column Special 
#! #######################################################################
#!
#! ###########################################################
#(: ====================================================================
#(: ft(EXIT:guiBase64)
#(: called by: Main GUI Fall-Thru and code is INTERNAL to MGR
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#! function [EXIT:guiBase64]
if [ "$EXIT" = 'guiBase64' ] ; then n=0  ;
	n=0
	Sbr_KillProc	"${EXIT}---stub TEST---guiBase64"  # Base64 stub_triple red-green-red gxmessage_ReStart
    Sbr_Dump_SRC_Base64
    Sbr_Cbx_ReStart '' ### display
fi # end: "$EXIT" = 'guiBase64'




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
	Sbr_KillProc	"${EXIT}---stub TEST---guiMandelbrot"
    Sbr_Mandelbrot
    Sbr_Cbx_ReStart '' ### display
fi # end: "$EXIT" = 'guiMandelbrot'
#(!
#(:
#!
#! #######################################################################
#! end: #3 Column Special 
#! #######################################################################
#!
#!
#!
#!
#!
#! #######################################################################
#! begin: #4 Column : System plus Restart-Reboot-ReQuit 
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
#! function [EXIT:guiMainQUIT]
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
			#! rm -f "${MGR_E3Rstatus}"
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
	if [  -f   ${gcEmGaImgFnTrgTxtMaster} ] ; then 	# build EGI files in /tmp
		n=0   
        echo    # ShowBanner
		lcMsgStr="===... clearing EmGrImg ...==="
        Sbr_ShowBanner "$lcMsgStr" "32m" "35m" #& sleep .5
        Sbr_ShowBanner "$lcMsgStr" "33m" "33m" #& sleep .5
        Sbr_ShowBanner "$lcMsgStr" "35m" "35m" #& sleep .5
		rm ${gcEmGaImgFnTrgTxtMaster}
		sleep .1
	fi
        echo    # Str2DevTrm
        lcMsgStr="======== MGR_Main-Quit ========"    # text fg mrg
        Sbr_Str2DevTrm "$lcMsgStr" "8" "8" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "7" "7" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "6" "6" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "5" "5" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "4" "4" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "3" "3" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "2" "2" #& sleep .5
        Sbr_Str2DevTrm "$lcMsgStr" "1" "1" #& sleep 2.5
        echo 
    #! "halt"  will Kill the whole system. 
    #! return && exit 0 ### will jump stack, then must "Quit" again to clear stack.
    #!
	exit 0  
    return  ### proper sequence must be "exit" then "return" down the "stack"
    #!
fi
#!
#!
##! #######################################################################
#! end: #4 Column : System ReStart-Reboot-ReQuit 
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
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr=">>>  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "1"
llcMsgStr=">>>  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "2"
llcMsgStr=">>>  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="???" 
#! colorful splash for FALL-THRU trap for 'loose' code
Sbr_Str2DevTrm "$lcMsgStr" "7" "7" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "6" "6" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "5" "5" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "4" "4" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "3" "3" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "2" "2" #& sleep .1
Sbr_Str2DevTrm "$lcMsgStr" "1" "1" #& sleep .1
lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5"
DISTRO_NAME_Z="Alpha:"$(echo $DISTRO_NAME | tr -dc 'A-z')
lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
DISTRO_NAME_Z="Numbers:"$(echo $DISTRO_NAME | tr -dc '0-9')
lcMsgStr="=== Orig ${DISTRO_NAME_Z} "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
lcMsgStr="  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="<<<  FALL-THRU trap for 'loose' code  " && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
lcMsgStr="-------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "2" "5"
	Sbr_ClearFlagsSystem  0   ### no display
    Sbr_ClearFlagsQuit   "1"   ### no display
	#! list of flags to be killed :
	#! rm -f "${MGR_TouchCBXstatus}"
	#! rm -f "${MGR_E3Rstatus}"
	#! rm -f "${MGR_BackUpStatus}"
	#! rm -f "${MGR_LockFile}"
    #! rm -f "${MGR_ReStart_flg}"
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
#!
################################################################################
        #! Rainbow Banner "END"  from program to /dev/console
        #! manually append to end of "/etc/rc.d/shutdown" as "sign-off" 
		/bin/echo "" >/dev/console
       lcMsgStr="===[ $0 ]====================================== "
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;33m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;34m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;35m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;36m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;37m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5

       lcMsgStr="===[ $0 ]====================================== "
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
		sleep .5

################################################################################

        #! Rainbow Banner "END"  from program to /dev/console
        #! manually append to end of "/etc/rc.d/rc.sysinit" as "sign-off" 
		/bin/echo "" >/dev/console
       lcMsgStr="===[ $0 ]====================================== "
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;31m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;33m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;34m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;35m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;36m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;37m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
        sleep .5

       lcMsgStr="===[ $0 ]====================================== "
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
       /bin/echo -e    "\\033[10G\\033[1;35m*** \\033[1;32m $lcMsgStr \\033[1;35m***\\033[0;39m"  > /dev/console  
		sleep .5

#! ###############################################################################

#! ###############################################################################

#! ###############################################################################
#!
