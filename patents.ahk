DetectHiddenWindows, On
SetTitleMatchMode, RegEx
SetTitleMatchMode, Fast

; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.


;Reload the script w/ ctlrl-alt-shft-r
+^!r::Reload

; ----------- KEY->KEY REMAPPINGS
RWIn::AppsKey
; ----------  END KEY->KEY


;Some Navigational Hotkeys 
^XButton1::Send ^{Left}
^Xbutton2::Send ^{Right}
+^XButton1::Send +^{Left}
+^Xbutton2::Send +^{Right}
+^MButton::Send {Del}
^MButton::Send ^{Del}
!XButton1::Send {Left}
!Xbutton2::Send {Right}
+!XButton1::Send +{Left}
+!Xbutton2::Send +{Right}
!MButton::Send {Del}
;Moving Windows 
#XButton1::Send #{Left}
#Xbutton2::Send #{Right}
#UseHook
;Disables the F1 Key.  Ctrl+F1 now sends F1 
F1::Del
#UseHook off
^F1::Send {F1}



;;; window positioning with windows + qwe
;;;						    asd
;;;							zxc

!q::Send ^!{Numpad7}
!w::Send ^!{Numpad8}
!e::Send ^!{Numpad9}

!a::Send ^!{Numpad4}
!s::Send ^!{Numpad5}
!d::Send ^!{Numpad6}

!z::Send ^!{Numpad1}
!x::Send ^!{Numpad2}
!c::Send ^!{Numpad3}



;to quicky add new hotstring
;^+h::
;InputBox, hotstring, Enter Hotstring, Enter Hotstring abbrev.
;InputBox, expansion, Enter Expansion, Enter Hotrsing Expansion 
;Send :*:%hotstring%::%expansion%
;return

;Docketing
:*:oktc::Ok to clear [ktc]
:*:p1w::Push 1 wk. [ktc]
:*:p1m::Push 1 month [ktc]

;E-mail Signatures 
:*:thxk::Thanks,`nKerry

;E-MAIL TEMPLATES

;General patent expansion
:*:rrc::Review and report correspondence
:*:rvfa::Review correspondence from Foreign Associate

;General patent expansion
:*:`;sec::§
:*:`;Ise::in some examples
:*:`;Ive::in various examples
:*:`;iat::in accordance with the techniques of this disclosure
:*:crsm::computer-readable storage medium
;::crm.::computer-readable medium
::`;ntcrm::non-transitory computer-readable storage medium
:*:instrc::instructions that cause 
:*:al1p::at least one processor
::`;oomp::one or more processors
:*:`;fc::further comprising
:*:cmprs::comprise
:*:instrs::instructions
:*:fig.::FIG.
:*:`;dc::disclosure 
:*:`;dos::disclose or suggest
:*:`;allcl::1-20, 26-45, 52-53, and 56-57
:*:`;oa:o:ffice action
;*:`;ind::independent 
:*:`;incl::independent claims 1, 26, 52 and 56 
::`;35101::35 USC § 101
::`;35112::35 USC § 112
::`;35103::35 USC § 103(a)
::`;35102::35 USC § 102
:*:cls::claims
:*:`;para::¶
::`;wdrwn::withdrawn
:*:`;nfoa::Non-Final Office Action 
:*:`;foa::Final Office Action 
:*:`;toar::the Office Action rejected
:*:`;toaa::the Office Action alleged
:*:`;two::the Written Opinion
:*:`;dona::does not acquiesce
:*:curram::Currently Amended
:*:orgnl::Original
::`;toa::the Office Action
:*:`;techs::techniques
:*:primref::Van Beek, Champion, and Esry
:*:depcl::dependent claims
:*:ivof::in view of
:*:ifvof::in further view of
:*:isota::in support of the allegation 
:*:cncld::Cancelled
:*:apphas::Applicant has
:*:appamd::Applicant has amended claims
::`;ac::Applicant
::`;acs::Applicant's
:*:`;-::–
:*:`;mf::means for
:*:`;qcom::QCOM
:*:`;20::video encoder 20
:*:`;30::video decoder 30
:*:`;110::wireless dockee 110
:*:`;120::wireless docking center 120
:*:`;swo::Second Written Opinion
:*:`;wo::Written Opinion
:*:algd::alleged
:*:ppres::Previously Presented
:*:`;support::Support for Applicant’s new claims 19 and 20 can be found in Applicant’s originally-filed specification, for example at paragraphs [0018], and [0021], as some non-limiting examples.  
:*:`;disagree::Applicant disagrees.  
:*:`;nowhere::Nowhere do the applied references disclose or suggest the features of Applicant's claims.
:*:`;deficiencies::The other applied references fail to cure the deficiencies of the primary reference.
:*:`;similar::Applicant’s claims 19 and 20 recite similar features to claim xx.  
:*:`;non-limiting::as some non-limiting examples.
:*:`;newm::No new matter has been added by way of Applicant's
:*:`;withdrawn::Accordingly, the rejections to Applicant’s claims under 35 USC § 103(a) must be withdrawn.
:*:$date::
	SendInput, %A_MMMM% %A_DD%
	return 

;End general patent expansion

;HP-Specific
::`;webp::when executed by a processor,
:*:`;interviewtask::
SendInput, Hi Deborah, {Enter}
SendInput, When you get a chance, can you add an interview task for %clipboard% ?  I completed the interview today, %A_MMMM% %A_DD%. 
return

^-::–

:*:GUI 102::U
::`;102::user 102
:*:`;16::visual characteristics module 16
;:*:`;2::computing device 2

;Qualcomm-specific
:*:`;qmn::1010-969US01
:*:`;506::DPB management unit 506
;:*:GUP::GPU
;Outlook quick categorization
;not working currently, and not sure why

;Open Patent Record ID
;#p::run, chrome.exe https://ipfusionhpe.anaqua.com/anaqua/Patent/PatentMainDetails.aspx?RecordId=%clipboard%

;Open Eval page of record id
;#e::run, chrome.exe https://ipfusionhpe.anaqua.com/anaqua/Patent/Evaluation.aspx?RecordTypeId=20&RecordId=%clipboard%

;Open Invention Record ID to Committee page
;#c::run, chrome.exe https://ipfusionhpe.anaqua.com/anaqua/Invention/InventionCommitteeReview.aspx?RecordTypeId=19&RecordId=%clipboard%


;Open Google of copied patent number
#g::
StringReplace, clipboard, clipboard, /
StringReplace, clipboard, clipboard, `,
run, chrome.exe https://www.google.com/patents/US%clipboard%
return

;#d::
;StringReplace, clipboard, clipboard, /
;StringReplace, clipboard, clipboard, `,
;run, chrome.exe https://www.google.com/patents/US%clipboard%.pdf
;InputBox, RefName, Reference Name, Type your Reference Name for %clipboard%.
;if ErrorLevel  ; The user pressed Cancel.
;    return
;FileMove, C:\users\creeron\Downloads\US%clipboard%.pdf, c:\users\creeron\Downloads\%RefName% - %clipboard%.pdf
;return



#m:: Run, "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" /c ipm.note

#t:: Run, chrome.exe https://app.clio.com
	


;--------- E-mail Sections -------------
::bkerry::Best,`nKerry



#h::  ; Win+H hotkey
; Get the text currently selected. The clipboard is used instead of
; "ControlGet Selected" because it works in a greater variety of editors
; (namely word processors).  Save the current clipboard contents to be
; restored later. Although this handles only plain text, it seems better
; than nothing:
AutoTrim Off  ; Retain any leading and trailing whitespace on the clipboard.
ClipboardOld = %ClipboardAll%
Clipboard =  ; Must start off blank for detection to work.
Send ^c
ClipWait 
if ErrorLevel  ; ClipWait timed out.
   return
; Replace CRLF and/or LF with `n for use in a "send-raw" hotstring:
; The same is done for any other characters that might otherwise
; be a problem in raw mode:

StringReplace, Hotstring, Clipboard, ``, ````, All  ; Do this replacement first to avoid interfering with the others below.
StringReplace, Hotstring, Hotstring, `r`n, ``r, All  ; Using `r works better than `n in MS Word, etc.
StringReplace, Hotstring, Hotstring, `n, ``r, All
StringReplace, Hotstring, Hotstring, %A_Tab%, ``t, All
StringReplace, Hotstring, Hotstring, `;, ```;, All
Clipboard = %ClipboardOld%  ; Restore previous contents of clipboard.
; This will move the InputBox's caret to a more friendly position:
SetTimer, MoveCaret, 10
; Show the InputBox, providing the default hotstring:
InputBox, Hotstring, New Hotstring, Type your abreviation at the indicated insertion point. You can also edit the replacement text if you wish.`n`nExample entry: :R:btw`::by the way,,,,,,,, :R:`::%Hotstring%
if ErrorLevel  ; The user pressed Cancel.
    return
IfInString, Hotstring, :R`:::
{
    MsgBox You didn't provide an abbreviation. The hotstring has not been added.
    return
}
; Otherwise, add the hotstring and reload the script:
FileAppend, `n%Hotstring%, %A_ScriptFullPath%  ; Put a `n at the beginning in case file lacks a blank line at its end.
Reload
Sleep 200 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The hotstring just added appears to be improperly formatted.  Would you like to open the script for editing? Note that the bad hotstring is at the bottom of the script.
IfMsgBox, Yes, Edit
return

MoveCaret:
IfWinNotActive, New Hotstring
    return
; Otherwise, move the InputBox's insertion point to where the user will type the abbreviation.
Send {Home}{Right 3}
SetTimer, MoveCaret, Off
return

;The following hotkey scripts have been defined with a macro, and may be deleted if you so choose.
