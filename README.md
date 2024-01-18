*(: MGR_Murga_Page_Text.txt

 Menu Framework, Double-Click + Embedded-Image Button in Bash+GTK Script

Post by glene77is » Fri Feb 10, 2023 5:49 pm

Menu Framework, Double-Click <button> and Embeded-Graphics <button>
Written in BASH + GTK code.

:thumbup2: Edited 231220 :thumbup2:
Studies in : Double-Click Button + Embedded-Graphics + BASH + GTK v.1.2

Attached is a little workup I did to begin exploring
the use of Double-Click Button routines
Version: 230523
Seminal idea for embedding graphics is from "june1 2012 Don White (don570)" (thanks)

This Script includes <button> for :
(1) Dumping Source code ,
(2) Dumping GUI code ,
(3) Dumping Image Code
GUI Screen includes a display (with tool-tip to show the name of each image)

This MGR script is POLISHED, and runs "STABLE" on a daily basis, in a dozen different Puppy versions.
The "INTENT" of this "Manager Menu" is:
(1) ....... to demonstrate the Double-Click GTK <button> routines.
(2) ....... to demonstrate the Embedded-Graphics GTK <button> routines.
(3) ....... to identify implementation characteristics of BASH + GTK within the confines of this project.
(4) The "Code Format Method " is chosen to prohibit interaction between BASH code and GTK code .
(5) I have used an old XML code method from SCO-Unix projects
....... which allows for complete separation of BASH code and GTK code.
....... so that all subroutines exhibit 'recruitment compency'..

(*) The BASH coding and GTK coding are standard.
The "GTK MENU" has this process:
-- All GTK menu selections are passed out via the "EXIT" GTK var,
-- All GTK menu selections fall thru to a set of BASH if [ "$EXIT" = "???" ] sub-modules
...... which are placed in bottom of script code
-- All BASH " if []" modules call a set of BASH sub-routines
...... which are placed in the top of the script code .
===> This process keeps BASH language code from interacting with GTK language code.

() The Graphic Images are EMBEDDED in the source code file and written to /root/tmp .
() The GTK + BASH menu method could, possibly, be used as a "frame-work" for building a new interface.
(*) Calls to external routines are "if [ -f " tested, and 'stub' controlled, as needed.
The controlling "flag" (gcSysKillProc) is set at the beginning of the script file.
:roll:
Total project is aprox. 8K lines of Bash/Gtk.

=====================================

** This is Linux Puppy Distro

** This is Free Open Source 

** So, Read the Code ! 

======================================

******:roll:

MGR_Screen-Shot.jpg
    MGR_Screen-Shot.jpg	
    MGR_Screen_231220-1807.jpg (171.46 KiB)

:roll:

:roll:

rc.z_MGR-5-sh-231220-1802.zip
    MGR_Executable_Script_231220-1802	
    (55.99 KiB)


:roll:

Check the script for "MCI" V.3.0 project
in the next POST.
"MCI" is the good example , short version,
Simple Example of Embedded Images and Double-Click Techniques
and intended to be the Model Presentation.
.......
:roll:
TESTING base:

Our script has been tested successfuly
on our 17 running Official Puppy Linux systems :
"Official" Puppy Frugal Systems via Woof-CE :

*** Developed in and Tested on these "official" Puppy 32/64 bit systems built via Woof-CE ***

####### Running Tests on 17 OS, including:

#!~ iso-KineticPup32-22.10+2_____________230604

#!~ iso-BionicPup32-8.0+30_BionicBeaver220407
---- +1,+3,+4,+5,+10, +12, +14, +16, +17, +18 , +19, +20, +21, +23, +24, +25, +26, +27, +28, +29, +30

#!~ iso-BionicPup32-19.03-K5.9_231209.iso_231209

#!~ iso-ManticPup32-23.10+1________231209

#!~ iso-JammyPup32-22.04+8_JammyJellyfish_22123

#!~ iso-UPupFF+D-20.12+4_Focal-Fossa__201210

#!~ iso-UpupTahr-6.0.6-k4.1.30-uefi____190211

#!~ iso-Slacko-7.0_DpupS7_14.2_______220205

#!~ iso-Xenial-64_7.5_XL______________220401

#!~ iso-S15Pup-64_22.12+1-T___________220922

#!~ iso-Quirky_April-7.0.1F-uefi_________200511 beta

#!~ iso_devuanpup-9.7.0-chimaera_4.0_i386211206 beta

#!~ iso_BookwormPup32-23.11-B4__________231210

#!~ iso_LxPupSc-slacko-20.01+0-T-k64__200129

#!~ iso_slacko64_14.2_32-674-bit_compatible_220227

#!~ iso_ManticPup32-23.10+1______________231209

:roll:
Last edited by glene77is on Wed Dec 20, 2023 7:51 pm, edited 25 times in total.

*Just an old Apprentice caught Tinkering in the Master's WorkShop. *
Glen Ellis ( ͡° ͜ʖ ͡° ) K4KKQ , Electronic Engineering :ugeek:
Website: http://www.GeoCities.WS/glene77is :thumbup2:
Electrical Science , Memphis, TN

