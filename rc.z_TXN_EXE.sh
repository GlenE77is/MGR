#!/bin/bash
#
#(: rc.z_TXN_exe.sh
#
#(: TXN-Normal.sh 
#(:    derived from TXN_Pull_All_Code.sh  
#(:style="fill:yellow;stroke:blue;
#(: note:  culls '# ' 
#(: note:  keeps '# <tab>'
#(:


lcSetCtrl=1
set +x   # list of lines 
set +e   # line of error asdf

# ##############
#~ gcSelect=""

#~ export gcSelect="CTX"
#~ export gcSelect="CTB"
#~ export gcSelect="CTB-SL"
export gcSelect="MGR"
#~ export gcSelect="MGS"
#~ export gcSelect="MGT"
#~ export gcSelect="MCI"
#~ export gcSelect="E3R"
#~ export gcSelect="TXN"
# ############## 0:CTX, 1:CTB, 2:CTB-SL, 3:MGR, 4:MCI, 5:E3R, 6:TXN

#(: 
export gcSysDevDob="230705-0700"
export gcSysDevDob="230707-1800"
export gcSysDevDob="230708-0921"
#(: ${gcSysDevDob}
#(:


#~ if [ ! -z $gcSelect ] ; then 
	#~ n=0
 	#~ gxmessage -name "TXN"  -fg yellow -bg green  -center -timeout 7 "---$gcSelect---7seconds"
#~ else
	#~ n=0
 	#~ gxmessage -name "TXN"  -fg yellow -bg red  -center -timeout 7 "---NO Selection---"
	#~ exit
#~ fi

case $gcSelect in 
    "0"|"CTX") 
export gcSrcDirId="CTX" # Directory
export gcSrcFnId="CTX" # ID for Source Code file
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTX/"
export gcTrgFnId="CTX" 
;; 
    "1"|"CTB") 
export gcSrcDirId="CTB" # Directory
export gcSrcFnId="CTB" # ID for Source Code file
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTB/"
export gcTrgFnId="CTB-5.0"  
;;
    "2"|"CTB-SL") 
export gcSrcDirId="CTB" # Directory
export gcSrcFnId="CTB-SL" # ID for Source Code file
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTB-SL/"
export gcTrgFnId="CTB-SL-4-1" 
;;
    "3"|"MCI") 
export gcSrcDirId="MCI" # Directory
export gcSrcFnId="MCI" # ID for Source Code file
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MCI/"
export gcTrgFnId="MCI" 
;;
    "4"|"MGR") 
export gcSrcDirId="MGR" # Directory
export gcSrcFnId="MGR" # ID for Source Code file
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/"
export gcTrgFnId="MGR" 
;;
    "5"|"E3R") 
export gcSrcDirId="E3R" # Directory
export gcSrcFnId="E3R" # ID for Source Code file 
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_E3R/"
export gcTrgFnId="E3R" # Fn+ID for Target file
;;
    "6"|"TXN") 
export gcSrcDirId="TXN" # Directory
export gcSrcFnId="TXN" # ID for Source Code file 
export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_TXN/"
export gcTrgFnId="TXN" # Fn+ID for Target file
;;
*)  gxmessage -name "TXN"  -fg yellow -bg red  -center -timeout 3 "--- esac : Error in Selection ---"
	n=0
	exit
;;
esac



# #################################################################################################
# #################################################################################################

#########################################################################
# NOTE: 
# # this is KSH notation, not always valid in BOURNE shell, nor SH. 
# # only option to skip over error is to set +e .
# set +e
# while IFS=    read -r line; 
# do 
# done
# set -e
#########################################################################

# ##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# System Developer ID 
# export gcSysDevId="TXN"
# these do not change.
export gcTxnDevVer="5.1"
export gcExeId="TXN"   # ID for Executable program  :::   /Edit_subdir , ie, TXN, MGN, CTB, C2M,  ...
export gcExeFn="TXN_exe.sh"   # executable script 
export gcExeAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_TXN/rc.z_TXN_exe.sh" # exe RUN 
# #################################################################################################
# #################################################################################################
export gcSrcFn="rc.z_${gcSrcFnId}.sh" # Source script
export gcSrcAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcSrcDirId}/rc.z_${gcSrcFnId}.sh"
# #################################################################################################

#(: ====================================================================
#(: function "end" must have        }    or    } #
#(: gui end must have gui      </window>'    with 'grave' mark '`' 
#(: "#! " is a permanent marker. tricks grep .
#(:
#(: ====================================================================
#(:
#(: Pull All Code from foreign location
#(: goal #1 : Copy Only Code 
#(:
###^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#~ PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11R7/bin:/root/my-applications/bin/ 
#~ PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11R7/bin:/etc/rc.d:/usr/lib/gtkdialog/:/MY_/usr-share/My_Dev_/Edit_TXN
PATH=$PATH:/etc/rc.d:/usr/lib/gtkdialog/:/MY_/usr-share/My_Dev_/Edit_TXN



#(:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
function Txn_SetVerDts() {     # ACTIVE
#(: ====================================================================
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
export gcCTBparam1="$1"	## "B"  , "U"  , "A"  ## options for "local" control .
export gcCTBparam2="$2" ## "RS" , "RB" , "RQ" ## options to match manager "MGN.sh" .
export gcCTBparam3="$3"
. /etc/DISTRO_SPECS
export gcSysDistroName="${DISTRO_NAME}"
. /etc/rc.d/PUPSTATE
#: export gcVerDtsTmpPS=""	# temp var,  used before/after loading PUPSTATE
#: export gcSysDvar=`date` # not used 
export gcTxnZeroRun="$0"

export gcTxnDts="`date +%y%m%d-%H%M-%S`"     
export gcTxnFnOut="${gcSrcFnId}-Txn-`date +%y%m%d-%H%M-%S`"     

# === begin: Config Reader ==============================================
gcTxnConfigFN="/root/my-applications/bin/Txn_config"	
gcTxnConfigTrgPrefix=""			

	#~ if [ -f ${gcTxnConfigFN} ]  ; then  
		#~ n=0
        #~ #: if config, then read AS-IS 
        #~ #: CTB : this will 'cat a single line of data into a var .
		#~ gcTxnConfigTrgPrefix=`cat ${gcCtbConfigFN}`
		#~ #: now we have the alternate target subdir for casting the new saveDATA.tar.gz
	#~ else	
		#~ lnDummy=1
        #~ touch ${gcTxnConfigFN} 	
        #~ #: else not config file found, simply cast into local saveDATA home file.
	#~ fi

export gcTxnConfigTrgPrefix="${gcCtbConfigTrgPrefix}"	
# === end: Config Reader ==============================================
#	
} #( end: fx(Txn_SetVerDts) 
export -f Txn_SetVerDts



    
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#~ function X-PBKP_validate_BACKUP_location() { # $PBKP_BACKUP_PATH

	#~ if [ "${1}" != "" ]; then 
		#~ IFS="/" read -r a direntry level2 level3 level4 <<< "${1}"
		#~ #                /mnt     /home  /psubidir                /mnt/sda2/etc
		#~ if [ "$direntry" = "mnt" ] && [ "$level2" != "" ] ; then
			#~ echo -n "${1}"
		#~ elif [ "$direntry"/"$level2" = "initrd/mnt" ] && [ "$level3" != "" ] ; then
			#~ echo -n "${1}"
		#~ fi
    #~ else
		#~ echo -n "$PBKP_LOCDEFAULT"
	#~ fi
#~ } # end: fx(X-PBKP_validate_BACKUP_location)

#~ echo "${PBKP_LOCDEFAULT}"    | PBKP_validate_BACKUP_location
#~ echo "'\${PBKP_BACKUP_PATH}'"
#~ echo "'${PBKP_validate_BACKUP_location $gcSrcAll}'"




#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
function Txn_ReStart() { 
    n=0
    #~ ${gcTxnZeroRun}
} # end: Txn_ReStart
export -f Txn_ReStart


########################################################################
### function Txn_Run ############################################################
########################################################################
########################################################################
### function Txn_Run ############################################################
########################################################################
########################################################################
### function Txn_Run ############################################################
########################################################################
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#
function Txn_Run() {   

lcpSrcId=$1
lcpSrcFn=$2
lcpSrcAll=$3

# global Src: Txn_Run ${gcSrcFnId}  ${gcSrcFn} ${gcSrcAll}  
# process FnSrcAll into Fn0, Fn1, Fn2, FnX


### 1 ######################################################################
    echo "=============================="
    echo "=== parmSrcId:  ${lcpSrcId}"
    echo "=== parmSrcFn:  ${lcpSrcFn}"
    echo "=== parmSrcAll: "
    echo ":${lcpSrcAll}:"
    echo "=============================="

    echo " "
    echo "#: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
    echo ">>> {lcpSrcAll} into 'Fn0' copy of original without blank lines"
    echo ">>> grep ${lcpSrcAll}"
    echo ">>> grep ${lcpTrgAll}"
    echo ""
    sleep 1
#~ read

# global Src: Txn_Run ${gcSrcFnId}  ${gcSrcFn} ${gcSrcAll}  

### 2 ###########################################################################
### Begin: bulding 'Fn0' 'backup' copy of original Source without blank lines ===
###
lcFnSrcAll="${lcpSrcAll}"
lcFnTrg0="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/TXN_code-0.sh"

        echo " "
        echo "#: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
        echo "#>>> grep 'Src' into '0' with No Blank lines"   #> "${lcFnTrg0}"

   grep -v '^$' ${lcFnSrcAll} > ${lcFnTrg0}

        echo "<<<"
        echo "=== DONE bulding 'Fn0' copy of original Source without blank lines ==="

#~ read
#~ exit

### 3 ############################################################################
### Begin: bulding 'Fn1' 'working' copy of original Source without blank lines ===
###
lcFnSrc0="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/TXN_code-0.sh"
lcFnTrg1="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/TXN_code-1.sh"

        echo " "
        echo "#: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
        echo "# >>> grep '0' into '1' for No Blank lines>>>"   #> ${lcFnTrg1}  

   grep -v '^$'  ${lcFnSrc0} > ${lcFnTrg1}

        echo "<<<"
        echo "=== DONE bulding '1' copy of original Source without blank lines ==="
                   
#~ read
#~ exit 0

### 4 ######################################################################
### extract all #(: comments 

    echo " "
    echo "#: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"
    echo ">>> grep '1' into 'C' Comments for System Comments"    #> ${lcFnTrgC}  
    echo ">>> so Src1 is code only. "
    echo ""

    ###
    echo " "

    lcFnSrcCode1="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_TXN/TXN_code-1.sh"

    lcFnTrgCodeC="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_TXN/TXN_code-C.sh"
    echo " " > ${lcFnTrgCodeC}  
    chmod +x ${lcFnTrgCodeC}

    grep  '#(:'  ${lcFnSrcCode1} > ${lcFnTrgCodeC}           # "." transfers SrcFile if  "#(:"   

                    # FnAllComment: OK # # OK # # OK # # OK # 

    echo "=== DONE bulding 'C' Comments ==="

#~ read
#~ exit 





### 5 ######################################################################
### extract all #(: comments plus all code lines

#########################################################################
echo ""
echo "#========================================================"
echo "=== function: ( '1' into '2' ) =============================="
echo "--- reading 'Fn1' 'Source' "
echo "---  SCAN to Cull program comments"
echo "--- while IFS=    read -r line;  ============================="
echo "=== scanning/culling '1' -> '2' -> 'RUN' -> 'ID-Run-Dts' ======="
echo ''
# it must work on any valid Unicode code point
# lcLineVar=$' \t abc \t ' echo "=${lcLineVar##+([[:space:]])}="

lcFnSrc1="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcExeId}_code-1.sh" # Fn"1"
lcFnTrg2="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcExeId}_code-2.sh" # Fn"2" 
echo "#  ${gcSrcFnId} TXN generated !!!" > ${lcFnTrg2}  ### prepended "#!" blocks shebang . 
chmod +x ${lcFnTrg2}

    echo "=============================="
    echo "=== parmSrcId:  ${lcpSrcId}"
    echo "=== parmSrcFn:  ${lcpSrcFn}"
    echo "=== parmSrcAll: "
    echo ":${lcpSrcAll}:"
    echo "=============================="
    echo ""
    
lciLineCnt=0

echo "====================================================================="
echo "--- while IFS=    read -r line;  ============================="
echo "=== while IFS ====== SCANNING  ${line} to CULL program comments"
echo "====================================================================="
echo "::: begin: IFS at Line # ${lciLineCnt} ::: "

#~ if [ lcSetCtrl ] ; then ### IFS always returns a non'0' value
    #~ set -e
#~ fi

#~ GTKPIDIFN=9999999

# this is KSH notation, not always valid in BOURNE shell. 
# will always gen err flg !  -e will detect this err flg.
# only option is to skip over error, by set +e .
#  `date -%H%M-%S`

echo "--- while IFS=    read -r line;  ============================="
while IFS=    read -r line; 
# feeds whole file !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
do 
# feeds whole file !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	#! =================================================================
    (("lciLineCnt++")) 
	#! =================================================================
	#! Flipping Working Splash Five Colors : Blk, Yel, Ora, Red, Grn 
    if [ $(expr $lciLineCnt % 100) = "20" ]; then
        echo -n "_${lciLineCnt}"
		lcMsgStr="${lcpSrcFn} TXN # ${lciLineCnt}"
		/usr/lib/gtkdialog/box_splash -fg black -bg yellow -timeout 1  -text "..${lcMsgStr}" &
		GTKPIDIFN=$!
		sleep .01 	# must wait, else box_splash will not have time to display message
		kill ${GTKPIDIFN}
    fi
    if [ $(expr $lciLineCnt % 100) = "40" ]; then
        echo -n "_${lciLineCnt}"
		lcMsgStr="${lcpSrcFn} TXN # ${lciLineCnt}"
		/usr/lib/gtkdialog/box_splash -fg yellow -bg green -timeout 1  -text "...${lcMsgStr}" &
		GTKPIDIFN=$!
		sleep .01 	# must wait, else box_splash will not have time to display message
		kill ${GTKPIDIFN}
    fi
    if [ $(expr $lciLineCnt % 100) = "60" ]; then
        echo -n "_${lciLineCnt}"
		lcMsgStr="${lcpSrcFn} TXN # ${lciLineCnt}"
		/usr/lib/gtkdialog/box_splash -fg orange -bg blue -timeout 1  -text "....${lcMsgStr}" &
		GTKPIDIFN=$!
		sleep .01 	# must wait, else box_splash will not have time to display message
		kill ${GTKPIDIFN}
    fi
    if [ $(expr $lciLineCnt % 100) = "80" ]; then
        echo -n "_${lciLineCnt}"
		lcMsgStr="${lcpSrcFn} TXN # ${lciLineCnt}"
		/usr/lib/gtkdialog/box_splash -fg red -bg yellow -timeout 1  -text ".....${lcMsgStr}" &
		GTKPIDIFN=$!
		sleep .01 	# must wait, else box_splash will not have time to display message
		kill ${GTKPIDIFN}
    fi
    if [ $(expr $lciLineCnt % 100) = "100" ]; then
        echo -n "_${lciLineCnt}"
		lcMsgStr="${lcpSrcFn} TXN # ${lciLineCnt}"
		/usr/lib/gtkdialog/box_splash -fg green -bg orange -timeout 1  -text ".....${lcMsgStr}" &
		GTKPIDIFN=$!
		sleep .01 	# must wait, else box_splash will not have time to display message
		kill ${GTKPIDIFN}
    fi
	#! =================================================================

		#~ kill ${GTKPIDIFN}

    i=0

    lcLineVar="$line"   # transfer to 'var' 
    lciVar=""

	#! =================================================================
    for i in $(seq 1 ${#lcLineVar}); do   # 2 bytes 
            n=0        
            # "lcLineVar" is the WHOLE "line" 
            lcLineVarX="$(echo -e "${lcLineVar}" | sed -e 's/^[[:space:]]*//')"
            lciVar2="${lcLineVarX:i-1:2}"  # 2 bytes from ltrim var
            lciVar3="${lcLineVarX:i-1:3}"  # 3 bytes from ltrim var
  
            #! CULL  "BashComment" : prob: only works at left margin, not tabbed, not spaced 
            #! so, to Cull program comments, we setup to extract remainder via  grep -v into #2
            #! TRAP all remainining "comments" . 
            if  [ "${lciVar2}" = "#~" ] || [ "${lciVar2}" = "# " ]  || [ "${lciVar2}" = "#:" ]    ;  then
                n=0
                break  > /dev/null   # end of line parse. 
            else
							#! still must cull "#(:"     #### old 'fox' char3 style comment
							#~ if  [ "${lciVar3}" = "#(:" ] ; then
								#~ n=0
								#~ break  > /dev/null   # end of line parse. 
							#~ fi
                #! KEEP "notes" 
                n=0
                #: keep "#:" code notes
                #:
                #! keep "#!" system notes
                #! 
                #!## Build WHOLE "line" into Fn2  
                echo "${lcLineVar}" >> ${lcFnTrg2}    # OK output to file. 
                break   # end of line parse loop, break to "while IFS=    read -r line;"
                #!
            fi # fall-thru to 'continue' iterating "line" 

    done   # includes spaces.evaluates to the value of $var, unless $var isn't set in which case it evaluates to the text "default"
	#! =================================================================

# feeds whole file !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
done < "${lcFnSrc1}"  
# feeds whole file !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

echo ""
echo "::: end: IFS at ${lciLineCnt} ::: "
echo "====================================================================="
echo "=== while IFS ====== SCANNING Fn1 to CULL program comments"
echo "====================================================================="
echo ""
sleep 1

#~ if [ lcSetCtrl ] ; then 
    #~ set +e
#~ fi

#~ read
#~ exit


### 11 ######################################################################

sync
echo "#================================================================="
echo "=== (11) BUILD: 'TXN_code-RUN'  ==================================="
echo "#================================================================="
echo ""
sleep .1

lcFnSrc2="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcExeId}_code-2.sh" # Fn"2"  
# function Sbr_CDW_EGI_Short() {Fn SrcRun  for GEANY

lcFnTrgRun="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcExeId}_code-RUN.sh" # TXN_code-RUN.sh"
#~ echo "# ${lcFnTrgRun} " > ${lcFnTrgRun}  
echo "#" > ${lcFnTrgRun}  
chmod +x ${lcFnTrgRun}

cp -v  "$lcFnSrc2"   "$lcFnTrgRun"   # build # TXN_code-RUN.sh"
chmod +x ${lcFnTrgRun}


### 21 ######################################################################
echo "#================================================================="
#~ echo "=== (21) BUILD: 'TXN_code-RUN'+dts to Src Subdir  ================="
echo "=== (21) BUILD: 'TXN.sh to Src Subdir  ================="
echo "#======================================================read======="
echo ""
sleep .1

#~ echo "### copy to TXN_code-RUN ### " 
#~ chmod +x ${lcFnRunIdDts}

lcFnSrc2="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcExeId}_code-2.sh" # Fn"2"  
# CTB_Txn_ gcTrgFnId dts.sh
#~ lcFnRunIdDts="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcTrgFnId}_Txn_${gcTxnDts}.sh" # ID DTS

lcFnSrcId_Dts="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcSrcDirId}/${gcTrgFnId}_TXN_${gcTxnDts}.sh" # ID DTS

lcFnSrcIdDts="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcSrcDirId}/${gcTrgFnId}_TXN.sh" # ID 

echo "lcFnRunIdDts=> "   # Build Special lcFnSrcIdDts   file.sh
echo "${lcFnSrcIdDts}"   # Build Special lcFnSrcIdDts   file.sh

cp -v  "$lcFnSrc2"   "$lcFnSrcIdDts" > /dev/null 
chmod +x ${lcFnSrcIdDts}

cp -v  "$lcFnSrc2"   "$lcFnSrcId_Dts" > /dev/null 
chmod +x ${lcFnSrcId_Dts}

#~ set +e
### working (end) TXN_RUN 


#DIRECTORY="${DIR##/*/}"
#~ gcFnOrgIdDtscut="${gcFnOrgIdDtscut##/*/}"
#~ gcFnOrgIdDtscut=$(echo $gcFnOrgIdDts} | cut -d '/' -f3)
#~ echo "${gcFnOrgIdDts}:"
#~ gcFnOrgIdDtsFn="${gcFnOrgIdDts##/*/}"
#~ echo "${gcFnOrgIdDts##/*/}"
#~ echo "${gcFnOrgIdDts}:"


### 31 ######################################################################
echo ""
#~ echo "#=== END ==========================================================="
echo ""
echo "Build into:    Target Fn = :Txn_code-RUN-${gcSrcFnId}.sh:"
echo "Build into:    Distro Fn = :"
echo "${gcFnOrgIdDts}.sh:"
echo "Final Build: {${gcFnOrgIdDts##/*/}}"
gcFnOrgIdDtscut="$(echo $gcFnOrgIdDts} | cut -d '/' -f9)"
echo "{${gcFnOrgIdDtscut}"
echo "#================================================================="
#~ echo "=== DONE ( 0,C,1,2, code-RUN, /SrcSubDir/Fn+dts ) ================"
#~ echo "#================================================================="

#~ sync

#~ gxmessage -name "IIF" -bg yellow    -center -timeout 1  "_${lcpSrcFn} TXN # DONE " &
### ???

		#~ /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -timeout 1 -text "TXN # DONE  ${lciLineCnt}" &
			#~ GTKPIDIFN=$!
			#~ sleep 3 
		#~ kill ${GTKPIDIFN}


#~ /usr/lib/gtkdialog/box_splash -fg yellow -bg red -border true  -close never -text "
#~ ${lcpSrcFn} TXN # DONE
#~ " &
			#~ GTKPIDIFN=$!
			#~ sleep 7 
#~ read
		#~ kill ${GTKPIDIFN}

#~ exit

} # end: function Txn_Run
########################################################################
########################################################################
########################################################################
########################################################################










########################################################################
### main() #############################################################
### main() #############################################################
### main() #############################################################
########################################################################


#~ exit
#~ read
#~ exit
#(: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#(: Standard 
#(: ${gcSD_IdExeID}_0.sh MUST contain the SOURCE 
#(: TXN_exe.sh  runs on gcSrc* file from a "foreign" subdir.
#(: TXN_exe.sh  writes to ${gcSD_IdExeID} location, "local".

#(: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ move to top header below gcSysDOB
#~ gcSrcFnId="CTB" # ID for Source Code 
#~ gcSrcFn="rc.z_${gcSrcFnId}.sh" # Source script
#~ gcSrcAll="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcSrcFnId}/rc.z_${gcSrcFnId}.sh"
#(: ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

gcFnTrg="${gcSrcFnId}_Txn_code-2.sh"
gcFnTrgX2="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcSrcFnId}_Txn_code-2.sh"
gcTxnDts="`date +%y%m%d-%H%M-%S`"     
gcFnTrgX="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/${gcSrcFnId}_Txn_${gcTxnDts}.sh"
gcFnOrgIdDts="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcSrcDirId}/${gcTrgFnId}_Txn_${gcTxnDts}.sh" # ID DTS

#~ export lcFnOrgIdDts="${lcFnOrgIdDts}"

Txn_SetVerDts

export PBKP_LOCDEFAULT="/mnt/home${PSUBDIR}"
# export PBKP_BACKUP_PATH=$(PBKP_validate_BACKUP_location)




### #1 ### copy original to TXN "0" file
gcFnTrg="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_${gcExeId}/TXN_code-0.sh" # plus extensions

echo ""
echo ""
echo ""
echo "$gcGaeBusyBox"

echo "#################################################################"
echo "=== Main Menu === TXN ===  ${gcSysDevDob} === ==================="
echo ""
echo "SrcId: ${gcSrcFnId}:   SrcFn = :${gcSrcFn}:"
echo "SrcAll: ${gcSrcAll}:"
echo ""
echo "Build into:    Target Fn = :Txn_code-RUN-${gcSrcFnId}.sh:"
echo "Build into:    Distro Fn = :"
echo "${gcFnOrgIdDts}:"
echo "Final Build: {${gcFnOrgIdDts##/*/}}"   #  ONLY FN : "CTB-SL-4.0-230117.sh"

#~ gcFnOrgIdDtscut="$(echo $gcFnOrgIdDts} | cut -d '/' -f9)"
#~ echo "{${gcFnOrgIdDtscut}"

#~ # $cut -d "delimiter" -f (field number) file.txt
#~ gcFnOrgIdDtscut="$(echo $gcFnOrgIdDts} | cut -d '/' -f5)"
#~ echo "${gcFnOrgIdDtscut}.sh:///"
#~ echo "Final Build: ${gcFnOrgIdDts##/*/}"

#~ gcFnOrgIdDtscut="`echo "$gcFnOrgIdDts" | cut -f 5 -d ','`" 
#~ echo "${gcFnOrgIdDtscut}.sh:///"

#~ echo "${gcFnOrgIdDtscut}.sh:"
echo ""
echo "================================================ read ==========="
echo "=== hit RETURN to run program ===" 
echo "=== else close Xterm  or Ctrl-C' "
echo "================================================ read ==========="


#~ exit


Txn_Run ${gcSrcFnId}  ${gcSrcFn} ${gcSrcAll}  # process FnSrcAll into Fn0, Fn1, Fn2, FnX


#~ echo ""
#~ echo ""
#~ echo ""
echo "#################################################################"
echo "=== DONE: === TXN === ${gcSysDevDob}=== Main ===================="
echo "=== DONE: === TXN === ${gcSysDevDob}=== Main ===================="
echo "=== DONE: === TXN === ${gcSysDevDob}=== Main ===================="
echo "#################################################################"
echo ""
echo ""



#~ read
#~ exit
### DONE ###




########################################################################
### FINISHED #####################################################################
########################################################################
########################################################################
### FINISHED #####################################################################
########################################################################
########################################################################
### FINISHED #####################################################################
########################################################################



########################################################################
### END of TXN active source-code ######################################
########################################################################
########################################################################
########################################################################
### END ### END ### END ################################################
### END ### END ### END ################################################
### END ### END ### END ################################################
########################################################################



#~ case $gcSelect in 
    #~ 0|"CTX") 
#~ export gcSrcDirId="CTX" # Directory
#~ export gcSrcFnId="CTX" # ID for Source Code file
#~ export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTX/"
#~ export gcTrgFnId="CTX-5.0" # Fn+ID for Target file 
#~ ;;
    #~ 1|"CTB") 
#~ export gcSrcDirId="CTB" # Directory
#~ export gcSrcFnId="CTB" # ID for Source Code file
#~ export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTB/"
#~ export gcTrgFnId="CTB-5.0" # Fn+ID for Target file
#~ ;;
    #~ 2|"CTB-SL") 
#~ export gcSrcDirId="CTB" # Directory
#~ export gcSrcFnId="CTB-SL" # ID for Source Code file
#~ export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_CTB/"
#~ export gcTrgFnId="CTB-SL-4-1" # Fn+ID for Target file
#~ ;;
    #~ 3|"MGR") 
#~ export gcSrcDirId="MGR" # Directory
#~ export gcSrcFnId="MGR" # ID for Source Code file
#~ export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_MGR/"
#~ export gcTrgFnId="MGR" # Fn+ID for Target file
#~ ;;
    #~ 4|"E3R") 
#~ export gcSrcDirId="E3R" # Directory
#~ export gcSrcFnId="E3R" # ID for Source Code file 
#~ export gcSrcSubDir="/initrd/mnt/dev_save/MY_/usr-share/My_Dev_/Edit_E3R/"
#~ export gcTrgFnId="E3R" # Fn+ID for Target file
#~ ;;
#~ esac
#! #####################################################################
#!
#(: method of Programmer Docs and Linux Comments.
#! method of Programmer Docs and Linux Comments.
#! "#(:" Docs are transferred  by "TXN" into "comments.txt"
#!       used for Prog Dox to build Documentation for project . 
#!       TXN will pull these out to a separate file for project. 
#!         #(: effectively becomes a 'cut' line
#!
#! "#!"  are program dox, "Keepers". 
#!
#! "#~" , "# " , "#:" 
#!    regular Comments are Culled via "TXN"
#!       TXN will kill these common comments, for min prog/script size.
#!
#! "#" are BASH comments, must not have a "space" following. 
#(:
#! #####################################################################
#!
# control :
# if [ lcSetCtrl ] ; then
    # set -x
    # set -e
# fi
# #################################################################################################
# error line ~ 300-320, grep to 'C', rc.z_TXN_exe.sh no such file or directory
# if writing is commented, then error on next "IFS do done" loop
# #################################################################################################

