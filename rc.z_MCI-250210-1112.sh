#!/bin/bash
#! MCI is Instructional Version. Simplified. 
#! 
#! MCI TXN generated 
### MCI TXN generated 
#! rc.z_MCI , Menu, Click, Image
#! "cased+cloned-and-hacked" by gae,  GlenEllis from rc.z_MGR.sh 
#!
#! "rc.z_MCI.sh" name format so GEANY sees a 'script' executable.
#! chmod +x rc.z_MCI.sh might be required for export files.
#! "cased+cloned-and-hacked" by gae. 
#!
#! Each OS is tested via its own original distro BASH / GTK  code verson. 
#!
	#! Running Tests on:
    #!~ Running Tests on 20 Puppy Distro OS, including: 
    #!~ iso-KineticPup32-22.10+2_______________________230604
    #!~ iso-BionicPup32-8.0+30_BionicBeaver_____Kern:4_220407
    #!~ iso_BionicPup32-19.03-K5.9_BionicBeaver_Kern:5_231209
    #!~ iso_ManticPup32-23.10+1.iso____________________231209
    #!~ iso-JammyPup32-22.04+8_JammyJellyfish__22123
    #!~ iso-UPupFF+D-20.12+4_Focal-Fossa_______201210
    #!~ iso-UpupTahr-6.0.6-k4.1.30-uefi________190211
    #!~ iso-Slacko-7.0_DpupS7_14.2_____________220205
    #!~ iso-Xenial-64_7.5_XL___________________220401
    #!~ iso-S15Pup-64_22.12+1-T________________220922
    #!~ iso-Quirky_April-7.0.1F-uefi___________200511
    #!~ iso_devuanpup-9.7.0-chimaera_4.0_i386__211206
    #!~ iso_BookwormPup32-23.11-B4_____________231210
    #!~ iso_LxPupSc-slacko-20.01+0-T-k64_______200129
    #!~ iso_slacko64_14.2_32-674-bit_comptible_220227
    #!~ iso_ManticPup32-23.10+1.iso____________231209
#!
#!
#~ export gcSysDevDob="231219-0850"	
#~ export gcSysDevDob="240126-0700"	
#~ export gcSysDevDob="240213-0538"	
#~ export gcSysDevDob="240903-1354"	
export gcSysDevDob="250210-1112"	
#!
export gcMgrKey="JV4J-A9YI-UJFX-`date +%y%m%d-%H%M-%S`"
export gcMciDevId="MCI-v.3.41"	
export gcMciDevID="Menu.EmGr.DblClk.MnxGen"
export gcSysNameMode="general simple DEMO !"
export gcMciNameBase="MCI"
#!
export gcSysDevHw="AMD-500_64bit_32bit"
#!
export gcBootOsHd="SDA"
#!
export gcMGrMasterSubDir="/tmp/EmGr-Master-"
#!export gcMGrMasterSubDir="/root/myapplications/bin-"
#!
#!### gcSysKillProc #####################
export gcSysKillProc=0	### used by Sbr_KillProc
#! if [ ${gcSysKillProc} -eq 0 ] then do "enable" all GTK gui <button> process
#! if [ ${gcSysKillProc} -eq 1 ] then do "stub" for GTK gui <button> process
#!### gcSysKillProc #####################
#!
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications/bin 
. /etc/rc.d/PUPSTATE    # gather basic "state" of Puppy "system" 
. /etc/DISTRO_SPECS    # gather basic Distro data
export gcBUILD_FROM_WOOF="${BUILD_FROM_WOOF}"	### 'testing;ef1162a38;2022-11-13 19:08:17 +0200'
uname -a > /BitSize.txt
export gcBitSize="$(cat /BitSize.txt)"
#!
#! clear previous "set"
    set +x
    set +e
#!
#! ##################################################################
#! TXN.sh will cull most notes. 
#! ##################################################################
#!
#!
#! ###########################################
#! these "terms" can be searched for a group: 
#! -------------------------------------------
#! function
#! Sbr
#! Sys
#! if [ $EXIT
#! {:DC:}
#! ###########################################
#!
#!
	#! Running Tests on:
	#! iso-KineticPup32-22.10+2_230604
	#! iso-UpupBionic32-8.0+30_(BionicBeaver)_220407-2305
	#! iso-UpupJammy32-22.04+8_(Jammy Jellyfish)_22123-0700
	#! iso-UPupFF+D-20.12+4_(Focal-Fossa)_210410
	#! iso-UpupTahr-6.0.6-k4.1.30-uefi-190211-0
	#! iso-UpupXenial64_7.5_XL-220401 
	#! iso-UpupXenial-7.0.8-uefi-171013
	#! iso-UpupImpishPup32-21.10+5-220226
	#! iso-Slacko-LxSc-20.01_
	#! iso-S15Pup64-22.12+1-T_220922
	#! iso-Slacko-7.0_DpupS7_14.2_(Slacko7)_220205
	#! iso-Slacko64_14.2_32-64-bit_compatible_iso-220227
	#! iso-Quirky-7-April_
#! 
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#! note:  
#! if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then 
#! see pup_event_backend_modprobe
#
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
function Sbr_Splash_It() {   # Active # Simple Splash : param "Str" "fg" "bg" "sleep" "opt"
			#(: =====================================================
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
			export -f Sbr_Splash_It
			#!
#! ############################################################

#! ############################################################
function Sbr_ShowSplash() {   # text # fg # bg # kill ${GTKPIDShowSplash}
	n=0
	lcPar1r=${1}    # text
	lcPar2r=${2}	# fg
	lcPar3=${3}     # bg 
	/usr/lib/gtkdialog/box_splash -text "${1}" -fg "${2}" -bg "${3}" -border true  -close never &
    GTKPIDShowSplash=$!
    return
} # end:  Sbr_ShowSplash
export -f Sbr_ShowSplash
#!
#!
#! ############################################################
function Sbr_Cold_Splash() {   # Active in Col 4
	n=0
lcMsgStr=":$1:"
/usr/lib/gtkdialog/box_splash -fg yellow -bg purple -border true  -close never -text "\
.
.         ${lcMsgStr}
.                                                                        "&
    RETVAL=$?
	GTKPID_Col4_Splash=$!
	sleep $2
	kill ${GTKPID_Col4_Splash}
} # end: Sbr_Cold_Splash
export -f Sbr_Cold_Splash
#
#! ###########################################################
#! BEGIN:     Embedded_Dialog_Color 
#! rc.z_CDW_Embedded_Dialog_Colors.sh
#! ###########################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # 230321-0600 marker
    n=0
}
export -f Sbr_CDW_Embedded_Dialog_Colors
#!
#! BEGIN:     Embedded_Dialog_Colors
    #~ lcDialogColorOrig="  -fg yellow -bg darkred  "	# original
    #~ lcDialogFgDrkRed=" -fg darkred "	
    #~ lcDialogFgYel=" -fg yellow "	
    #~ lcDialogFgBlk=" -fg black "	
    #~ lcDialogBgDrkRed=" -fg darkred "	
    #~ lcDialogBgBlu=" -bg blue "	
    #~ lcDialogBgGrn=" -bg green "
    #~ lcDialogBgYel=" -bg yellow "
    #~ lcDialogBgBlk=" -fg black "	
#!
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#! rc.z_CDW_Embedded_Dialog_Colors.sh
#! END:     Embedded_Dialog_Colors
#!
#!
#!
#! ###########################################################
#! BEGIN:     Embedded_Graphic_Images   "EmGr"
#! ###########################################################
#!    rc.z_CDW_Embedded_Graphic_Images.sh
#!    ########################################################
#!
#! ############################################################
function Sbr_CDW_Embedded_Graphic_Images() { 
    n=0
}
export -f Sbr_CDW_Embedded_Graphic_Images
#!
#! ##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!  FirstRun and ReStart will activate this code. 
#!
lcMasterTrgExt="IMG.txt"
lcEmGrImgFnTrg="${gcMGrMasterSubDir}${lcMasterTrgExt}"
lcEmGrTrg="/tmp/EmGr-Master-IMG.txt"
echo "=== EmGr-Master-IMG.txt  =========" > ${lcEmGrImgFnTrg}   # title for "Dump" to screen
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
### if [ ${lcEmGrImageFlag} ] ; then 	# 
	#! 
	#! ###########################################################
	#! begin:   HASH  
	#! ###########################################################
	#! "EmGr" # 		fake green-PURPLE # major upper-left Image
	lcEmGrImg="/tmp/EmGr-img-hash-grn.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
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
	' > ${lcEmGrImg}   # /tmp to be inserted into <button>
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-red.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c none",
	"1	c #FF0000",
	"2	c #FFFFFF",
	"3	c #DD2222",
	"4	c #708090",
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
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-blu.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c none",
	"1	c #0040FF",
	"2	c #FFFFFF",
	"3	c #2242FF",
	"4	c #708090",
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
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-nongrn.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #00FF00",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-nonblu.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #0000FF",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-hash-nonred.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #FF0000",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin:    APPLE 
	#! ############################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-apple-redred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#BB2222; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-apple-redblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#1111FF; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-apple-redyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-apple-redgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#33DD33; stroke:#BE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! #############################################################
	#!
	#!
	#! #############################################################
	#! begin:    QUIT
	#!
	#! #############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-rednnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#FF1111;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#!
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-grnnnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#33FF33;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#!
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-yelnnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#FFFF00;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#!
	#! ###########################################################
	#! begin:   JUG 
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-bluxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:#44BB11;stroke:#111166;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 31,31,31,31"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-grnxorange.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:orange;stroke:green;stroke-width:21px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 31,31,31,31"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:green; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" 
	lcEmGrImg="/tmp/EmGr-img-jug-grnxred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:red; stroke:green; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:blue; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin: CHECK-X 
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:blue;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grnXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:red;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grnXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#00FF00;fill-opacity:1.3;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:#888800;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#0000FF;fill-opacity:0.8;stroke:blue;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin: Check 
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#FF1111;fill-opacity:0.8;stroke:#FF0000;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grngrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#11FF11;fill-opacity:0.8;stroke:#00FF00;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:yellow;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-blublu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:blue;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#! ############################################################
	#! begin:    RECT
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-RectRed.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:red;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectGrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:green;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectYel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:yellow;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectBlu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:blue;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	echo "### end of Image Code ############ " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	#! ############################################################
	#!
### fi	# if [ ${lcEmGrImageFlag} ] ; then 
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#! ############################################################
#! END:     Embedded Graphic Code   "EmGr" 
#! ############################################################
#!
#!
#!
#! #######################################################
#! BEGIN:     msg_DC_Msg_Windows
#! #######################################################
#! rc.z_CDW_Msg_Windows_code.sh
#! #######################################################
function Sbr_CDW_Msg_Windows_code() { # 230321-0600 marker
    n=0
}
#! ###########################################################
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
#! ###########################################################
#! window DC_NoShow /tmp/EmGr-img-jug-grnxred.svg  # ACTIVE
msg_DC_NoShow_window='
<window  
window-position="left" 
visible="true">
	<frame>
		<hbox> 
			<button> <label>""  </label> 
				<input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><height>36></height> <width>36</width>
				<action function="closewindow">msg_DC_NoShow_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_NoShow_window</variable>
</window>'	
export msg_DC_NoShow_window
#!
#! ###########################################################
#! window DC_ReStart /tmp/EmGr-img-jug-grnxred.svg # ACTIVE
msg_DC_ReStart_0_window='
<window title="msg_DC_ReStart_0_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<hbox> 
			<button> <label>"Clear the Set-Up NOW  !  "</label> 
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReStart_0_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_ReStart_0_window</variable>
</window>'	
export msg_DC_ReStart_0_window
#!
#! ###########################################################
#! window DC_ReStart /tmp/EmGr-img-EmGr-hash-grn.xpm 
msg_DC_ReStart_window='
<window title="msg_DxC_ReStart_window" 
window-position="nearmouse"
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
export gcMsgWindowReStart1="ReStart function is active now ! "
export gcMsgWindowReStart2="Click the ReStart Button again !"
#!
#! ###########################################################
#! window DC_ReBoot /tmp/EmGr-img-EmGr-hash-blu.xpm
msg_DC_ReBoot_window='
<window title="msg_DxC_ReBoot_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowReBoot1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowReBoot2}'</b> </span> " </label>
		</text>
 		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-blu.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReBoot_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_ReBoot_window</variable>
</window>'	
export msg_DC_ReBoot_window
export gcMsgWindowReBoot1="ReBoot function is active now ! "
export gcMsgWindowReBoot2="Click the ReBoot Button again ! "
#!
#! ###########################################################
#! window DC_PowerOff  //tmp/EmGr-img-EmGr-hash-red.xpm
msg_DC_PowerOff_window='
<window title="msg_DxC_PowerOff_window"  
window-position="nearmouse"  
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowPowerOff1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowPowerOff2}'</b> </span> " </label>
		</text>
		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_PowerOff_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_PowerOff_window</variable>
</window>'	
export msg_DC_PowerOff_window
export gcMsgWindowPowerOff1="The PowerOff function is active now ! "
export gcMsgWindowPowerOff2="The Click the PowerOff Button again !"
#!
#! ###########################################################
#! window DC_ProgramOff //tmp/EmGr-img-EmGr-hash-red.xpm
msg_DxC_ProgramOff_window='
<window 
title="msg_DxC_ProgramOff_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowProgramOff1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowProgramOff2}'</b> </span> " </label>
		</text>
		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DxC_ProgramOff_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DxC_ProgramOff_window</variable>
</window>'	
export msg_DxC_ProgramOff_window
export gcMsgWindowProgramOff1="ProgramOff function is active now ! "
export gcMsgWindowProgramOff2="Click the ProgramOff Button again !"
#! ###########################################################
#!
#! ###########################################################
#! END:     msg_DC_Msg_Windows
#! ###########################################################
#!
#!
#!
#! ###########################################################
#! BEGIN: SubRoutines "SBR" Code 
#! ###########################################################
#!
#! ###########################################################
function Sbr_Cbx_ReStart() {   # ACTIVE Check-Box 
n=0
	Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
    . ${gcZeroRun}      #: $ ZERO						### Not Found during terminal ? 
} # end:  Sbr_Cbx_ReStart  
export -f Sbr_Cbx_ReStart  
#! 
#! ############################################################
function Sbr_Cbx_ReBoot() {   # Active Check-Box
    n=0
	#
	if [ $1  ] ; then 
		gxmessage -name "ReBoot" -bg yellow    -center -timeout 1   
	fi
	#
 	lcFnRun="/usr/bin/wmreboot"	   # wmpoweroff wmreboot
	lcFnRun="/etc/rc.d/rc.z_WRMreboot"
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
		${lcFnRun}  && ${lcFnRun}  && exit 
    else
        n=0
        /usr/lib/gtkdialog/box_ok "ERROR" error "Sbr_Cbx_ ${lcFnRun} not found"
	fi
    exit 1  
} # end: Sbr_Cbx_ReBoot
export -f Sbr_Cbx_ReBoot
#! 
#! ############################################################
function Sbr_Cbx_ReQuit() {   # Active Check-Box
	n=0
	if [ $1 ] ; then 
		gxmessage -name "ReQuit" -bg yellow    -center -timeout 1   
	fi
 	lcFnRun="/usr/bin/wmpoweroff"    # wmpoweroff wmreboot
	lcFnRun="/etc/rc.d/rc.z_WRMpoweroff"
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
        n=0
         ${lcFnRun} && ${lcFnRun} && exit      
     else
        n=0
        /usr/lib/gtkdialog/box_ok "ERROR" error "Sbr_Cbx_ ${lcFnRun} not found"
		#! exit 1
	fi
    exit 1  
} # end:  Sbr_Cbx_ReQuit 
export -f Sbr_Cbx_ReQuit
#!
#! ############################################################
function Sbr_SDA_Only() {    # Active  if[!SDA] then restart 
	n=0
if [ ! -f "/initrd/mnt/dev_save/MARK-SDA" ] ; then 
	Sbr_Cbx_ReStart 1   ### terminate the program now ! 
fi
} # end: Sbr_SDA_Only
export -f Sbr_SDA_Only
#!
#! ############################################################
function Sbr_KillProc() { # ACTIVE # permission control # Exit if Test Mode #
	n=0 # Allows to Skip a Proc , for use if Test file is released as sample. 
lcParam=$1   # "1" will enable ReStart 
    
	n=0
lcParam=$1
if [ $gcSysKillProc -eq 1 ] ; then  # Sbr_Button_Only  "stub" 
	lcMsgStr="Kill Process "
	gxmessage -name "$lcParam" -bg "#00FF00"  -nearmouse  -timeout 1  " 
	 ${lcMsgStr}_STUB called via --- ${lcParam} ---_" 
	gxmessage -name "$lcParam" -bg "#F8F800"     -nearmouse  -timeout 1  " 
	 ${lcMsgStr}____STUB called via --- ${lcParam} ---____" 
	gxmessage -name "$lcParam" -bg "#FF0000"        -nearmouse  -timeout 3  " 
	 ${lcMsgStr}_______STUB called via --- ${lcParam} ---_______" 
	Sbr_Cbx_ReStart 1
fi
} # end: Sbr_KillProc
export -f Sbr_KillProc
#!
#! 
#! ############################################################
function Sbr_Str2DevTrm() {   #: ACTIVE
#! ## param: "char string" "# color" "# margin"
lcS2TStr=${1}   # ## STRING message 
lcS2TClr=${2}   # ## COLOR name or number
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal
lcDevConsole=""	# ## default to "T"erminal 
#!
case "${lcS2Topt}" in
   "C") lcDevConsole=" > /dev/console" ;; 
   "T") lcDevConsole="" ;; 
    *)  lcDevConsole="" ;;	#: default Geany "T"erminal mode
esac
#!
case "${lcS2TMrg}" in
   0|"0") /bin/echo -n -e "\\033[0G"    >/dev/console ;; 
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"    >/dev/console ;;
esac
#!
case "${lcS2TClr}" in   #!COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
    ""|"0")                                         /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default yellow
    "31"|"32"|"33"|"34"|"35"|"36"|"37"|"38"|"39")   /bin/echo -n -e "\\033[1;${lcS2TClr}m"   ${lcDevConsole} ;; 
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
esac
#~ case "${lcS2TClr}" in
    #~ ""|"0")      /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default to yellow
    #~ *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
#~ esac
#!
	/bin/echo -n "${lcS2TStr}"  ${lcDevConsole} 
	/bin/echo -e "\\033[0;m"  ${lcDevConsole} 
	return  0
} # end: Sbr_Str2DevTrm
export -f Sbr_Str2DevTrm
#! 
#! ############################################################
function Sbr_SetVerDts() {  #: ACTIVE in Main 
n=0    #: common "stub" so bare funxtion() will not fault during test/dev. 
	gcSysDvar=`date`
	gcSysDts="`date +%y%m%d-%H%M-%S`"   
 	lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
	gcSysDtsNow="${lcNowDts}-local"
	gcSysDtsNow="${lcNowDts}"
#
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
gcMntAllLogP="/tmp/MGR_MntAllP.log "
gcMntAllLogU="/tmp/MGR_MntAllU.log "
export gcSysDistroName="${DISTRO_NAME}"
export gcSysDistroVersion="${DISTRO_VERSION}" 
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_Db_Subname="$DISTRO_DB_SUBNAME"		
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#
} # end: Sbr_SetVerDts
export -f Sbr_SetVerDts
#!
#! ############################################################
function Sbr_ClearFlagsSystem() {   #: ACTIVE for System 
	n=0
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
#! ############################################################
function Sbr_ClearFlagsQuit() {   #: ACTIVE for QUIT
    n=0
if [ ! $1  ] ; then   # display active
#-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text "\
.
.    Clear Flags Quit !!!
.                        "&
#-----------------------------------------------------------------------
    RETVAL=$?
	GtkPidClearFlagsQuit=$!	# capture PID
	sleep 2.5
	kill ${GtkPidClearFlagsQuit} # after return
fi # end: [ $1 = "1" ]
	rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	   ###  but not E3R  CBX
	rm -f "${MGR_TouchCBXstatus}" # ## CBX applied flag must linger for GUI		# Carry-Over
	rm -f "${MGR_E3Rstatus}"	# ## E3R applied flag must linger for GUI 		# Carry-Over
	rm -f "${MGR_BackUpStatus}" # ## CBX applied  flag must linger for GUI		# Sbr_ClearFlagsQuit
    rm -f "${MGR_ReStart_flg}"  # ## MGR initial Re-ReStart to init GEANY 
	/bin/echo " " > /dev/console
} # end: Sbr_ClearFlagsQuit
export -f Sbr_ClearFlagsQuit
#!
#! ############################################################
function Sbr_Box_Message() {  #: ACTIVE   for HELP and FAQ
n=0
export TEXTDOMAIN=libstardust
export OUTPUT_CHARSET=UTF-8
if [ "$1" ] ; then
	Box_Msg_Heading="${1}"	
else
	Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
fi
export Box_MessageXML='
<window title="'CTB$Box_Msg_Heading'" 
default-height="650" 
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
gtkdialog --center -p Box_MessageXML	# assumes /tmp/box_help
} # end: Sbr_Box_Message
export -f Sbr_Box_Message
#! 
#!
#!
#!
#! ###########################################################
#! Begin: DUMPS 
#! ###########################################################
#!
#! ############################################################
function Sbr_Dump_PUP() {    #: ACTIVE
	n=0
lcMsgSrc="/etc/rc.d/PUPSTATE" # not required
lcMsgTrg="/tmp/MGR_PUPSTATE"
#
cat ${lcMsgSrc} > ${lcMsgTrg}     #: $ ZERO 
#
MCI_dts="=== MCI {NowDTS} `date +%y%m%d-%H%M-%S`"
echo "${MCI_dts}" >> ${lcMsgTrg}	#: add string to PUPSTATE Text Output
echo "=== {PUP+} MGR_Pup_Box ============================" >> ${lcMsgTrg}
sleep .1
gxmessage -name "PUPSTATE via cat + gxmesage" -bg lightyellow  -center -file "${lcMsgTrg}" -wrap
} # end: Sbr_Dump_PUP
export -f Sbr_Dump_PUP
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_HLP() {   #: ACTIVE   Dump_Help
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========"</span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcMciNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
"---"
<span foreground='"'red'"'>"${gcMciNameBase}.sh Puppy Project"</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh Puppy Project"</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh Puppy Project"</span>
"---"
<span foreground='"'green'"'>"__________________________________________"</span>
<span foreground='"'red'"'>"Special Features of ${gcMciNameBase}: "</span> <span foreground='"'green'"'></span>
<span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
<span foreground='"'blue'"'>"has Double-Click buttons ! "</span>
<span foreground='"'red'"'>" is written with BASH "</span>
<span foreground='"'red'"'>" is written with GTKdialog "</span>
"--- "
<span foreground='"'purple'"'>"${gcMciNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcMciNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"---"
<span foreground='"'red'"'>"${gcMciNameBase} is a simple menu demo ! "</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh DEMO is greatly simplified, working Demo."</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh DEMO is case/hacked from MGR.sh MANAGER"</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh DEMO restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh DEMO requires 1 second to write all 37 images"</span>
<span foreground='"'green'"'>" . . . . . . . . . . . writes all images one time, at StartUp."</span>
<span foreground='"'green'"'>" . . . . . . . . . . . to 17 KBytes in /tmp "</span>
<span foreground='"'green'"'>"${gcMciNameBase} is a menu demo ! "</span>
"--- "
... On-Screen Dumps available:
... "Help", "Faq", "Pup", "Src", "Gui", "Img", "Upl", "Dev" 
... All Dumps will run, and 'ReStart' this program. 
"---"
<span foreground='"'green'"'>"__________________________________________"</span>
<span foreground='"'purple'"'>" Running Tests on 17 OS, including: "</span>
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
"---"
<span foreground='"'blue'"'>"Authors note about ${gcMciNameBase} coding :"</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular  code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
"---"
"This project is posted on the Murga website" 
"   'MCI_v.3.2_Sample-Menu_Embedded-Graphics+Double-Click'"
"   in the utilities:"
"'https://forum.puppylinux.com/viewtopic.php?t=8908'"  
"---"
This project is posted on website:  
   www.GeoCities.WS/glene77is
under the "LINUX" button. 
"---"
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
"---"
<span foreground='"'red'"'>'"ROX Debug Method :"'</span>
Use the ROX 'Run in Terminal' to Execute a script.
<span foreground='"'red'"'>'"Geany Debug Method :"'</span>
Use the Geany Execute funxtion
   to run the script 'BASH-Terminal'
All 'echo' commands will display.
"---"
### output "MCI-HELP" temp file MUST BE "/tmp/box_help" 
### due to hard-code in "gtkdialog/box_help"
"---"
<span foreground='"'red'"'>" MCI-MGR is written with BASH current in each OS"</span>
<span foreground='"'red'"'>" MCI-MGR is written with GTKdialog "</span>
<span foreground='"'green'"'>"  gtkdialog version 0.8.4 release  2003-2007  "</span>
<span foreground='"'green'"'>"     2003-2007 Laszlo Pere, 2011-2012 Thunor  "</span>
<span foreground='"'red'"'>"  gtkdialog Button-Format-Sequence-is-critical "</span>
<span foreground='"'red'"'>"  gtkdialog Button-Format-Sequence-is-critical "</span>
"---"
<span foreground='"'purple'"'>"#! ${gcMciNameBase} uses GNU bash,  "</span>
<span foreground='"'purple'"'>"#! --- version 4.4.20 -1 -release- i686-pc-linux-gnu "</span>
<span foreground='"'purple'"'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='"'purple'"'>"#! Each OS is tested via its own original distro GTK ."</span>
"---"
<span foreground='"'purple'"'>"${gcMciNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"_${gcMciNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"___${gcMciNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>" ...  so READ the code ! "</span>
............................................................."\
> /tmp/box_help
Sbr_Box_Message "=== HELP === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end: Sbr_Dump_HLP
export -f Sbr_Dump_HLP 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_FAQ() {   #: ACTIVE Dump_FAQ
	n=0
	echo "\ 
<span background='"'brown'"'><span foreground='"'yellow'"'> "=========="</span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"      "$gcMciNameBase" FAQ    "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "==========" </span></span>
#
<span foreground='"'red'"'>Note : the actual Length
of tar-zip compression run is unknown</span>
 all depending on the ability of Tar-zip
 to apply compression techniques
 to a variety of data files.
Here, we are guessing the post-tar-zip time
 required for write to USB.
Therefore, we may run a splash
 \"Wait Some More\"
...
Our several Linux systems include
several different types of \"Hard-Media\"
: SATA-PATA-HD, USB-HD, USB-FlashDrives.
 Each Drive device has unique specs
 which must be accomodated by code.
In general,
The <span foreground='"'red'"'>'PATA-SATA HardDrives'</span>
 receives/writes data 100MBytes second,
 so it seems immediate.
The <span foreground='"'red'"'>'USB-HardDrive'</span> buffers at 12 MByte,
 and writes quickly on 1 Mbyte files. 
The <span foreground='"'red'"'>'USB-FlashDrive'</span> buffer quickly,
 at 12 MByte rate, in 1 MByte chunks,
 and then slowly transfer from buffer
 to \"burn-and-store\" the data on chip.
 USB-FlashDrives are \"EEPROM\" devices.
Note: USB flash drives work max 12MByte
 transfer rate onto the chip buffer,
 then transfer-burn to a data area
 across the available chip space.
This can work well for 1MByte jpg files,
 but work slowly on 100MByte data files.
Some USB FlashDrives maintain
 a "shake-hands" relation
 with the driving source device,
 and some USB FlashDrives do not have
 the "Ack/Nack" hand-shake with the driving source.
Some of our USB FlashDrives have
  an LED indicator of on-chip activity,
 and some of our USB FlashDrives
  have no LED indicator.
Therefore,
 we may opt to have several
 "Wait Some More" splash messages in the prg.
#
............................................................."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message' > /tmp/box_help + box_help"
} # end: Sbr_Dump_FAQ
export -f Sbr_Dump_FAQ 
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
function Sbr_Dump_Proc() {   # ACTIVE  
	#! echo "${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrgDP}
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

<span foreground='blue'>"#  3"</span> <span foreground='green'>"  = '"GTK XML Dialog "' "</span>
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
#
#! ############################################################
function Sbr_Dump_SRC() {   #: ACTIVE Dump_SRC
	n=0
#!
#! ############################################################
lcFileXmessage="/usr/bin/xmessage"
lcFileGXmessage="/usr/bin/gxmessage"
    #!
lcMsgStr="===  Sbr_Dump_SRC gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
    sleep .1
    #!
lcMsgSrc="${0}"	# "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"  
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg} 
echo "# running fx(Sbr_Dump_SRC)" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# MCI Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MCI ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`" >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}  
#!
cat ${0} >> ${lcMsgTrg}     ### /tmp/box_help ###
echo "####### End of Source Code ######" >> ${lcMsgTrg} 
sleep 1
#!
gxmessage -title "SRC"  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_SRC
export -f Sbr_Dump_SRC 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_GUI() {   #: ACTIVE Dump_GUI
	n=0
lcFileGXmessage="/usr/bin/gxmessage"  # not required
   #!
lcMsgStr="===  Sbr_Dump_GUI gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
    #!
lcMasterTrgExt="GUI.txt"
lcEmGrImgFnTrg="${gcMGrMasterSubDir}${lcMasterTrgExt}"
lcMsgSrc="${lcEmGrImgFnTrg}"
lcMsgTrg="/tmp/box_help"
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line  
echo "# running fx(Sbr_Dump_GUI)" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# MCI Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MCI ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# "  >> ${lcMsgTrg}  
cat ${lcMsgSrc} >> ${lcMsgTrg}     ### /tmp/box_help ###
gxmessage -title "GUI"  -name "-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_GUI
export -f Sbr_Dump_GUI 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_IMG() {   #: ACTIVE Dump_IMG
	n=0
lcFileXmessage="/usr/bin/xmessage"   # not required
lcFileGXmessage="/usr/bin/gxmessage"  # not required
    #
lcMsgStr="===  Sbr_Dump_IMG gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
lcMsgSrc="/tmp/EmGr-Master-IMG.txt"	
lcMsgTrg="/tmp/box_help"  
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "${gcSysDistroName} = textfile > cat + gxmessage" >> ${lcMsgTrg}    # preset First Line  
echo "# running fx(Sbr_Dump_IMG) showing IMAGE code" >> ${lcMsgTrg} 
echo "#============================" >> ${lcMsgTrg}	
echo "# EmGr-Image-all ===${lcMsgSrc}===" >> ${lcMsgTrg}	
echo "# total 37 images: 17 KBytes " >> ${lcMsgTrg}	
echo "# total load time: 1 second" >> ${lcMsgTrg}	
echo "#============================" >> ${lcMsgTrg}	
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "### Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "### Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`"      >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# "  >> ${lcMsgTrg}  
cat /tmp/EmGr-Master-IMG.txt >> ${lcMsgTrg} 	### Build "/tmp/box_help" Documentation file
gxmessage -title "IMG"  -name "-IMG-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_IMG
export -f Sbr_Dump_IMG 
#! ############################################################
#!
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
#!
/usr/lib/gtkdialog/box_ok "=== Dev === Legal === Message box_ok" error "
.
${lcStrUpPop}  
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #!
	kill ${GTKPIDMAIN0}
    #!    
} # end: Sbr_Dump_UPL
export -f Sbr_Dump_UPL 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_Dev() {   #: ACTIVE
	n=0
lcStrUpPop="fx(Sbr_Dump_Dev)
Dev Notes and test var  .  .  .  .  .  .  .  .  .  .  .  .  .
SysDevDob = ${gcSysDevDob}
DevId = ${gcMciDevId}	
SysDistroPuppySFS=${gcSysDistroPuppySFS}
PupSfsFile=${gcPupSfsFile}			
DistroVer=${gcMGRDistroVer}		
KernVer=${gcMGRKernVer}
  "
/usr/lib/gtkdialog/box_ok "=== Dev Notes and Var === Message box_ok" error "
.
${lcStrUpPop}    
.                "
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # end: Sbr_Dump_Dev
export -f Sbr_Dump_Dev 
#! ###########################################################
#!
#!
#! ###########################################################
#! BEGIN: SubRoutines General 
#! ###########################################################
#!
#! ###########################################################
function MGR_TouchLockFile() {   #: NOT USED
	n=0
} #
#!
#! ############################################################
function MGR_TouchCBXstatus() {   #: NOT USED
	n=0
} #
#! 
#! ############################################################
function MGR_TouchE3Rstatus() {   #: NOT USED
	n=0
} #
#! 
#! ############################################################
function MGR_Sync() {   #: ACTIVE
/bin/echo -en "\\033[0;39m"		>  /dev/console
/bin/echo -en "\\033[60G"    >/dev/console 
/bin/echo -en "\\033[1;33m"    >/dev/console 
/bin/echo -e  "\\033[0;39m"   >/dev/console 
if [ ! $1  ] ; then   # display
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.                                   
.    < SYNC >  flush buffers        
.                            "&
	GTKPIDSYNC1=$!
    sleep .5 
	kill ${GTKPIDSYNC1}
fi # end: [ $1 = "1" ]
	sync   	# # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'		 
} # end: MGR_Sync
export -f MGR_Sync 
#! 
#! ############################################################
function MGR_SnapMergePuppy() {   #: ACTIVE
	n=0
llRun01=1
llRun02=0
llRun03=0
llRun04=0
lcRunTime01="19"
lcRunTime02="18"
lcRunTime03="17"
lcRunTime04="16"
lcRunNum="${lcRunTime01}"
#! write "C"syntax here for looping
#! for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax
#! do 
#! done # end: for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax
if [ ! $1 ] ; then   # display
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.
.       ...Save-2-Flash...Standard... NOT REQUIRED
.             nice -n ${lcRunNum} snapmergepuppy
.                                                                        "&
    RETVAL=$?
	GTKPIDSMP=$!
    sleep .5
	kill ${GTKPIDSMP}
fi # end: [ ! $1 ] 
#!
	#~ Sbr_Cold_Splash "===SnapMergePuppy===!" 
#!    
nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
#! lcRunNum="${lcRunTime02}"
#!
} # end: MGR_SnapMergePuppy
export -f MGR_SnapMergePuppy
#! 
#! ############################################################
function Sys_PupState() {   #: ACTIVE
	n=0
    lcVerDtsTmp="${gcMGRDob}"
	#!
		if [ $PUPMODE -eq 2 ] ; then
			lcMsgStr="
		PUPMODE is 2 
		MGR requires 'Frugal Install' 
		PUPMODE must be '13'           "
			xmessage -timeout 3 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
			exit
		else
			lcMsgStr="PUPMODE=${PUPMODE}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
		fi
	#!
    export gcMGRDob="${lcVerDtsTmp}"
	#!
	export gcSysDistroLoc="${PDEV1}"	### from PUPSTATE, from rc.sysinit. 
	export gcZeroRun="$0"
	#! note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then 
	echo "BK ==============================================="  
	lcSaveBkFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameMount = ${lcSaveFileNameMount}"
	lcSaveBkFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameBaseSrc = ${lcSaveFileNameBaseSrc}"
	echo "BK ==============================================="  
	#!
	#note  fi 
	#!
    export gcSysDistroVer="${PUPSFS}"	
    export gcSysKernVer=${gcSysKernVer}
	export gcSysVer="${PUPSFS}"	#: ${gcSysDistroVer}
	export gcPupSfsFile="`echo "$PUPSFS" | cut -f 3 -d ','`" 
    export gcMGRDistroVer="${PUPSFS}"
    export gcMGRKernVer="`uname -r`"	 
	export gcMGRname="Menu-Clicks-Images"
    export lcPupMode=${PUPMODE}
    export lcPupHome=${PUP_HOME}  
    export lcPupSave=${PUPSAVE}   
    export lcPupMode=${PUPMODE}   
	export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"	
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
    echo "--- saveDATA size calc"
	aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
	read -r b ccc <<< "$aa"
    lcMsgStr="saveData: ${ccc}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupRamObj="${b}"
    lcPupRamObjMsg="# DATA size > ${lcPupRamObj} MB "
    lcMsgStr="$lcPupRamObjMsg" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"	
	### changed from leading grave [`] to enclosing double-apostrophe ["]
	FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '" 
	export gcFreeRamNow="${FREERAM}"
	export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
	export gcPupSave="${PUPSAVE}"
    lcPupDts="`date +%y%m%d-%H%M-%S`"   # not used
    lcMGRverdts="${gcMGRDob}"
    lcSleep="sleep 1"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"   
	export MGR_E3Rstatus="/tmp/MGR_E3R_Status"   
	export MGR_LockFile="/tmp/MGR_LockFile"      
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"   
	export gcPupSave="${PUPSAVE}"						
	export MGR_ReStart_flg="/tmp/MGR_ReStart.flg"
} # end: Sys_PupState
export -f Sys_PupState
#!
#! ###########################################################
function Run_Special() {   #: NOT Active
		n=0
} #
#! 
#! ######################################################################
function MGR_GTK() {   #: NOT USED
		n=0
} #
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
#(: ======================================================
#(: fx(MCI_Main) 
#(: called by:
#(: param:
#(: purpose:
#(: calls:
#(: method:
#(: sends:
#(: rationale:
#(: note :
#(:
#=== MAIN()====================================================
#!
#!

	#~ Sbr_Cold_Splash "=== ${gcMciDevId} ==="           # Header
	#~ echo

#~ lcMsgStr="Begin: MGR : Main () : TERMINAL Mode :"
#!
#~ Sbr_ShowSplash "Main()" "red" "black" "3"    # text # fg # bg # kill ${GTKPIDShowSplash}
#~ sleep 3
#~ kill ${GTKPIDShowSplash}
#~ read
#~ exit


	Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
	#!
    Sbr_SetVerDts
    lcMsgStr="Ver Dts :${gcSysDts}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Now-Dts :${gcSysDtsNow}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Var date :${gcSysDvar}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	#!
echo " "
echo " "
echo " "
#!
## ARB_init  : config controls  menulst   menu.lst   main run ( ) 
## purpose: 
##    (1) read existing config for "Idd", 
##    (2) install generic "full enough" "SHORT" menu.lst 
##         with default "0,1,2,3,4" matching config "Idd" 
	n=0
    lcMsgStr=">>> Sys_PupState >>>" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    Sys_PupState   ### Gather the "state" variables from OS
    lcMsgStr="<<< Sys_PupState <<<" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	lcMsgStr=">>> before Check :[ -f ${MGR_LockFile} ]:" && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	if [ -f ${MGR_LockFile} ]; then      #: this is Main () lockfile
		#!
		lcMsgStr=" Error: Soft LockFile Control
  		  ... MGR_Running_Already !!!
  		  ... MGR_Non-Fatal Error !!!
	  	  ... (1) Quit MGR program
		  ... (2) Clear Running MGR window
		  ... (3) Re-Start MGR program 
		  MGR program will continue (Soft Lock)"
		xmessage -timeout 1 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
		#!	
		lcMsgStr=" = FOUND :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	else
		lcMsgStr=" =  Not Found  :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	fi
#!
lcMsgStr="<<< after Check :[ -f ${MGR_LockFile} ]:" && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr=">>> before touch :${RETVAL}: :${MGR_LockFile}:" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
#! 
touch "${MGR_LockFile}" 
lcMsgStr="<<< after touch :${RETVAL}: :${MGR_LockFile}:" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
#!
#! ##^^^ GUI ^^^^^^^ Begin: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#!
#------------------------------------------------------------------------
lcSleep=.3
#~ /usr/lib/gtkdialog/box_splash -fg orange -bg black -border true  -close never -text "\
#~ .     MCI Start-Up  " &  RETVAL=$?  &&  GtkPid_Sbr_Box_Splash=$!  &&  sleep 1  && kill ${GtkPid_Sbr_Box_Splash} 
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
#!
#! ====================================================================
#!
if [ lcSetCtrl ] ; then
    n=0    
fi
#! begin: ReStart so GEANY is initialized proper. 
if [ ! -f ${MGR_ReStart_flg} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
    lcMsgStr=" touch RunFlg." 
	Sbr_Splash_It "${lcMsgStr}"  "orange" "blue" "1" 
    touch ${MGR_ReStart_flg}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
    # ReStart special 
else
    lcMsgStr="= = = Main () Running = = ="	    # && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
	Sbr_Splash_It "${lcMsgStr}"  "orange" "blue" "1" 
    lcMsgStr="BUILD_FROM_WOOF>>>=== ${BUILD_FROM_WOOF} ===<<<"
	#~ Sbr_Splash_It "${lcMsgStr}"  "orange" "blue" "3" 
	/bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m" 
    sleep .3
#!
fi # end: ReStart so GEANY is initialized proper. 
#~ #! begin: ReStart so GEANY is initialized proper. 
#~ if [ ! -f ${MGR_ReStart_flg} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
	#~ Sbr_Cold_Splash "=== Touch + ${gcMciDevId} ==="           # Header
    #~ # If not file, then touch one. 
    #~ touch ${MGR_ReStart_flg}  # make one, so gui lcGuiFrameTitle can test .
    #~ Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
    #~ # ReStart special 
#~ else
    #~ lcMsgStr="= = = Start-OK = = =" && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    #~ lcMsgStr="BUILD_FROM_WOOF>>>=== ${BUILD_FROM_WOOF} ===<<<"
	#~ /bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m" 
    #~ sleep .3
#~ #!
#~ fi # end: ReStart so GEANY is initialized proper. 
export lcBSS_TrgSubDir="TrgSubDir"			# File Select
export gcPBKP_BACKUP_PATH="BACKUP_PATH"		# File Select
#!
export gcGtk_Bash_msg="GTK functions are combined with bash commands inside a bash script"


#! ## MAINGUI # Begin ### MCI ############################################
#!
export lcGuiWindowTitle=":.${gcMciDevId}.:.${gcSysDistroLoc}.:.${gcPupSubDir}.:.${gcSysDevDob}.:" 
export lcGuiFrameTitle=":_${gcMciDevId}_:_${gcMciDevID}_:_${gcSysDistroLoc}_:_${gcSysSave}_:_${gcSysDevDob}_:_${gcSysDevHw}_:"   
#!:
export MGR_Master_GUI='
<window  
	title="'${lcGuiWindowTitle}'" 
	height-request="830" 
	space-expand="false" 
	border="true" 
	border-width="5" 
	resizable="true" >  
<vbox>
	<vseparator height-request="3" > </vseparator>
	<vbox>

      <button   tooltip-text="Frame-Title Manager+ReStart 
       This is LINUX, 
       this is FOSS, 
       so READ the code !" 
 has-focus="false"  xalign=".5" >
        <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>50</width><height>50</height>
        <label>'${lcGuiFrameTitle}'</label> 
		<action>'EXIT:guiTop-ReStart'</action> </button>
</vbox>
	<vseparator height-request="1"> </vseparator>

    <text visible="1" editable="false" use-markup="true" xalign=".5"> <label> 
    "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"M.C.I..Project."'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
    </label> </text>
 
<hbox>
	<button tooltip-text="'Margin-C3'" has-focus="false" width-request="7" xalign=".5"  >
            <label> "" </label> <action>lxDummy:mC3</action> </button>
   	<button visible="false" has-focus="false" width-request="5" tooltip-text="Margin-C1" >
		<label>""</label><input file icon="gtk-select-color" ></input><action>lcDummy:mC1</action></button>
    <vbox>
	<vseparator height-request="3"> </vseparator>
        <button has-focus="false" height-request="30"  xalign=".5"  tooltip-text="C3-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "''" </label><action>lxDummy:C3</action></button>
        <text editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorblu'"'> <b>'{-Internal-}'</b> </span>"	</label> </text>
        <button     tooltip-text="'EXIT:guiDumpHLP'  <HELP dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>33</width><height>33</height>
			<label>"  'HELP'    " </label>
 			<action>'EXIT:guiDumpHLP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpPUP'  <Pup-State dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>25</width><height>25</height>
			<label> "  'PupState'    " </label>
 			<action>'EXIT:guiDumpPUP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpFAQ'  <FAQ dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Faq'    " </label>
			<action>'EXIT:guiDumpFAQ'</action> </button>
        <button  tooltip-text="'EXIT:guiDumpProc'  <Process_dump>"  height-request="29" has-focus="false">
            <input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>21</width><height>21</height>
            <label> "'Dump:Process_Description'  " </label>
            <action>'EXIT:guiDumpProc'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpSRC'  <Source Code Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-All-Source-Code'    " </label>
 			<action>'EXIT:guiDumpSRC'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpGUI'  <XML GUI Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-XML_GUI-Code'    " </label>
 			<action>'EXIT:guiDumpGUI'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpIMG'  <XML GUI Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-svg-xpm_IMG-Code'    " </label>
 			<action>'EXIT:guiDumpIMG'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpUPL'  < Phil PeaBee : UpPopLegal_Flg >"  height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
			<label> "  'UPLegal'    " </label>
 			<action>'EXIT:guiDumpUPL'</action> </button>
       <button     tooltip-text="'EXIT:guiDumpDev'  < Display Devloper Var >"  height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
			<label> "  'Developer'  " </label>
 			<action>'EXIT:guiDumpDev'</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:0</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:0</action> </button>
 
        <text  visible="1" editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorred'"'> <b>':${lcPupRamObjMsg}:'</b> </span>" </label></text>
        <text  visible="1" editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorgrn'"'> <b>':Sys_${DISTRO_NAME}:'</b> </span>" </label> </text>
        <text  visible="1" editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorblu'"'> <b>':Kern_${gcMGRKernVer}:'</b> </span>" </label> </text>
        <text  visible="1" editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorbrn'"'> <b>':${gcGtk_Bash_msg}:'</b> </span>" </label> </text>


           <button visible="1"  
                has-focus="false" 
                height-request="12"  xalign=".5"  
                tooltip-text="C1a- button example 1 of 3 preferred , flexible <button=size> <image=size>">
                <label> " " </label> 
                <input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>lxAction:C2a</action></button>

            <button visible="1"  height-request="12"  xalign=".5"
                tooltip-text="C1b- button example 2 of 3, <button=size>, <image=size>" 
                >
                <label>" "</label>
                <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>26</width><height>26</height>   
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>lxAction:C2b</action>
            </button>

          <button visible="1"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1c-/tmp/EmGr-img-apple-redblu.svg" >
                <label> " " </label> <input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>lxAction:C2c</action></button>

           <button visible="1"  has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C1d" >
                <label> " " </label><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <action function="'launch'">msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
                <action>lxAction:C2d</action></button>

        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
	    <button label="'-------'"  tooltip-text="* Bottom-C3 *"
            has-focus="false" height-request="7" width-request="35" space-expand="false" 
            tooltip-text="Bottom-C3" > <action>lxDummy:Bottom-C3</action> </button>
    </vbox>
	<button tooltip-text="'Margin-C4'" has-focus="false" width-request="7" xalign=".5"  >
		<label> "" </label> <action>lxDummy:mC4</action> </button>
<vbox>
<hbox>
	<hseparator width-request="10"></hseparator>
</hbox>
<vbox>
	<button tooltip-text="'Embedded-Image-Project'" has-focus="false" height-request="37" width-request="37" xalign=".5"  >
	<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width> "35" </width> <height> "35" </height>	
	<label> "===-Embeded-Image-Project-===" </label> <action>lxDummy:mC4</action> </button>
	<hbox>
 		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'red'"'><b>{'+Menu=button+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'green'"'><b>{'+Double-Click+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'blue'"'><b>{'+Embedded-Image+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'purple'"'><b>{'button_with_Alert-Msg-'}</b></span>" </label>
		</text>
	</hbox>
</vbox>
<vbox>
 		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'red'"'><b>{'+Menu=button+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'green'"'><b>{'+Double-Click+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'blue'"'><b>{'+Embedded-Image+'}</b></span>" </label>
		</text>
</vbox>

	<vseparator height-request="12" > </vseparator>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'green'"'><b>{'Double-Click_Button__and__Alert-Msg-'}</b></span>" </label>
		</text>

<hbox homogeneous="true">
		<button tooltip-text="_guiS2F-ReStart_">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '{:DC:}_ReStart_' </label>
			<action function="'launch'"     >msg_DC_ReStart_window</action>
            <action function="'closewindow'">msg_DC_ReStart_window</action>
			<action>'EXIT:guiS2F-ReStart'</action>	</button>
		<button tooltip-text="_guiS2F-ReBoot_">
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '{:DC:}_ReBoot_' </label>
			<action function="'launch'"     >msg_DC_ReBoot_window</action>
            <action function="'closewindow'">msg_DC_ReBoot_window</action>
			<action>'EXIT:guiS2F-ReBoot'</action> </button>
		<button tooltip-text="_guiS2F-PowerOff_">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
			<label> '{:DC:}_PowerOff_' </label>
			<action function="'launch'"     >msg_DC_PowerOff_window</action>
            <action function="'closewindow'">msg_DC_PowerOff_window</action>
			<action>'EXIT:guiS2F-PowerOff'</action> </button>
</hbox>

	<vseparator height-request="12" > </vseparator>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'red'"'><b>{'Double-Click_Button__and__Alert-Icon-'}</b></span>" </label>
		</text>

<hbox homogeneous="true">
		<button tooltip-text="_guiS2F-ReStart_">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label>'{:QCK:}_ReStart_' </label>
			<action function="'launch'"     >msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
			<action>'EXIT:guiS2F-ReStart'</action>	</button>
		<button tooltip-text="_guiS2F-ReBoot_">
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label>'{:QCK:}_ReBoot_' </label>
			<action function="'launch'"     >msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
			<action>'EXIT:guiS2F-ReBoot'</action> </button>
		<button tooltip-text="_guiS2F-PowerOff_">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
			<label>'{:QCK:}_PowerOff_' </label>
			<action function="'launch'"     >msg_DC_Quick_window</action><action function="'closewindow'">msg_DC_Quick_window</action>
			<action>'EXIT:guiS2F-PowerOff'</action> </button>
</hbox>
	<vseparator height-request="12" > </vseparator>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'purple'"'><b>{'Single-Click_Button__NO_Alert-Msg-'}</b></span>" </label>
		</text>
<hbox homogeneous="true">
 
		<button tooltip-text="_Save-ReStart_">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '_ReStart_!' </label>
			<action>'EXIT:guiS2F-ReStart'</action>	</button>
		<button tooltip-text="_Save-ReBoot_">
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '_ReBoot_!' </label>
			<action>'EXIT:guiS2F-ReBoot'</action> </button>
		<button tooltip-text="_Save-PowerOff_">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
			<label> '_PowerOff_!' </label>
			<action>'EXIT:guiS2F-PowerOff'</action> </button>
</hbox>
		<vseparator height-request="5"></vseparator>
        <button tooltip-text="'-Before-Quit-'" has-focus="false" > 
			<width>7</width> <height>7</height>        
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input> 
			<action>lxDummy:Before</action> </button>
        <button   tooltip-text="Double-Click-Warning-Program_Quit_" >
			<input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>44</width>  <height>44</height>
			<label>'{:DC:}_QUIT-Program_'</label> 
				<action function="'launch'"     >msg_DxC_ProgramOff_window</action>
				<action function="'closewindow'">msg_DxC_ProgramOff_window</action> 
 			<action>'EXIT:guiMainQUIT'</action>
		</button>
       <button tooltip-text="'-After-Quit-'" has-focus="false" > 
			<width>7</width> <height>7</height>        
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input> 
			<action>lxDummy:After</action> </button>
		<vseparator height-request="5"></vseparator>
<vbox>
	<button tooltip-text="'Embeded-Images'" has-focus="false" width-request="7" xalign=".5"  >
		<input file icon="gtk-select-color" ></input><width>5</width><height>5</height>
		<label> "Embeded-Images" </label> <action>lxDummy:mC4</action> </button>
</vbox> 
<hbox>
        <button label="Embedded" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
        <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:01'"</action> </button>
        <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:02'"</action> </button>
        <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:03'"</action> </button>
        <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:04'"</action> </button>
        <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:05'"</action> </button>
        <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:06'"</action> </button>
        <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:07'"</action> </button>
        <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:08'"</action> </button>
        <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:09'"</action> </button>
        <button     tooltip-text="'Check-blublu'" ><input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:10'"</action> </button>
        <button     tooltip-text="'RectRed'" ><input file>"'/tmp/EmGr-img-RectRed.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:11'"</action> </button>
        <button     tooltip-text="'RectYel'" ><input file>"'/tmp/EmGr-img-RectYel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:12'"</action> </button>
        <button     tooltip-text="'RectBlu'" ><input file>"'/tmp/EmGr-img-RectBlu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:13'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
		<hseparator width-request="124"></hseparator>
</hbox>
<hbox>
       <button label="Images" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
        <button     tooltip-text="'jug-bluxyel'" ><input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:14'"</action> </button>
        <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:15'"</action> </button>
        <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:16'"</action> </button>
        <button     tooltip-text="'jug-redxgrn'" ><input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:17'"</action> </button>
        <button     tooltip-text="'jug-grnxred'" ><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:18'"</action> </button>
        <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:19'"</action> </button>
        <button     tooltip-text="'jug-redxblu'" ><input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:20'"</action> </button>
        <button     tooltip-text="'Quit_apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:21'"</action> </button>
        <button     tooltip-text="'Quit_apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:22'"</action> </button>
        <button     tooltip-text="'Quit_apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:23'"</action> </button>
        <button     tooltip-text="'Quit_apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:24'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
		<hseparator width-request="124"></hseparator>
</hbox>
   </vbox>

	<button tooltip-text="'Margin-C3'" has-focus="false" width-request="7" xalign=".5"  >
            <label> "" </label> <action>lxDummy:mC3</action> </button>
   </hbox>
</vbox>

</window>'
#!
echo "${MGR_Master_GUI}" > /tmp/EmGr-Master-GUI.txt  ### build Documentation file
echo "### end of Graphical User Interface Code ############ " >> /tmp/EmGr-Master-GUI.txt   # title for "Dump" to screen
#! ## end mainGUI end  # ###################################################
eval "`gtkdialog --center -p MGR_Master_GUI`" 
#!
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------  Main Gui   --- ${EXIT} ----------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
#!
#! ######################################################################
#! function [EXIT:guiDumpPUP]  
if [ "$EXIT" = "guiDumpPUP" ] ; then
    echo "--- Dump/Display Pup Source Code ---"
    n=0
    Sbr_Dump_PUP	# MGR_Pup_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#! ######################################################################
#! function [EXIT:guiDumpHLP] 
if [ "$EXIT" = "guiDumpHLP" ] ; then
    echo "--- HELP --- Sbr_Dump_HLP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!
#! ######################################################################
#! function [EXIT:guiDumpFAQ]
if [ "$EXIT" = "guiDumpFAQ" ] ; then
    echo "--- FAQ --- Sbr_Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ	# MGR_Faq_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#! =========================================================
#! function [EXIT:guiDumpProc]
if [ "$EXIT" = "guiDumpProc" ] ; then   #  Dump Proc  ACTIVE
    echo "--- Dump/Display Program Process ---"
    n=0
    Sbr_Dump_Proc	# MGR_Proc_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#! ######################################################################
#! function [EXIT:guiDumpSRC]
if [ "$EXIT" = "guiDumpSRC" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_SRC ---${gcSysDistroName} ---"
    Sbr_Dump_SRC	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSRC
#!
#! ######################################################################
#! function [EXIT:guiDumpGUI]
if [ "$EXIT" = "guiDumpGUI" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_GUI ---${gcSysDistroName} ---"
    Sbr_Dump_GUI	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#! ######################################################################
#! function [EXIT:guiDumpIMG]
if [ "$EXIT" = "guiDumpIMG" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_IMG ---${gcSysDistroName} ---"
    Sbr_Dump_IMG
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#! ######################################################################
#! function [EXIT:guiDumpUPL]
if [ "$EXIT" = "guiDumpUPL" ] ; then
    n=0
    lcMsgStr="--- UPopLegal --- Sbr_Dump_UPL --- ${gcSysDistroName} ---"
	Sbr_Dump_UPL	# MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDump_UPL
#!
#! ######################################################################
#! function [EXIT:guiDumpDev]
if [ "$EXIT" = "guiDumpDev" ] ; then
    n=0
    lcMsgStr="--- Dev Notes --- ${gcSysDistroName} ---"
	Sbr_Dump_Dev
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDev
#!
#! ###########################################################
#! begin: #4 Column   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###########################################################
#!
#! ######################################################################
#! function [EXIT:guiTop-ReStart]	 
if [ "$EXIT" = "guiTop-ReStart" ] ; then
    n=0
	#~ Sbr_Cold_Splash "Re-Start MGR" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # end: EXIT:guiTop-ReStart
#! ######################################################################
#! function [EXIT:guiS2F-ReStart]
if [ "$EXIT" = "guiS2F-ReStart" ] ; then
    n=0
	#~ Sbr_Cold_Splash "Re-Start MGR" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # 
#!
#! ######################################################################
#! function [EXIT:guiS2F-ReBoot]
if [ "$EXIT" = "guiS2F-ReBoot" ];then
    n=0
	#
	#~ Sbr_Cold_Splash "Warm ReBoot" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	Sbr_Cbx_ReBoot 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails. 
    exit 0
fi
#!
#! ######################################################################
#! function [EXIT:guiS2F-PowerOff]
if [ "$EXIT" = "guiS2F-PowerOff" ] ; then
	#
    n=0
	#
	#~ Sbr_Cold_Splash "Power-Off  via  WrmPowerOff" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that WrmPowerOff can run.
	#
    Sbr_Cbx_ReQuit 1   # EXIT:guiS2F-PowerOff
	#
    EXIT=""	### force "Fall Thru" in case "exit 0" fails. 
	### "exit 0' should terminate this program. 
    exit 0
fi # # end: ft(EXIT:guiS2F-PowerOff)
#!
#! #######################################################################
#! begin: #4 Column  Main Quit 
#! #######################################################################
#!
#! ###########################################################
#! function [EXIT:guiMainQUIT]   # ACTIVE
if [ "$EXIT" = "guiMainQUIT" ]  ; then
	n=0
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="[ "$EXIT" = "guiMainQUIT+" ]" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="---${gcSysDevDob}---" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
	Sbr_ClearFlagsSystem 0   ### no display
    Sbr_ClearFlagsQuit  "0"    ### no display
			#! list of flags to kill:
			#! rm -f "${MGR_TouchCBXstatus}" 
			#! rm -f "${MGR_E3Rstatus}"	
			#! rm -f "${MGR_BackUpStatus}" 
			#! rm -f "${MGR_LockFile}" 
			#! rm -f "${MGR_ReStart_flg}"
	lcMsgStr=" " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="... MGR : ReadMe info ! ... " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    echo
    lcMsgStr=">>>  Hit 'Enter' to clear Terminal <<< "
    Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "7"
    Sbr_Str2DevTrm "$lcMsgStr" "6" "7"
    echo
    lcMsgStr="       <<< Quit >>>" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
    exit 0
fi # end: Now, Fall Out. 
#!
#!
#! ###################################################################################
#! begin: Bottom of MGR Fall-Thru code
#! ;;;  MGR_Fall_Thru_Trap  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###################################################################################
#!
#!
#! ###########################################################
#! function ft(EXIT='')   # ACTIVE
lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5" 
	Sbr_ClearFlagsSystem  0   ### no display
    Sbr_ClearFlagsQuit   0   ### no display
    echo "FALL-THRU has final standard 'exit 0'"
	echo "... Will Pop the Stack if Layered ..." 
    exit 0
#! ### end:   "EXIT:QUIT" "EXIT:QUIT+"
#! ###################################################################################
#! end: Bottom of MCI Fall-Thru code
#! ###################################################################################
    #! <text visible="1" editable="false" use-markup="true" xalign=".5"> <label> 
    #! "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"M.C.I."'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
    #! </label> </text>
#! ##############################################################################
#! rc.z_TXN_EXE.sh will cull most notes. 
#! ##############################################################################

#! MCI TXN generated 
### MCI TXN generated 
#! rc.z_MCI , Menu, Click, Image
#! "cased+cloned-and-hacked" by gae,  GlenEllis from rc.z_MGR.sh 
#!
#! "rc.z_MCI.sh" name format so GEANY sees a 'script' executable.
#! chmod +x rc.z_MCI.sh might be required for export files.
#! "cased+cloned-and-hacked" by gae. 
#!
#! Each OS is tested via its own original distro BASH / GTK  code verson. 
#!
	#! Running Tests on:
    #!~ Running Tests on 17 OS, including: 
    #!~ iso-KineticPup32-22.10+2_______________________230604
    #!~ iso-BionicPup32-8.0+30_BionicBeaver_____Kern:4_220407
    #!~ iso_BionicPup32-19.03-K5.9_BionicBeaver_Kern:5_231209
    #!~ iso_ManticPup32-23.10+1.iso____________________231209
    #!~ iso-JammyPup32-22.04+8_JammyJellyfish__22123
    #!~ iso-UPupFF+D-20.12+4_Focal-Fossa_______201210
    #!~ iso-UpupTahr-6.0.6-k4.1.30-uefi________190211
    #!~ iso-Slacko-7.0_DpupS7_14.2_____________220205
    #!~ iso-Xenial-64_7.5_XL___________________220401
    #!~ iso-S15Pup-64_22.12+1-T________________220922
    #!~ iso-Quirky_April-7.0.1F-uefi___________200511
    #!~ iso_devuanpup-9.7.0-chimaera_4.0_i386__211206
    #!~ iso_BookwormPup32-23.11-B4_____________231210
    #!~ iso_LxPupSc-slacko-20.01+0-T-k64_______200129
    #!~ iso_slacko64_14.2_32-674-bit_comptible_220227
    #!~ iso_ManticPup32-23.10+1.iso____________231209
#!
#!
export gcSysDevDob="231219-0850"	
#!
export gcMciDevId="MCI-v.3.3"	
export gcMciDevID="Menu.EmGr.DblClk.MnxGen"
export gcSysNameMode="general simple DEMO !"
export gcMciNameBase="MCI"
#!
export gcSysDevHw="AMD-500_32bit"
#!
export gcBootOsHd="SDA"
#!
export gcMGrMasterSubDir="/tmp/EmGr-Master-"
#!export gcMGrMasterSubDir="/root/myapplications/bin-"
#!
#!### gcSysKillProc #####################
export gcSysKillProc=0	### used by Sbr_KillProc
#! if [ ${gcSysKillProc} -eq 0 ] then do "enable" all GTK gui <button> process
#! if [ ${gcSysKillProc} -eq 1 ] then do "stub" for GTK gui <button> process
#!### gcSysKillProc #####################
#!
PATH=$PATH:/usr/lib/gtkdialog:/root/my-applications/bin 
. /etc/rc.d/PUPSTATE    # gather basic "state" of Puppy "system" 
. /etc/DISTRO_SPECS    # gather basic Distro data
export gcBUILD_FROM_WOOF="${BUILD_FROM_WOOF}"	### 'testing;ef1162a38;2022-11-13 19:08:17 +0200'
uname -a > /BitSize.txt
export gcBitSize="$(cat /BitSize.txt)"
#!
#! clear previous "set"
    set +x
    set +e
#!
#! ##################################################################
#! TXN.sh will cull most notes. 
#! ##################################################################
#!
#!
#! ###########################################
#! these "terms" can be searched for a group: 
#! -------------------------------------------
#! function
#! Sbr
#! Sys
#! if [ $EXIT
#! {:DC:}
#! ###########################################
#!
#!
	#! Running Tests on:
	#! iso-KineticPup32-22.10+2_230604
	#! iso-UpupBionic32-8.0+30_(BionicBeaver)_220407-2305
	#! iso-UpupJammy32-22.04+8_(Jammy Jellyfish)_22123-0700
	#! iso-UPupFF+D-20.12+4_(Focal-Fossa)_210410
	#! iso-UpupTahr-6.0.6-k4.1.30-uefi-190211-0
	#! iso-UpupXenial64_7.5_XL-220401 
	#! iso-UpupXenial-7.0.8-uefi-171013
	#! iso-UpupImpishPup32-21.10+5-220226
	#! iso-Slacko-LxSc-20.01_
	#! iso-S15Pup64-22.12+1-T_220922
	#! iso-Slacko-7.0_DpupS7_14.2_(Slacko7)_220205
	#! iso-Slacko64_14.2_32-64-bit_compatible_iso-220227
	#! iso-Quirky-7-April_
#! 
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#! note:  
#! if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then 
#! see pup_event_backend_modprobe
#
#
#! ###########################################################
#! BEGIN:     Embedded_Dialog_Color 
#! rc.z_CDW_Embedded_Dialog_Colors.sh
#! ###########################################################
function Sbr_CDW_Embedded_Dialog_Colors() { # 230321-0600 marker
    n=0
}
export -f Sbr_CDW_Embedded_Dialog_Colors
#!
#! BEGIN:     Embedded_Dialog_Colors
    #~ lcDialogColorOrig="  -fg yellow -bg darkred  "	# original
    #~ lcDialogFgDrkRed=" -fg darkred "	
    #~ lcDialogFgYel=" -fg yellow "	
    #~ lcDialogFgBlk=" -fg black "	
    #~ lcDialogBgDrkRed=" -fg darkred "	
    #~ lcDialogBgBlu=" -bg blue "	
    #~ lcDialogBgGrn=" -bg green "
    #~ lcDialogBgYel=" -bg yellow "
    #~ lcDialogBgBlk=" -fg black "	
#!
#!
export lcGuiColorbrn="brown"
export lcGuiColorgrn="green"
export lcGuiColorblu="blue"
export lcGuiColorred="red"
export lcGuiColorora="orange"
#!
#! rc.z_CDW_Embedded_Dialog_Colors.sh
#! END:     Embedded_Dialog_Colors
#!
#!
#!
#! ###########################################################
#! BEGIN:     Embedded_Graphic_Images   "EmGr"
#! ###########################################################
#!    rc.z_CDW_Embedded_Graphic_Images.sh
#!    ########################################################
#!
#! ############################################################
function Sbr_CDW_Embedded_Graphic_Images() { 
    n=0
}
export -f Sbr_CDW_Embedded_Graphic_Images
#!
#! ##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!  FirstRun and ReStart will activate this code. 
#!
lcMasterTrgExt="IMG.txt"
lcEmGrImgFnTrg="${gcMGrMasterSubDir}${lcMasterTrgExt}"
lcEmGrTrg="/tmp/EmGr-Master-IMG.txt"
echo "=== EmGr-Master-IMG.txt  =========" > ${lcEmGrImgFnTrg}   # title for "Dump" to screen
#!
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
### if [ ${lcEmGrImageFlag} ] ; then 	# 
	#! 
	#! ###########################################################
	#! begin:   HASH  
	#! ###########################################################
	#! "EmGr" # 		fake green-PURPLE # major upper-left Image
	lcEmGrImg="/tmp/EmGr-img-hash-grn.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
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
	' > ${lcEmGrImg}   # /tmp to be inserted into <button>
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-red.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c none",
	"1	c #FF0000",
	"2	c #FFFFFF",
	"3	c #DD2222",
	"4	c #708090",
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
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-blu.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c none",
	"1	c #0040FF",
	"2	c #FFFFFF",
	"3	c #$2242FF",
	"4	c #708090",
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
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-nongrn.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #00FF00",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-hash-nonblu.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #0000FF",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-hash-nonred.xpm"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '
	/* XPM */
	static char *hash_xpm[] = {
	"32 32 5 1",
	" 	c None",
	"1	c #FF0000",
	"2	c #FFFFFF",
	"3	c #$DD2222",
	"4	c #708090",
	"                                ",
	"                                ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       12133      121334        ",
	"       12133      121334        ",
	" 1222222222222222222222222133   ",
	" 11111112111111111121111111334  ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"       121334     121334        ",
	"                                ",
	"                                ",
	};
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin:    APPLE 
	#! ############################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-apple-redred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#BB2222; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" #
	lcEmGrImg="/tmp/EmGr-img-apple-redblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#1111FF; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-apple-redyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#F8F800; stroke:#AE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-apple-redgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:none; fill:#33DD33; stroke:#BE3333; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! #############################################################
	#!
	#!
	#! #############################################################
	#! begin:    QUIT
	#!
	#! #############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-rednnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#FF1111;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#!
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-grnnnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#33FF33;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#!
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-quit-yelnnn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:none;stroke:#FFFF00;stroke-width:12px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 50,10 0,35"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#!
	#! ###########################################################
	#! begin:   JUG 
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-bluxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:#44BB11;stroke:#111166;stroke-width:15px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 31,31,31,31"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-grnxorange.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g style="fill:orange;stroke:green;stroke-width:21px;stroke-linecap:round;stroke-linejoin:round;">
		<path d="m 31,31,31,31"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:green; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" 
	lcEmGrImg="/tmp/EmGr-img-jug-grnxred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:red; stroke:green; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:yellow; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-jug-redxblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="100" width="100">
	  <g 
	style="fill:blue; stroke:red; stroke-width:12px; stroke-linecap:round; stroke-linejoin:round;">
		<path d="m 0"/>
		<path d="M 26,20 C -3,48 16,90 51,90 79,90 89,67 89,52 89,37 81,26 74,20"/>
	  </g>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin: CHECK-X 
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:red;fill-opacity:0.8;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:blue;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grnXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:green;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redXred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:red;fill-opacity:0.8;stroke:red;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grnXgrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#00FF00;fill-opacity:1.3;stroke:green;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelXyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:#888800;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-bluXblu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#0000FF;fill-opacity:0.8;stroke:blue;stroke-width:3" 
	d="M 38,49 C 49,38 56,48 64,54 68,57 57,69 42,86 35,98 74,63 87,63 95,58 82,56 53,41"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#!
	#! ############################################################
	#! begin: Check 
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-redred.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#FF1111;fill-opacity:0.8;stroke:#FF0000;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-grngrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:#11FF11;fill-opacity:0.8;stroke:#00FF00;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-yelyel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:yellow;fill-opacity:0.8;stroke:yellow;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-Check-blublu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
	<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="150" width="150">
	  <path style="fill:blue;fill-opacity:0.8;stroke:blue;stroke-width:5" 
	d="M 38,49 C 41,53 56,82 58,95 63,87 63,73 98,35 86,42 69,57 57,68 54,64 48,56 38,49"/>
	</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ############################################################
	#!
	#! ############################################################
	#! begin:    RECT
	#! ############################################################
	#! "EmGr" # 
	lcEmGrImg="/tmp/EmGr-img-RectRed.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:red;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectGrn.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:green;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectYel.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:yellow;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	#! ###########################################################
	#! "EmGr"  # 
	lcEmGrImg="/tmp/EmGr-img-RectBlu.svg"
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo "${lcEmGrImg}" >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	echo '<?xml version="1.0" encoding="UTF-8"?>
		<svg version="1.1" width="1000" height="1000">
		  <defs>
			<linearGradient id="LG_01" x1="7" y1="80" x2="0" y2="0" gradientUnits="userSpaceOnUse">
			  <stop style="stop-color:blue;stop-opacity:1" offset="0" />
			</linearGradient>
		  </defs>
		  <rect style="fill:url(#LG_01);fill-opacity:0.5;stroke-width:0" width="1000" height="1000"/>
		</svg>
	' > ${lcEmGrImg}
	echo "################################## " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	cat ${lcEmGrImg} >> ${lcEmGrImgFnTrg}   # for "Dump" to screen
	echo "### end of Image Code ############ " >> ${lcEmGrImgFnTrg}   # title for "Dump" to screen
	#! ############################################################
	#!
### fi	# if [ ${lcEmGrImageFlag} ] ; then 
#! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#! ############################################################
#! END:     Embedded Graphic Code   "EmGr" 
#! ############################################################
#!
#!
#!
#! #######################################################
#! BEGIN:     msg_DC_Msg_Windows
#! #######################################################
#! rc.z_CDW_Msg_Windows_code.sh
#! #######################################################
function Sbr_CDW_Msg_Windows_code() { # 230321-0600 marker
    n=0
}
#! ###########################################################
#! ###########################################################
#! window DC_NoShow /tmp/EmGr-img-jug-grnxred.svg  # ACTIVE
msg_DC_NoShow_window='
<window  
window-position="left" 
visible="true">
	<frame>
		<hbox> 
			<button> <label>""  </label> 
				<input file>"/tmp/EmGr-img-jug-redxyel.svg"</input><height>36></height> <width>36</width>
				<action function="closewindow">msg_DC_NoShow_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_NoShow_window</variable>
</window>'	
export msg_DC_NoShow_window
#!
#! ###########################################################
#! window DC_ReStart /tmp/EmGr-img-jug-grnxred.svg # ACTIVE
msg_DC_ReStart_0_window='
<window title="msg_DC_ReStart_0_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<hbox> 
			<button> <label>"Clear the Set-Up NOW  !  "</label> 
				<input file>"/tmp/EmGr-img-hash-grn.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReStart_0_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_ReStart_0_window</variable>
</window>'	
export msg_DC_ReStart_0_window
#!
#! ###########################################################
#! window DC_ReStart /tmp/EmGr-img-EmGr-hash-grn.xpm 
msg_DC_ReStart_window='
<window title="msg_DxC_ReStart_window" 
window-position="nearmouse"
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
export gcMsgWindowReStart1="ReStart function is active now ! "
export gcMsgWindowReStart2="Click the ReStart Button again !"
#!
#! ###########################################################
#! window DC_ReBoot /tmp/EmGr-img-EmGr-hash-blu.xpm
msg_DC_ReBoot_window='
<window title="msg_DxC_ReBoot_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowReBoot1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowReBoot2}'</b> </span> " </label>
		</text>
 		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-blu.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_ReBoot_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_ReBoot_window</variable>
</window>'	
export msg_DC_ReBoot_window
export gcMsgWindowReBoot1="ReBoot function is active now ! "
export gcMsgWindowReBoot2="Click the ReBoot Button again ! "
#!
#! ###########################################################
#! window DC_PowerOff  //tmp/EmGr-img-EmGr-hash-red.xpm
msg_DC_PowerOff_window='
<window title="msg_DxC_PowerOff_window"  
window-position="nearmouse"  
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowPowerOff1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowPowerOff2}'</b> </span> " </label>
		</text>
		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DC_PowerOff_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DC_PowerOff_window</variable>
</window>'	
export msg_DC_PowerOff_window
export gcMsgWindowPowerOff1="The PowerOff function is active now ! "
export gcMsgWindowPowerOff2="The Click the PowerOff Button again !"
#!
#! ###########################################################
#! window DC_ProgramOff //tmp/EmGr-img-EmGr-hash-red.xpm
msg_DxC_ProgramOff_window='
<window 
title="msg_DxC_ProgramOff_window" 
window-position="nearmouse"
visible="true" >
	<frame>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'red'"'> <b>'${gcMsgWindowProgramOff1}'</b> </span> " </label>
		</text>
		<text editable="false" use-markup="true" xalign=".5">
			<label> "<span color='"'green'"'> <b>'${gcMsgWindowProgramOff2}'</b> </span> " </label>
		</text>
		<hbox> 
			<button> <label>"Clear the Set-Up "</label> 
				<input file>"/tmp/EmGr-img-hash-red.xpm"</input><height>48></height> <width>48</width>
				<action function="closewindow">msg_DxC_ProgramOff_window</action> 
			</button> 
		</hbox>
	</frame>
	<variable>msg_DxC_ProgramOff_window</variable>
</window>'	
export msg_DxC_ProgramOff_window
export gcMsgWindowProgramOff1="ProgramOff function is active now ! "
export gcMsgWindowProgramOff2="Click the ProgramOff Button again !"
#! ###########################################################
#!
#! ###########################################################
#! END:     msg_DC_Msg_Windows
#! ###########################################################
#!
#!
#!
#! ###########################################################
#! BEGIN: SubRoutines "SBR" Code 
#! ###########################################################
#!
#! ###########################################################
function Sbr_Cbx_ReStart() {   # ACTIVE Check-Box 
n=0
	Sbr_ClearFlagsSystem  ""  #: clear lockfile, etc,  so that ReStart can run.
    . ${gcZeroRun}      #: $ ZERO						### Not Found during terminal ? 
} # end:  Sbr_Cbx_ReStart  
export -f Sbr_Cbx_ReStart  
#! 
#! ############################################################
function Sbr_Cbx_ReBoot() {   # Active Check-Box
    n=0
	#
	if [ $1  ] ; then 
		gxmessage -name "ReBoot" -bg yellow    -center -timeout 1   
	fi
	#
 	lcFnRun="/usr/bin/wmreboot"	   # wmpoweroff wmreboot
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
		${lcFnRun}  && ${lcFnRun}  && exit 
    else
        n=0
        /usr/lib/gtkdialog/box_ok "ERROR" error " MGR_wmReBoot fell out"
	fi
    exit 1  
} # end: Sbr_Cbx_ReBoot
export -f Sbr_Cbx_ReBoot
#! 
#! ############################################################
function Sbr_Cbx_ReQuit() {   # Active Check-Box
	n=0
	if [ $1 ] ; then 
		gxmessage -name "ReQuit" -bg yellow    -center -timeout 1   
	fi
 	lcFnRun="/usr/bin/wmpoweroff"    # wmpoweroff wmreboot
    if [ -f "${lcFnRun}" ]  ; then    # wmpoweroff wmreboot
        n=0
         ${lcFnRun} && ${lcFnRun} && exit      
     else
        n=0
        /usr/lib/gtkdialog/box_ok "ERROR" error " Sbr_Cbx_ReQuit () ${lcFnRun} not found"
		#! exit 1
	fi
    exit 1  
} # end:  Sbr_Cbx_ReQuit 
export -f Sbr_Cbx_ReQuit
#!
#! ############################################################
function Sbr_SDA_Only() {    # Active  if[!SDA] then restart 
	n=0
if [ ! -f "/initrd/mnt/dev_save/MARK-SDA" ] ; then 
	Sbr_Cbx_ReStart 1   ### terminate the program now ! 
fi
} # end: Sbr_SDA_Only
export -f Sbr_SDA_Only
#!
#! ############################################################
function Sbr_KillProc() { # ACTIVE # permission control # Exit if Test Mode #
	n=0 # Allows to Skip a Proc , for use if Test file is released as sample. 
lcParam=$1   # "1" will enable ReStart 
    
	n=0
lcParam=$1
if [ $gcSysKillProc -eq 1 ] ; then  # Sbr_Button_Only  "stub" 
	lcMsgStr="Kill Process "
	gxmessage -name "$lcParam" -bg "#00FF00"  -nearmouse  -timeout 1  " 
	 ${lcMsgStr}_STUB called via --- ${lcParam} ---_" 
	gxmessage -name "$lcParam" -bg "#F8F800"     -nearmouse  -timeout 1  " 
	 ${lcMsgStr}____STUB called via --- ${lcParam} ---____" 
	gxmessage -name "$lcParam" -bg "#FF0000"        -nearmouse  -timeout 3  " 
	 ${lcMsgStr}_______STUB called via --- ${lcParam} ---_______" 
	Sbr_Cbx_ReStart 1
fi
} # end: Sbr_KillProc
export -f Sbr_KillProc
#!
#! ############################################################
function Sbr_Cold_Splash() {   # Active in Col 4
	n=0
lcMsgStr=":$1:"
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.
.         ${lcMsgStr}
.                                                                        "&
    RETVAL=$?
	GTKPID_Col4_Splash=$!
	sleep $2
	kill ${GTKPID_Col4_Splash}
} # end: Sbr_Cold_Splash
export -f Sbr_Cold_Splash
#! 
#! ############################################################
function Sbr_Str2DevTrm() {   #: ACTIVE
#! ## param: "char string" "# color" "# margin"
lcS2TStr=${1}   # ## STRING message 
lcS2TClr=${2}   # ## COLOR name or number
lcS2TMrg=${3}   # ## MARGIN number 1,5,10 ... 2,3,4,5,etc
lcS2Topt=${4}	# ## "C"onsole "T"erminal
lcDevConsole=""	# ## default to "T"erminal 
#!
case "${lcS2Topt}" in
   "C") lcDevConsole=" > /dev/console" ;; 
   "T") lcDevConsole="" ;; 
    *)  lcDevConsole="" ;;	#: default Geany "T"erminal mode
esac
#!
case "${lcS2TMrg}" in
   0|"0") /bin/echo -n -e "\\033[0G"    >/dev/console ;; 
    *) /bin/echo -n -e "\\033[${lcS2TMrg}G"    >/dev/console ;;
esac
#!
case "${lcS2TClr}" in   #!COLOR:  1 is 31  ;  2 is 32  ;  3 is 33 
    ""|"0")                                         /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default yellow
    "31"|"32"|"33"|"34"|"35"|"36"|"37"|"38"|"39")   /bin/echo -n -e "\\033[1;${lcS2TClr}m"   ${lcDevConsole} ;; 
    *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
esac
#~ case "${lcS2TClr}" in
    #~ ""|"0")      /bin/echo -n -e "\\033[1;33m"   ${lcDevConsole} ;; #: default to yellow
    #~ *)  /bin/echo -n -e "\\033[1;3${lcS2TClr}m"   ${lcDevConsole} ;; #: inject specific color nbr
#~ esac
#!
	/bin/echo -n "${lcS2TStr}"  ${lcDevConsole} 
	/bin/echo -e "\\033[0;m"  ${lcDevConsole} 
	return  0
} # end: Sbr_Str2DevTrm
export -f Sbr_Str2DevTrm
#! 
#! ############################################################
function Sbr_SetVerDts() {  #: ACTIVE in Main 
n=0    #: common "stub" so bare funxtion() will not fault during test/dev. 
	gcSysDvar=`date`
	gcSysDts="`date +%y%m%d-%H%M-%S`"   
 	lcNowDts="${lcNowDts:0:6}-${lcNowDts:6:7}"
	gcSysDtsNow="${lcNowDts}-local"
	gcSysDtsNow="${lcNowDts}"
#
gcSys_MyDev="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_"
gcMntAllLogP="/tmp/MGR_MntAllP.log "
gcMntAllLogU="/tmp/MGR_MntAllU.log "
export gcSysDistroName="${DISTRO_NAME}"
export gcSysDistroVersion="${DISTRO_VERSION}" 
export gcSysDistroPuppySFS="${DISTRO_PUPPYSFS}"
export gcSysDistro_Db_Subname="$DISTRO_DB_SUBNAME"		
export gcSysKernPup="`uname -r`"
export gcSysKernName="Kern:`uname -r`"
#
} # end: Sbr_SetVerDts
export -f Sbr_SetVerDts
#!
#! ############################################################
function Sbr_ClearFlagsSystem() {   #: ACTIVE for System 
	n=0
if [ ! $1 ] ; then    # display active
    n=0
/usr/lib/gtkdialog/box_splash -fg yellow -bg darkred -border true -close never -text "\
.
.    ClearFlagsSystem !!!
.                         "&
    RETVAL=$?
	GtkPid_ClearFlagsSystem=$!	# capture PID
	sleep .7
	kill ${GtkPid_ClearFlagsSystem} # after return
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
#! ############################################################
function Sbr_ClearFlagsQuit() {   #: ACTIVE for QUIT
    n=0
if [ ! $1  ] ; then   # display active
#-----------------------------------------------------------------------
/usr/lib/gtkdialog/box_splash -fg yellow -bg black -border true  -close never -text "\
.
.    Clear Flags Quit !!!
.                        "&
#-----------------------------------------------------------------------
    RETVAL=$?
	GtkPidClearFlagsQuit=$!	# capture PID
	sleep 1.5
	kill ${GtkPidClearFlagsQuit} # after return
fi # end: [ $1 = "1" ]
	rm -f "${MGR_LockFile}"  ### this is "MGR_LockFile"	   ###  but not E3R  CBX
	rm -f "${MGR_TouchCBXstatus}" # ## CBX applied flag must linger for GUI		# Carry-Over
	rm -f "${MGR_E3Rstatus}"	# ## E3R applied flag must linger for GUI 		# Carry-Over
	rm -f "${MGR_BackUpStatus}" # ## CBX applied  flag must linger for GUI		# Sbr_ClearFlagsQuit
    rm -f "${MGR_ReStart_flg}"  # ## MGR initial Re-ReStart to init GEANY 
	/bin/echo " " > /dev/console
} # end: Sbr_ClearFlagsQuit
export -f Sbr_ClearFlagsQuit
#!
#! ############################################################
function Sbr_Box_Message() {  #: ACTIVE   for HELP and FAQ
n=0
export TEXTDOMAIN=libstardust
export OUTPUT_CHARSET=UTF-8
if [ "$1" ] ; then
	Box_Msg_Heading="${1}"	
else
	Box_Msg_Heading="$(gettext '---Sbr_Box_Message---')"
fi
export Box_MessageXML='
<window title="'CTB$Box_Msg_Heading'" 
default-height="650" 
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
gtkdialog --center -p Box_MessageXML	# assumes /tmp/box_help
} # end: Sbr_Box_Message
export -f Sbr_Box_Message
#! 
#! ############################################################
function Sbr_ShowSplash() {   # ACTIVE
	n=0
	lcPar1r=${1}    # text
	lcPar2r=${2}	# fg
	lcPar3=${3}     # bg 
	/usr/lib/gtkdialog/box_splash -text "${1}" -fg "${2}" -bg "${3}" -border true  -close never &
    GTKPIDShowSplash=$!
    return
} # end:  Sbr_ShowSplash
export -f Sbr_ShowSplash
#! ############################################################
#!
#!
#!
#! ###########################################################
#! Begin: DUMPS 
#! ###########################################################
#!
#! ############################################################
function Sbr_Dump_PUP() {    #: ACTIVE
	n=0
lcMsgSrc="/etc/rc.d/PUPSTATE" # not required
lcMsgTrg="/tmp/MGR_PUPSTATE"
#
cat ${lcMsgSrc} > ${lcMsgTrg}     #: $ ZERO 
#
MCI_dts="=== MCI {NowDTS} `date +%y%m%d-%H%M-%S`"
echo "${MCI_dts}" >> ${lcMsgTrg}	#: add string to PUPSTATE Text Output
echo "=== {PUP+} MGR_Pup_Box ============================" >> ${lcMsgTrg}
sleep .1
gxmessage -name "PUPSTATE via cat + gxmesage" -bg lightyellow  -center -file "${lcMsgTrg}" -wrap
} # end: Sbr_Dump_PUP
export -f Sbr_Dump_PUP
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_HLP() {   #: ACTIVE   Dump_Help
	n=0
	echo "\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========"</span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"     "${gcMciNameBase}" Help "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "========" </span></span>
"---"
<span foreground='"'red'"'>"${gcMciNameBase}.sh Puppy Project"</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh Puppy Project"</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh Puppy Project"</span>
"---"
<span foreground='"'green'"'>"__________________________________________"</span>
<span foreground='"'red'"'>"Special Features of ${gcMciNameBase}: "</span> <span foreground='"'green'"'></span>
<span foreground='"'blue'"'>"has Embedded-Graphics ! "</span>
<span foreground='"'blue'"'>"has Double-Click buttons ! "</span>
<span foreground='"'red'"'>" is written with BASH "</span>
<span foreground='"'red'"'>" is written with GTKdialog "</span>
"--- "
<span foreground='"'purple'"'>"${gcMciNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"___${gcMciNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>"_____ so READ the code ! "</span>
"---"
<span foreground='"'red'"'>"${gcMciNameBase} is a simple menu demo ! "</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh DEMO is greatly simplified, working Demo."</span>
<span foreground='"'blue'"'>"${gcMciNameBase}.sh DEMO is case/hacked from MGR.sh MANAGER"</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh DEMO restarts $0, uses '/tmp' "</span>
<span foreground='"'green'"'>"${gcMciNameBase}.sh DEMO requires 1 second to write all 37 images"</span>
<span foreground='"'green'"'>" . . . . . . . . . . . writes all images one time, at StartUp."</span>
<span foreground='"'green'"'>" . . . . . . . . . . . to 17 KBytes in /tmp "</span>
<span foreground='"'green'"'>"${gcMciNameBase} is a menu demo ! "</span>
"--- "
... On-Screen Dumps available:
... "Help", "Faq", "Pup", "Src", "Gui", "Img", "Upl", "Dev" 
... All Dumps will run, and 'ReStart' this program. 
"---"
<span foreground='"'green'"'>"__________________________________________"</span>
<span foreground='"'purple'"'>" Running Tests on 17 OS, including: "</span>
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
"---"
<span foreground='"'blue'"'>"Authors note about ${gcMciNameBase} coding :"</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'red'"'>"documented code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modular  code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"readable code "</span>
${gcMciNameBase} code is <span background='"'white'"' foreground='"'green'"'>"modifiable code "</span>
"---"
"This project is posted on the Murga website" 
"   'MCI_v.3.2_Sample-Menu_Embedded-Graphics+Double-Click'"
"   in the utilities:"
"'https://forum.puppylinux.com/viewtopic.php?t=8908'"  
"---"
This project is posted on website:  
   www.GeoCities.WS/glene77is
under the "LINUX" button. 
"---"
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
"---"
<span foreground='"'red'"'>'"ROX Debug Method :"'</span>
Use the ROX 'Run in Terminal' to Execute a script.
<span foreground='"'red'"'>'"Geany Debug Method :"'</span>
Use the Geany Execute funxtion
   to run the script 'BASH-Terminal'
All 'echo' commands will display.
"---"
### output "MCI-HELP" temp file MUST BE "/tmp/box_help" 
### due to hard-code in "gtkdialog/box_help"
"---"
<span foreground='"'red'"'>" MCI-MGR is written with BASH current in each OS"</span>
<span foreground='"'red'"'>" MCI-MGR is written with GTKdialog "</span>
<span foreground='"'green'"'>"  gtkdialog version 0.8.4 release  2003-2007  "</span>
<span foreground='"'green'"'>"     2003-2007 Laszlo Pere, 2011-2012 Thunor  "</span>
<span foreground='"'red'"'>"  gtkdialog Button-Format-Sequence-is-critical "</span>
<span foreground='"'red'"'>"  gtkdialog Button-Format-Sequence-is-critical "</span>
"---"
<span foreground='"'purple'"'>"#! ${gcMciNameBase} uses GNU bash,  "</span>
<span foreground='"'purple'"'>"#! --- version 4.4.20 -1 -release- i686-pc-linux-gnu "</span>
<span foreground='"'purple'"'>"#! Each OS is tested via its own original distro BASH ."</span>
<span foreground='"'purple'"'>"#! Each OS is tested via its own original distro GTK ."</span>
"---"
<span foreground='"'purple'"'>"${gcMciNameBase} is LINUX ! "</span>
<span foreground='"'purple'"'>"_${gcMciNameBase} is FOSS ! "</span>
<span foreground='"'purple'"'>"___${gcMciNameBase} is Free Open Source ! "</span>
<span foreground='"'purple'"'>" ...  so READ the code ! "</span>
............................................................."\
> /tmp/box_help
Sbr_Box_Message "=== HELP === 'Sbr_Box_Message' > /tmp/box_help + box_help"
#
} # end: Sbr_Dump_HLP
export -f Sbr_Dump_HLP 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_FAQ() {   #: ACTIVE Dump_FAQ
	n=0
	echo "\ 
<span background='"'brown'"'><span foreground='"'yellow'"'> "=========="</span></span>\
<span background='"'yellow'"'><span foreground='"'blue'"'>"      "$gcMciNameBase" FAQ    "</span></span>\
<span background='"'brown'"'><span foreground='"'yellow'"'> "==========" </span></span>
#
<span foreground='"'red'"'>Note : the actual Length
of tar-zip compression run is unknown</span>
 all depending on the ability of Tar-zip
 to apply compression techniques
 to a variety of data files.
Here, we are guessing the post-tar-zip time
 required for write to USB.
Therefore, we may run a splash
 \"Wait Some More\"
...
Our several Linux systems include
several different types of \"Hard-Media\"
: SATA-PATA-HD, USB-HD, USB-FlashDrives.
 Each Drive device has unique specs
 which must be accomodated by code.
In general,
The <span foreground='"'red'"'>'PATA-SATA HardDrives'</span>
 receives/writes data 100MBytes second,
 so it seems immediate.
The <span foreground='"'red'"'>'USB-HardDrive'</span> buffers at 12 MByte,
 and writes quickly on 1 Mbyte files. 
The <span foreground='"'red'"'>'USB-FlashDrive'</span> buffer quickly,
 at 12 MByte rate, in 1 MByte chunks,
 and then slowly transfer from buffer
 to \"burn-and-store\" the data on chip.
 USB-FlashDrives are \"EEPROM\" devices.
Note: USB flash drives work max 12MByte
 transfer rate onto the chip buffer,
 then transfer-burn to a data area
 across the available chip space.
This can work well for 1MByte jpg files,
 but work slowly on 100MByte data files.
Some USB FlashDrives maintain
 a "shake-hands" relation
 with the driving source device,
 and some USB FlashDrives do not have
 the "Ack/Nack" hand-shake with the driving source.
Some of our USB FlashDrives have
  an LED indicator of on-chip activity,
 and some of our USB FlashDrives
  have no LED indicator.
Therefore,
 we may opt to have several
 "Wait Some More" splash messages in the prg.
#
............................................................."\
> /tmp/box_help
Sbr_Box_Message "=== FAQ === 'Sbr_Box_Message' > /tmp/box_help + box_help"
} # end: Sbr_Dump_FAQ
export -f Sbr_Dump_FAQ 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_SRC() {   #: ACTIVE Dump_SRC
	n=0
#!
#! ############################################################
lcFileXmessage="/usr/bin/xmessage"
lcFileGXmessage="/usr/bin/gxmessage"
    #!
lcMsgStr="===  Sbr_Dump_SRC gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
    sleep .1
    #!
lcMsgSrc="${0}"	# "${gcZeroRun}"
lcMsgTrg="/tmp/box_help"  
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg} 
echo "# running fx(Sbr_Dump_SRC)" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# MCI Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MCI ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`" >> ${lcMsgTrg}
echo "# "  >> ${lcMsgTrg}  
#!
cat ${0} >> ${lcMsgTrg}     ### /tmp/box_help ###
echo "####### End of Source Code ######" >> ${lcMsgTrg} 
sleep 1
#!
gxmessage -title "SRC"  -name "-SRC-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_SRC
export -f Sbr_Dump_SRC 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_GUI() {   #: ACTIVE Dump_GUI
	n=0
lcFileGXmessage="/usr/bin/gxmessage"  # not required
   #!
lcMsgStr="===  Sbr_Dump_GUI gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
    #!
lcMasterTrgExt="GUI.txt"
lcEmGrImgFnTrg="${gcMGrMasterSubDir}${lcMasterTrgExt}"
lcMsgSrc="${lcEmGrImgFnTrg}"
lcMsgTrg="/tmp/box_help"
echo "# ${gcSysDistroName} = textfile > cat + gxmessage" > ${lcMsgTrg}    # preset First Line  
echo "# running fx(Sbr_Dump_GUI)" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# MCI Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "# MCI ## Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`" >> ${lcMsgTrg}
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# "  >> ${lcMsgTrg}  
cat ${lcMsgSrc} >> ${lcMsgTrg}     ### /tmp/box_help ###
gxmessage -title "GUI"  -name "-GUI-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_GUI
export -f Sbr_Dump_GUI 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_IMG() {   #: ACTIVE Dump_IMG
	n=0
lcFileXmessage="/usr/bin/xmessage"   # not required
lcFileGXmessage="/usr/bin/gxmessage"  # not required
    #
lcMsgStr="===  Sbr_Dump_IMG gxmessage === "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "7" 
lcMsgSrc="/tmp/EmGr-Master-IMG.txt"	
lcMsgTrg="/tmp/box_help"  
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "${gcSysDistroName} = textfile > cat + gxmessage" >> ${lcMsgTrg}    # preset First Line  
echo "# running fx(Sbr_Dump_IMG) showing IMAGE code" >> ${lcMsgTrg} 
echo "#============================" >> ${lcMsgTrg}	
echo "# EmGr-Image-all ===${lcMsgSrc}===" >> ${lcMsgTrg}	
echo "# total 37 images: 17 KBytes " >> ${lcMsgTrg}	
echo "# total load time: 1 second" >> ${lcMsgTrg}	
echo "#============================" >> ${lcMsgTrg}	
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# This is Linux "  >> ${lcMsgTrg} 
echo "#    This is Free Open Source  " >> ${lcMsgTrg} 
echo "#       So, Read the Code" >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "### Source: ${lcMsgSrc}"  >> ${lcMsgTrg}
echo "### Target: ${lcMsgTrg}"  >> ${lcMsgTrg}
echo "# `date +%y%m%d-%H%M-%S`"      >> ${lcMsgTrg} 
echo "# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" >> ${lcMsgTrg} 
echo "# "  >> ${lcMsgTrg}  
cat /tmp/EmGr-Master-IMG.txt >> ${lcMsgTrg} 	### Build "/tmp/box_help" Documentation file
gxmessage -title "IMG"  -name "-IMG-" -font bold -bg lightyellow -fg darkblue -center -wrap -file ${lcMsgTrg}
} # end: Sbr_Dump_IMG
export -f Sbr_Dump_IMG 
#! ############################################################
#!
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
#!
/usr/lib/gtkdialog/box_ok "=== Dev === Legal === Message box_ok" error "
.
${lcStrUpPop}  
.                                                      "
    RETVAL=$?
	GTKPIDMAIN0=$!
    #!
	kill ${GTKPIDMAIN0}
    #!    
} # end: Sbr_Dump_UPL
export -f Sbr_Dump_UPL 
#! ############################################################
#!
#! ############################################################
function Sbr_Dump_Dev() {   #: ACTIVE
	n=0
lcStrUpPop="fx(Sbr_Dump_Dev)
Dev Notes and test var  .  .  .  .  .  .  .  .  .  .  .  .  .
SysDevDob = ${gcSysDevDob}
DevId = ${gcMciDevId}	
SysDistroPuppySFS=${gcSysDistroPuppySFS}
PupSfsFile=${gcPupSfsFile}			
DistroVer=${gcMGRDistroVer}		
KernVer=${gcMGRKernVer}
  "
/usr/lib/gtkdialog/box_ok "=== Dev Notes and Var === Message box_ok" error "
.
${lcStrUpPop}    
.                "
	GTKPIDMAIN0=$!
    #
	kill ${GTKPIDMAIN0}
} # end: Sbr_Dump_Dev
export -f Sbr_Dump_Dev 
#! ###########################################################
#!
#!
#! ###########################################################
#! BEGIN: SubRoutines General 
#! ###########################################################
#!
#! ###########################################################
function MGR_TouchLockFile() {   #: NOT USED
	n=0
} #
#!
#! ############################################################
function MGR_TouchCBXstatus() {   #: NOT USED
	n=0
} #
#! 
#! ############################################################
function MGR_TouchE3Rstatus() {   #: NOT USED
	n=0
} #
#! 
#! ############################################################
function MGR_Sync() {   #: ACTIVE
/bin/echo -en "\\033[0;39m"		>  /dev/console
/bin/echo -en "\\033[60G"    >/dev/console 
/bin/echo -en "\\033[1;33m"    >/dev/console 
/bin/echo -e  "\\033[0;39m"   >/dev/console 
if [ ! $1  ] ; then   # display
/usr/lib/gtkdialog/box_splash -fg yellow -bg blue -border true  -close never -text "\
.                                   
.    < SYNC >  flush buffers        
.                            "&
	GTKPIDSYNC1=$!
    sleep .5 
	kill ${GTKPIDSYNC1}
fi # end: [ $1 = "1" ]
	sync   	# # '/sbin/sync' is a link into 'busybox' binary '/bin/busybox'		 
} # end: MGR_Sync
export -f MGR_Sync 
#! 
#! ############################################################
function MGR_SnapMergePuppy() {   #: ACTIVE
	n=0
llRun01=1
llRun02=0
llRun03=0
llRun04=0
lcRunTime01="19"
lcRunTime02="18"
lcRunTime03="17"
lcRunTime04="16"
lcRunNum="${lcRunTime01}"
#! write "C"syntax here for looping
#! for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax
#! do 
#! done # end: for (( i = 1; i <= $ii ; i++ )) ## "C"syntax "C" syntax 'C'syntax 'C' syntax
if [ ! $1 ] ; then   # display
/usr/lib/gtkdialog/box_splash -fg yellow -bg brown -border true  -close never -text "\
.
.       ...Save-2-Flash...Standard... NOT REQUIRED
.             nice -n ${lcRunNum} snapmergepuppy
.                                                                        "&
    RETVAL=$?
	GTKPIDSMP=$!
    sleep .5
	kill ${GTKPIDSMP}
fi # end: [ ! $1 ] 
#!
	Sbr_Cold_Splash "===SnapMergePuppy===!" "1"
#!    
nice -n ${lcRunNum} snapmergepuppy /initrd/pup_ro1 /initrd/pup_rw  > /dev/null
#! lcRunNum="${lcRunTime02}"
#!
} # end: MGR_SnapMergePuppy
export -f MGR_SnapMergePuppy
#! 
#! ############################################################
function Sys_PupState() {   #: ACTIVE
	n=0
    lcVerDtsTmp="${gcMGRDob}"
	#!
		if [ $PUPMODE -eq 2 ] ; then
			lcMsgStr="
		PUPMODE is 2 
		MGR requires 'Frugal Install' 
		PUPMODE must be '13'           "
			xmessage -timeout 3 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
			exit
		else
			lcMsgStr="PUPMODE=${PUPMODE}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
		fi
	#!
    export gcMGRDob="${lcVerDtsTmp}"
	#!
	export gcSysDistroLoc="${PDEV1}"	### from PUPSTATE, from rc.sysinit. 
	export gcZeroRun="$0"
	#! note  if [ "`cat /tmp/pup_event_backend/pup_event_module_devpath_log* | grep -m 1 'usb_storage'`" != "" ];then 
	echo "BK ==============================================="  
	lcSaveBkFileNameMount="`cat /sys/fs/aufs/si_*/br0 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameMount = ${lcSaveFileNameMount}"
	lcSaveBkFileNameBaseSrc="`cat /sys/fs/aufs/si_*/br1 | head -1 | cut -f1 -d'='`"
	echo "SaveBkFileNameBaseSrc = ${lcSaveFileNameBaseSrc}"
	echo "BK ==============================================="  
	#!
	#note  fi 
	#!
    export gcSysDistroVer="${PUPSFS}"	
    export gcSysKernVer=${gcSysKernVer}
	export gcSysVer="${PUPSFS}"	#: ${gcSysDistroVer}
	export gcPupSfsFile="`echo "$PUPSFS" | cut -f 3 -d ','`" 
    export gcMGRDistroVer="${PUPSFS}"
    export gcMGRKernVer="`uname -r`"	 
	export gcMGRname="Menu-Clicks-Images"
    export lcPupMode=${PUPMODE}
    export lcPupHome=${PUP_HOME}  
    export lcPupSave=${PUPSAVE}   
    export lcPupMode=${PUPMODE}   
	export gcSysSave="`echo -n "$PUPSAVE" | cut -f 3 -d ','`"	
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
    echo "--- saveDATA size calc"
	aa="$(du -c -m -s ${lcPupSaveData} )"     # error flag on Zero-length file shown inside Geany/XTerm
	read -r b ccc <<< "$aa"
    lcMsgStr="saveData: ${ccc}" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcPupRamObj="${b}"
    lcPupRamObjMsg="# DATA size > ${lcPupRamObj} MB "
    lcMsgStr="$lcPupRamObjMsg" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"	
	### changed from leading grave [`] to enclosing double-apostrophe ["]
	FREERAM="free | grep -o 'Mem: .*' | tr -s ' ' | cut -f 4 -d ' '" 
	export gcFreeRamNow="${FREERAM}"
	export gcFreeRamData="# Ram: ${gcFreeRamNow} Bytes "
	export gcPupSave="${PUPSAVE}"
    lcPupDts="`date +%y%m%d-%H%M-%S`"   # not used
    lcMGRverdts="${gcMGRDob}"
    lcSleep="sleep 1"
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"   
	export MGR_E3Rstatus="/tmp/MGR_E3R_Status"   
	export MGR_LockFile="/tmp/MGR_LockFile"      
	export MGR_CBXstatus="/tmp/MGR_CBX_Status"   
	export gcPupSave="${PUPSAVE}"						
	export MGR_ReStart_flg="/tmp/MGR_ReStart.flg"
} # end: Sys_PupState
export -f Sys_PupState
#!
#! ###########################################################
function Run_Special() {   #: NOT Active
		n=0
} #
#! 
#! ######################################################################
function MGR_GTK() {   #: NOT USED
		n=0
} #
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

	Sbr_Cold_Splash "=== MCI ===" "1"
echo
lcMsgStr=">>> Start M.G.N. Header " && Sbr_Str2DevTrm "$lcMsgStr" "5" "3"
lcMsgStr=">>> Start M.G.N. Header " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
lcMsgStr=">>> Start M.G.N. Header " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr="Begin: MGR : Main () : TERMINAL Mode :"
#!
	Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
	Sbr_Str2DevTrm "$lcMsgStr" "2" "2"
	Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	Sbr_Str2DevTrm "$lcMsgStr" "4" "4"
	Sbr_Str2DevTrm "$lcMsgStr" "5" "5"
	Sbr_Str2DevTrm "$lcMsgStr" "6" "6"
	Sbr_Str2DevTrm "$lcMsgStr" "7" "7"
	#!
    Sbr_SetVerDts
    lcMsgStr="Ver Dts :${gcSysDts}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Now-Dts :${gcSysDtsNow}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr="Var date :${gcSysDvar}:" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	#!
echo " "
echo " "
echo " "
#!
## ARB_init  : config controls  menulst   menu.lst   main run ( ) 
## purpose: 
##    (1) read existing config for "Idd", 
##    (2) install generic "full enough" "SHORT" menu.lst 
##         with default "0,1,2,3,4" matching config "Idd" 
	n=0
    lcMsgStr=">>> Sys_PupState >>>" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    Sys_PupState   ### Gather the "state" variables from OS
    lcMsgStr="<<< Sys_PupState <<<" && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
    lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "2" "3"
	lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	lcMsgStr=">>> before Check :[ -f ${MGR_LockFile} ]:" && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	if [ -f ${MGR_LockFile} ]; then      #: this is Main () lockfile
		#!
		lcMsgStr=" Error: Soft LockFile Control
  		  ... MGR_Running_Already !!!
	  	  ... (1) Quit MGR program
		  ... (2) Clear Running MGR window
		  ... (3) Re-Start MGR program 
		  ... (4) MGR program will continue (Soft Lock)"
		xmessage -timeout 1 -name 'MGR' -center -bg brown -fg yellow "${lcMsgStr}"
		#!	
		lcMsgStr=" = FOUND :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	else
		lcMsgStr=" =  Not Found  :[ -f ${MGR_LockFile} ]: " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
	fi
#!
lcMsgStr="<<< after Check :[ -f ${MGR_LockFile} ]:" && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "3" "3"
lcMsgStr=">>> before touch :${RETVAL}: :${MGR_LockFile}:" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
#! 
touch "${MGR_LockFile}" 
lcMsgStr="<<< after touch :${RETVAL}: :${MGR_LockFile}:" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
lcMsgStr=" " && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
#!
#! ##^^^ GUI ^^^^^^^ Begin: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#!
#!
#------------------------------------------------------------------------
lcSleep=.3
/usr/lib/gtkdialog/box_splash -fg orange -bg black -border true  -close never -text "\
.     MCI Start-Up  " &  RETVAL=$?  &&  GtkPid_Sbr_Box_Splash=$!  &&  sleep 1  && kill ${GtkPid_Sbr_Box_Splash} 
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
#!
#! ====================================================================
#!
if [ lcSetCtrl ] ; then
    n=0    
fi
#! begin: ReStart so GEANY is initialized proper. 
if [ ! -f ${MGR_ReStart_flg} ] ; then   # this is a First-Time-Run  and  Requires ReStart.
    # If not file, then touch one. 
    touch ${MGR_ReStart_flg}  # make one, so gui lcGuiFrameTitle can test .
    Sbr_Cbx_ReStart  1  # no wait # ReStart so GEANY is initialized proper.
else
    lcMsgStr="= = = Start-OK = = =" && Sbr_Str2DevTrm "$lcMsgStr" "5" "4"
    lcMsgStr="BUILD_FROM_WOOF>>>=== ${BUILD_FROM_WOOF} ===<<<"
	/bin/echo -e "\\033[0G\\033[1;37m***\\033[1;33m$lcMsgStr\\033[1;37m***\\033[0;39m" 
    sleep .3
#!
fi # end: ReStart so GEANY is initialized proper. 
export lcBSS_TrgSubDir="TrgSubDir"			# File Select
export gcPBKP_BACKUP_PATH="BACKUP_PATH"		# File Select
#!
#! ## MAINGUI # Begin ### MCI ############################################
#!
export lcGuiWindowTitle=":.${gcMciDevId}.:.${gcSysDistroLoc}.:.${gcPupSubDir}.:.${gcSysDevDob}.:" 
export lcGuiFrameTitle=":_${gcMciDevId}_:_${gcMciDevID}_:_${gcSysDistroLoc}_:_${gcSysSave}_:_${gcSysDevDob}_:_${gcSysDevHw}_:"   
#!:
export MGR_Master_GUI='
<window  
	title="'${lcGuiWindowTitle}'" 
	height-request="750" 
	space-expand="false" 
	border="true" 
	border-width="5" 
	resizable="true" >  
<vbox>
	<vseparator height-request="3" > </vseparator>
	<vbox>

      <button   tooltip-text="Frame-Title Manager+ReStart 
       This is LINUX, 
       this is FOSS, 
       so READ the code !" 
 has-focus="false"  xalign=".5" >
        <input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>50</width><height>50</height>
        <label>'${lcGuiFrameTitle}'</label> 
		<action>'EXIT:guiTop-ReStart'</action> </button>
</vbox>
	<vseparator height-request="1"> </vseparator>

    <text visible="1" editable="false" use-markup="true" xalign=".5"> <label> 
    "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"M.C.I."'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
    </label> </text>
 
<hbox>
	<button tooltip-text="'Margin-C3'" has-focus="false" width-request="7" xalign=".5"  >
            <label> "" </label> <action>lxDummy:mC3</action> </button>
   	<button visible="false" has-focus="false" width-request="5" tooltip-text="Margin-C3" >
		<label>""</label><input file icon="gtk-select-color" ></input><action>lcDummy:mC3</action></button>
    <vbox>
	<vseparator height-request="3"> </vseparator>
        <button has-focus="false" height-request="30"  xalign=".5"  tooltip-text="C3-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> "''" </label><action>lxDummy:C3</action></button>
        <text editable="false" use-markup="true" xalign=".5">
            <label> "<span color='"'$lcGuiColorblu'"'> <b>'{-Internal-}'</b> </span>"	</label> </text>
        <button     tooltip-text="'EXIT:guiDumpHLP'  <HELP dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width>33</width><height>33</height>
			<label>"  'HELP'    " </label>
 			<action>'EXIT:guiDumpHLP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpPUP'  <Pup-State dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>25</width><height>25</height>
			<label> "  'PupState'    " </label>
 			<action>'EXIT:guiDumpPUP'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpFAQ'  <FAQ dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Faq'    " </label>
			<action>'EXIT:guiDumpFAQ'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpSRC'  <Source Code Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-All-Source-Code'    " </label>
 			<action>'EXIT:guiDumpSRC'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpGUI'  <XML GUI Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-XML_GUI-Code'    " </label>
 			<action>'EXIT:guiDumpGUI'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpIMG'  <XML GUI Dump>" height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>27</width><height>27</height>
			<label> "  'Dump:-svg-xpm_IMG-Code'    " </label>
 			<action>'EXIT:guiDumpIMG'</action> </button>
        <button     tooltip-text="'EXIT:guiDumpUPL'  < Phil PeaBee : UpPopLegal_Flg >"  height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
			<label> "  'UPLegal'    " </label>
 			<action>'EXIT:guiDumpUPL'</action> </button>
       <button     tooltip-text="'EXIT:guiDumpDev'  < Display Devloper Var >"  height-request="29" has-focus="false">
			<input file>"'/tmp/EmGr-img-Check-bluXred.svg'"</input><width>27</width><height>27</height>
			<label> "  'Developer'  " </label>
 			<action>'EXIT:guiDumpDev'</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:0</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:0</action> </button>
 
       <button has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redgrn.svg" >
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxDummy:C4</action></button>
       <button has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redblu.svg" >
			<input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxDummy:C4</action></button>
       <button has-focus="false" height-request="12"  xalign=".5"  tooltip-text="C4-/tmp/EmGr-img-apple-redyel.svg" >
			<input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>25</width>  <height>25</height>
            <label> " " </label><action>lxDummy:C4</action></button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
	    <button label="'-------'"  tooltip-text="* Bottom-C3 *"
            has-focus="false" height-request="7" width-request="35" space-expand="false" 
            tooltip-text="Bottom-C3" > <action>lxDummy:Bottom-C3</action> </button>
    </vbox>
	<button tooltip-text="'Margin-C4'" has-focus="false" width-request="7" xalign=".5"  >
		<label> "" </label> <action>lxDummy:mC4</action> </button>
<vbox>
<hbox>
	<hseparator width-request="10"></hseparator>
</hbox>
<vbox>
	<button tooltip-text="'Embedded-Image-Project'" has-focus="false" height-request="37" width-request="37" xalign=".5"  >
	<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width> "35" </width> <height> "35" </height>	
	<label> "===-Embeded-Image-Project-===" </label> <action>lxDummy:mC4</action> </button>
	<hbox>
 		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'red'"'><b>{'+Menu=button+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'green'"'><b>{'+Double-Click+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'blue'"'><b>{'+Embedded-Image+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'purple'"'><b>{'button_with_Alert-Msg-'}</b></span>" </label>
		</text>
	</hbox>
</vbox>
<vbox>
 		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'red'"'><b>{'+Menu=button+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'green'"'><b>{'+Double-Click+'}</b></span>" </label>
		</text>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'blue'"'><b>{'+Embedded-Image+'}</b></span>" </label>
		</text>
</vbox>
	<vseparator height-request="12" > </vseparator>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'purple'"'><b>{'Double-Click_Button__and__Alert-Msg-'}</b></span>" </label>
		</text>
<hbox homogeneous="true">
		<button tooltip-text="_guiS2F-ReStart_">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '{:DC:}_ReStart_' </label>
			<action function="'launch'"     >msg_DC_ReStart_window</action>
            <action function="'closewindow'">msg_DC_ReStart_window</action>
			<action>'EXIT:guiS2F-ReStart'</action>	</button>
		<button tooltip-text="_guiS2F-ReBoot_">
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '{:DC:}_ReBoot_' </label>
			<action function="'launch'"     >msg_DC_ReBoot_window</action>
            <action function="'closewindow'">msg_DC_ReBoot_window</action>
			<action>'EXIT:guiS2F-ReBoot'</action> </button>
		<button tooltip-text="_guiS2F-PowerOff_">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
			<label> '{:DC:}_PowerOff_' </label>
			<action function="'launch'"     >msg_DC_PowerOff_window</action>
            <action function="'closewindow'">msg_DC_PowerOff_window</action>
			<action>'EXIT:guiS2F-PowerOff'</action> </button>
</hbox>
	<vseparator height-request="12" > </vseparator>
		<text editable="false" use-markup="true" xalign="0.5">
			<label> "<span color='"'purple'"'><b>{'Single-Click_Button__NO_Alert-Msg-'}</b></span>" </label>
		</text>
<hbox homogeneous="true">
 
		<button tooltip-text="_Save-ReStart_">
			<input file>"'/tmp/EmGr-img-Check-grnXgrn.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '_ReStart_!' </label>
			<action>'EXIT:guiS2F-ReStart'</action>	</button>
		<button tooltip-text="_Save-ReBoot_">
			<input file>"'/tmp/EmGr-img-Check-bluXblu.svg'"</input><width> "35" </width> <height> "35" </height>
			 <label> '_ReBoot_!' </label>
			<action>'EXIT:guiS2F-ReBoot'</action> </button>
		<button tooltip-text="_Save-PowerOff_">
			<input file>"'/tmp/EmGr-img-Check-redXred.svg'"</input><width> "35" </width> <height> "35" </height>
			<label> '_PowerOff_!' </label>
			<action>'EXIT:guiS2F-PowerOff'</action> </button>
</hbox>
		<vseparator height-request="5"></vseparator>
        <button tooltip-text="'-Before-Quit-'" has-focus="false" > 
			<width>7</width> <height>7</height>        
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input> 
			<action>lxDummy:Before</action> </button>
        <button   tooltip-text="Double-Click-Warning-Program_Quit_" >
			<input file>"'/tmp/EmGr-img-quit-rednnn.svg'"</input><width>44</width>  <height>44</height>
			<label>'{:DC:}_QUIT-Program_'</label> 
				<action function="'launch'"     >msg_DxC_ProgramOff_window</action>
				<action function="'closewindow'">msg_DxC_ProgramOff_window</action> 
 			<action>'EXIT:guiMainQUIT'</action>
		</button>
       <button tooltip-text="'-After-Quit-'" has-focus="false" > 
			<width>7</width> <height>7</height>        
			<input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input> 
			<action>lxDummy:After</action> </button>
		<vseparator height-request="5"></vseparator>
<vbox>
	<button tooltip-text="'Embeded-Images'" has-focus="false" width-request="7" xalign=".5"  >
		<input file icon="gtk-select-color" ></input><width>5</width><height>5</height>
		<label> "Embeded-Images" </label> <action>lxDummy:mC4</action> </button>
</vbox> 
<hbox>
        <button label="Embedded" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
        <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:01'"</action> </button>
        <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:02'"</action> </button>
        <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>25</width><height>25</height>
			<label> "''" </label><action>"'n:03'"</action> </button>
        <button     tooltip-text="'hash-grn'" ><input file>"'/tmp/EmGr-img-hash-grn.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:04'"</action> </button>
        <button     tooltip-text="'hash-blu'" ><input file>"'/tmp/EmGr-img-hash-blu.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:05'"</action> </button>
        <button     tooltip-text="'hash-red'" ><input file>"'/tmp/EmGr-img-hash-red.xpm'"</input><width>11</width><height>11</height>
			<label> "''" </label><action>"'n:06'"</action> </button>
        <button     tooltip-text="'Check-redred'" ><input file>"'/tmp/EmGr-img-Check-redred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:07'"</action> </button>
        <button     tooltip-text="'Check-grngrn'" ><input file>"'/tmp/EmGr-img-Check-grngrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:08'"</action> </button>
        <button     tooltip-text="'Check-yelyel'" ><input file>"'/tmp/EmGr-img-Check-yelyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:09'"</action> </button>
        <button     tooltip-text="'Check-blublu'" ><input file>"'/tmp/EmGr-img-Check-blublu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:10'"</action> </button>
        <button     tooltip-text="'RectRed'" ><input file>"'/tmp/EmGr-img-RectRed.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:11'"</action> </button>
        <button     tooltip-text="'RectYel'" ><input file>"'/tmp/EmGr-img-RectYel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:12'"</action> </button>
        <button     tooltip-text="'RectBlu'" ><input file>"'/tmp/EmGr-img-RectBlu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:13'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
		<hseparator width-request="124"></hseparator>
</hbox>
<hbox>
       <button label="Images" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
        <button     tooltip-text="'jug-bluxyel'" ><input file>"'/tmp/EmGr-img-jug-bluxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:14'"</action> </button>
        <button     tooltip-text="'jug-grnxorange'" ><input file>"'/tmp/EmGr-img-jug-grnxorange.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:15'"</action> </button>
        <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:16'"</action> </button>
        <button     tooltip-text="'jug-redxgrn'" ><input file>"'/tmp/EmGr-img-jug-redxgrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:17'"</action> </button>
        <button     tooltip-text="'jug-grnxred'" ><input file>"'/tmp/EmGr-img-jug-grnxred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:18'"</action> </button>
        <button     tooltip-text="'jug-redxyel'" ><input file>"'/tmp/EmGr-img-jug-redxyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:19'"</action> </button>
        <button     tooltip-text="'jug-redxblu'" ><input file>"'/tmp/EmGr-img-jug-redxblu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:20'"</action> </button>
        <button     tooltip-text="'Quit_apple-redred'" ><input file>"'/tmp/EmGr-img-apple-redred.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:21'"</action> </button>
        <button     tooltip-text="'Quit_apple-redblu'" ><input file>"'/tmp/EmGr-img-apple-redblu.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:22'"</action> </button>
        <button     tooltip-text="'Quit_apple-redyel'" ><input file>"'/tmp/EmGr-img-apple-redyel.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:23'"</action> </button>
        <button     tooltip-text="'Quit_apple-redgrn'" ><input file>"'/tmp/EmGr-img-apple-redgrn.svg'"</input><width>15</width><height>15</height>
			<label> "''" </label><action>"'n:24'"</action> </button>
        <button label="" has-focus="false" height-request="5"> <action>lxDummy:spacer</action> </button>
		<hseparator width-request="124"></hseparator>
</hbox>
   </vbox>
   </hbox>
</vbox>
</window>'
#!
echo "${MGR_Master_GUI}" > /tmp/EmGr-Master-GUI.txt  ### build Documentation file
echo "### end of Graphical User Interface Code ############ " >> /tmp/EmGr-Master-GUI.txt   # title for "Dump" to screen
#! ## end mainGUI end  # ###################################################
eval "`gtkdialog --center -p MGR_Master_GUI`" 
#!
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
lcMsgStr="------  Main Gui   --- ${EXIT} ----------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------  Fall-Thru  --- ${EXIT} -------------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------  Fall-Thru  --- ${EXIT} ----------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="---------------  Fall-Thru  --- ${EXIT} -------Fall-Thru----" && Sbr_Str2DevTrm "$lcMsgStr" "3" "1"
lcMsgStr="------------------------------------------------------------" && Sbr_Str2DevTrm "$lcMsgStr" "1" "1"
#!
#! ######################################################################
#! function [EXIT:guiDumpPUP]  
if [ "$EXIT" = "guiDumpPUP" ] ; then
    echo "--- Dump/Display Pup Source Code ---"
    n=0
    Sbr_Dump_PUP	# MGR_Pup_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi  # end: EXIT:guiDumpPUP
#!
#! ######################################################################
#! function [EXIT:guiDumpHLP] 
if [ "$EXIT" = "guiDumpHLP" ] ; then
    echo "--- HELP --- Sbr_Dump_HLP --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_HLP	# MGR_Help_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpHLP
#!
#! ######################################################################
#! function [EXIT:guiDumpFAQ]
if [ "$EXIT" = "guiDumpFAQ" ] ; then
    echo "--- FAQ --- Sbr_Dump_FAQ --- ${gcSysDistroName} ---"
    n=0
    Sbr_Dump_FAQ	# MGR_Faq_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpFAQ
#!
#! ######################################################################
#! function [EXIT:guiDumpSRC]
if [ "$EXIT" = "guiDumpSRC" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_SRC ---${gcSysDistroName} ---"
    Sbr_Dump_SRC	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpSRC
#!
#! ######################################################################
#! function [EXIT:guiDumpGUI]
if [ "$EXIT" = "guiDumpGUI" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_GUI ---${gcSysDistroName} ---"
    Sbr_Dump_GUI	# MGR_Src_Box    ### local funxtion name
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#! ######################################################################
#! function [EXIT:guiDumpIMG]
if [ "$EXIT" = "guiDumpIMG" ] ; then
    n=0
    echo "--- Source --- Sbr_Dump_IMG ---${gcSysDistroName} ---"
    Sbr_Dump_IMG
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpGUI
#!
#! ######################################################################
#! function [EXIT:guiDumpUPL]
if [ "$EXIT" = "guiDumpUPL" ] ; then
    n=0
    lcMsgStr="--- UPopLegal --- Sbr_Dump_UPL --- ${gcSysDistroName} ---"
	Sbr_Dump_UPL	# MGR_UPL_Box
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDump_UPL
#!
#! ######################################################################
#! function [EXIT:guiDumpDev]
if [ "$EXIT" = "guiDumpDev" ] ; then
    n=0
    lcMsgStr="--- Dev Notes --- ${gcSysDistroName} ---"
	Sbr_Dump_Dev
    Sbr_Cbx_ReStart 1  # no wait
fi # end: EXIT:guiDumpDev
#!
#! ###########################################################
#! begin: #4 Column   ;;;  QUIT   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###########################################################
#!
#! ######################################################################
#! function [EXIT:guiTop-ReStart]	 
if [ "$EXIT" = "guiTop-ReStart" ] ; then
    n=0
	Sbr_Cold_Splash "Re-Start MGR" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # end: EXIT:guiTop-ReStart
#! ######################################################################
#! function [EXIT:guiS2F-ReStart]
if [ "$EXIT" = "guiS2F-ReStart" ] ; then
    n=0
	Sbr_Cold_Splash "Re-Start MGR" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
    Sbr_Cbx_ReStart 1
fi  # 
#!
#! ######################################################################
#! function [EXIT:guiS2F-ReBoot]
if [ "$EXIT" = "guiS2F-ReBoot" ];then
    n=0
	#
	Sbr_Cold_Splash "Warm ReBoot" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that Warm Reboot can run.
	Sbr_Cbx_ReBoot 1
    EXIT=""	# ## force "Fall Thru" if "exit 0" fails. 
    exit 0
fi
#!
#! ######################################################################
#! function [EXIT:guiS2F-PowerOff]
if [ "$EXIT" = "guiS2F-PowerOff" ] ; then
	#
    n=0
	#
	Sbr_Cold_Splash "Power-Off  via  WrmPowerOff" "1"
	Sbr_ClearFlagsSystem 0  	### clear lockfile so that WrmPowerOff can run.
	#
    Sbr_Cbx_ReQuit 1   # EXIT:guiS2F-PowerOff
	#
    EXIT=""	### force "Fall Thru" in case "exit 0" fails. 
	### "exit 0' should terminate this program. 
    exit 0
fi # # end: ft(EXIT:guiS2F-PowerOff)
#!
#! #######################################################################
#! begin: #4 Column  Main Quit 
#! #######################################################################
#!
#! ###########################################################
#! function [EXIT:guiMainQUIT]   # ACTIVE
if [ "$EXIT" = "guiMainQUIT" ]  ; then
	n=0
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="[ "$EXIT" = "guiMainQUIT+" ]" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="---${gcSysDevDob}---" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="=== MainQUIT ===" && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
	Sbr_ClearFlagsSystem 0   ### no display
    Sbr_ClearFlagsQuit  "0"    ### no display
			#! list of flags to kill:
			#! rm -f "${MGR_TouchCBXstatus}" 
			#! rm -f "${MGR_E3Rstatus}"	
			#! rm -f "${MGR_BackUpStatus}" 
			#! rm -f "${MGR_LockFile}" 
			#! rm -f "${MGR_ReStart_flg}"
	lcMsgStr=" " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    lcMsgStr="... MGR : ReadMe info ! ... " && Sbr_Str2DevTrm "${lcMsgStr}" "2" "7"
    echo
    lcMsgStr=">>>  Hit 'Enter' to clear Terminal <<< "
    Sbr_Str2DevTrm "$lcMsgStr" "3" "7"
    Sbr_Str2DevTrm "$lcMsgStr" "2" "7"
    Sbr_Str2DevTrm "$lcMsgStr" "6" "7"
    echo
    lcMsgStr="       <<< Quit >>>" && Sbr_Str2DevTrm "$lcMsgStr" "1" "3"
    exit 0
fi # end: Now, Fall Out. 
#!
#!
#! ###################################################################################
#! begin: Bottom of MGR Fall-Thru code
#! ;;;  MGR_Fall_Thru_Trap  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#! ###################################################################################
#!
#!
#! ###########################################################
#! function ft(EXIT='')   # ACTIVE
lcMsgStr="======================================= "  &&     Sbr_Str2DevTrm "$lcMsgStr" "3" "5" 
	Sbr_ClearFlagsSystem  0   ### no display
    Sbr_ClearFlagsQuit   "1"   ### no display
    echo "FALL-THRU has final standard 'exit 0'"
	echo "... Will Pop the Stack if Layered ..." 
    exit 0
#! ### end:   "EXIT:QUIT" "EXIT:QUIT+"
#! ###################################################################################
#! end: Bottom of MCI Fall-Thru code
#! ###################################################################################
    #! <text visible="1" editable="false" use-markup="true" xalign=".5"> <label> 
    #! "<span  color='"'green'"' font-family='"'Comic'"' weight='"'bold'"' > <b>'"ooo-"'</b> </span><span color='"'red'"' font-family='"'Comic'"' weight='"'bold'"' size='"'xx-large'"' ><b>'"M.C.I."'</b></span><span color='"'blue'"' font-family='"'Comic'"' weight='"'bold'"' >'-ooo'</span>" 
    #! </label> </text>
#! ##############################################################################
#! rc.z_TXN_EXE.sh will cull most notes. 
#! ##############################################################################
