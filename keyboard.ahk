;    -*- mode: ahk -*-

;; Copyright (c) 2016 - 2018 Liu233w
;;
;; Author: Liu233w <wwwlsmcom@outlook.com>
;; URL: https://github.com/Liu233w/keyboard.ahk
;;
;;; License: WTFPL (http://www.wtfpl.net/)

; 全局变量;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
KeyboardOn := 1              ; 是否启用快捷键
KeyboardCaps := ""            ; 是否开启大写锁定
IconNum := A_ScriptDir . "\number.ico" ;状态图标的路径
IconMark := A_ScriptDir . "\mark.ico"
;工具栏图标，用于指示KeyboardOn的状态
Menu, Tray, Icon, %IconMark%, , 1
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; RAlt的详细设定：单独按下时是ESC
*RAlt::                     ; 保证先按下修饰键，后按下 RAlt 时效果相同
RAlt::
RAlt2 := RAlt := 1
KeyWait, RAlt
if RAlt2
  SendInput, {Esc}
RAlt2 := RAlt := ""
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;RAlt的组合键;;;;;;;;;;;;;;;;;;;;;;;;;;
#If RAlt

a::

SendInput, {Home}
RAlt2 := ""
Return

!a::

SendInput, !{Home}
RAlt2 := ""
Return

^a::

SendInput, ^{Home}
RAlt2 := ""
Return

+a::

SendInput, +{Home}
RAlt2 := ""
Return

+!a::

SendInput, +!{Home}
RAlt2 := ""
Return

+^a::

SendInput, +^{Home}
RAlt2 := ""
Return

!^a::

SendInput, !^{Home}
RAlt2 := ""
Return

!^+a::

SendInput, !^+{Home}
RAlt2 := ""
Return

e::

SendInput, {End}
RAlt2 := ""
Return

!e::

SendInput, !{End}
RAlt2 := ""
Return

^e::

SendInput, ^{End}
RAlt2 := ""
Return

+e::

SendInput, +{End}
RAlt2 := ""
Return

+!e::

SendInput, +!{End}
RAlt2 := ""
Return

+^e::

SendInput, +^{End}
RAlt2 := ""
Return

!^e::

SendInput, !^{End}
RAlt2 := ""
Return

!^+e::

SendInput, !^+{End}
RAlt2 := ""
Return

b::

SendInput, {Left}
RAlt2 := ""
Return

!b::

SendInput, !{Left}
RAlt2 := ""
Return

^b::

SendInput, ^{Left}
RAlt2 := ""
Return

+b::

SendInput, +{Left}
RAlt2 := ""
Return

+!b::

SendInput, +!{Left}
RAlt2 := ""
Return

+^b::

SendInput, +^{Left}
RAlt2 := ""
Return

!^b::

SendInput, !^{Left}
RAlt2 := ""
Return

!^+b::

SendInput, !^+{Left}
RAlt2 := ""
Return

n::

SendInput, {Down}
RAlt2 := ""
Return

!n::

SendInput, !{Down}
RAlt2 := ""
Return

^n::

SendInput, ^{Down}
RAlt2 := ""
Return

+n::

SendInput, +{Down}
RAlt2 := ""
Return

+!n::

SendInput, +!{Down}
RAlt2 := ""
Return

+^n::

SendInput, +^{Down}
RAlt2 := ""
Return

!^n::

SendInput, !^{Down}
RAlt2 := ""
Return

!^+n::

SendInput, !^+{Down}
RAlt2 := ""
Return

p::

SendInput, {Up}
RAlt2 := ""
Return

!p::

SendInput, !{Up}
RAlt2 := ""
Return

^p::

SendInput, ^{Up}
RAlt2 := ""
Return

+p::

SendInput, +{Up}
RAlt2 := ""
Return

+!p::

SendInput, +!{Up}
RAlt2 := ""
Return

+^p::

SendInput, +^{Up}
RAlt2 := ""
Return

!^p::

SendInput, !^{Up}
RAlt2 := ""
Return

!^+p::

SendInput, !^+{Up}
RAlt2 := ""
Return

f::

SendInput, {Right}
RAlt2 := ""
Return

!f::

SendInput, !{Right}
RAlt2 := ""
Return

^f::

SendInput, ^{Right}
RAlt2 := ""
Return

+f::

SendInput, +{Right}
RAlt2 := ""
Return

+!f::

SendInput, +!{Right}
RAlt2 := ""
Return

+^f::

SendInput, +^{Right}
RAlt2 := ""
Return

!^f::

SendInput, !^{Right}
RAlt2 := ""
Return

!^+f::

SendInput, !^+{Right}
RAlt2 := ""
Return

1::

SendInput, {F1}
RAlt2 := ""
Return

!1::

SendInput, !{F1}
RAlt2 := ""
Return

^1::

SendInput, ^{F1}
RAlt2 := ""
Return

+1::

SendInput, +{F1}
RAlt2 := ""
Return

+!1::

SendInput, +!{F1}
RAlt2 := ""
Return

+^1::

SendInput, +^{F1}
RAlt2 := ""
Return

!^1::

SendInput, !^{F1}
RAlt2 := ""
Return

!^+1::

SendInput, !^+{F1}
RAlt2 := ""
Return

2::

SendInput, {F2}
RAlt2 := ""
Return

!2::

SendInput, !{F2}
RAlt2 := ""
Return

^2::

SendInput, ^{F2}
RAlt2 := ""
Return

+2::

SendInput, +{F2}
RAlt2 := ""
Return

+!2::

SendInput, +!{F2}
RAlt2 := ""
Return

+^2::

SendInput, +^{F2}
RAlt2 := ""
Return

!^2::

SendInput, !^{F2}
RAlt2 := ""
Return

!^+2::

SendInput, !^+{F2}
RAlt2 := ""
Return

3::

SendInput, {F3}
RAlt2 := ""
Return

!3::

SendInput, !{F3}
RAlt2 := ""
Return

^3::

SendInput, ^{F3}
RAlt2 := ""
Return

+3::

SendInput, +{F3}
RAlt2 := ""
Return

+!3::

SendInput, +!{F3}
RAlt2 := ""
Return

+^3::

SendInput, +^{F3}
RAlt2 := ""
Return

!^3::

SendInput, !^{F3}
RAlt2 := ""
Return

!^+3::

SendInput, !^+{F3}
RAlt2 := ""
Return

4::

SendInput, {F4}
RAlt2 := ""
Return

!4::

SendInput, !{F4}
RAlt2 := ""
Return

^4::

SendInput, ^{F4}
RAlt2 := ""
Return

+4::

SendInput, +{F4}
RAlt2 := ""
Return

+!4::

SendInput, +!{F4}
RAlt2 := ""
Return

+^4::

SendInput, +^{F4}
RAlt2 := ""
Return

!^4::

SendInput, !^{F4}
RAlt2 := ""
Return

!^+4::

SendInput, !^+{F4}
RAlt2 := ""
Return

5::

SendInput, {F5}
RAlt2 := ""
Return

!5::

SendInput, !{F5}
RAlt2 := ""
Return

^5::

SendInput, ^{F5}
RAlt2 := ""
Return

+5::

SendInput, +{F5}
RAlt2 := ""
Return

+!5::

SendInput, +!{F5}
RAlt2 := ""
Return

+^5::

SendInput, +^{F5}
RAlt2 := ""
Return

!^5::

SendInput, !^{F5}
RAlt2 := ""
Return

!^+5::

SendInput, !^+{F5}
RAlt2 := ""
Return

6::

SendInput, {F6}
RAlt2 := ""
Return

!6::

SendInput, !{F6}
RAlt2 := ""
Return

^6::

SendInput, ^{F6}
RAlt2 := ""
Return

+6::

SendInput, +{F6}
RAlt2 := ""
Return

+!6::

SendInput, +!{F6}
RAlt2 := ""
Return

+^6::

SendInput, +^{F6}
RAlt2 := ""
Return

!^6::

SendInput, !^{F6}
RAlt2 := ""
Return

!^+6::

SendInput, !^+{F6}
RAlt2 := ""
Return

7::

SendInput, {F7}
RAlt2 := ""
Return

!7::

SendInput, !{F7}
RAlt2 := ""
Return

^7::

SendInput, ^{F7}
RAlt2 := ""
Return

+7::

SendInput, +{F7}
RAlt2 := ""
Return

+!7::

SendInput, +!{F7}
RAlt2 := ""
Return

+^7::

SendInput, +^{F7}
RAlt2 := ""
Return

!^7::

SendInput, !^{F7}
RAlt2 := ""
Return

!^+7::

SendInput, !^+{F7}
RAlt2 := ""
Return

8::

SendInput, {F8}
RAlt2 := ""
Return

!8::

SendInput, !{F8}
RAlt2 := ""
Return

^8::

SendInput, ^{F8}
RAlt2 := ""
Return

+8::

SendInput, +{F8}
RAlt2 := ""
Return

+!8::

SendInput, +!{F8}
RAlt2 := ""
Return

+^8::

SendInput, +^{F8}
RAlt2 := ""
Return

!^8::

SendInput, !^{F8}
RAlt2 := ""
Return

!^+8::

SendInput, !^+{F8}
RAlt2 := ""
Return

9::

SendInput, {F9}
RAlt2 := ""
Return

!9::

SendInput, !{F9}
RAlt2 := ""
Return

^9::

SendInput, ^{F9}
RAlt2 := ""
Return

+9::

SendInput, +{F9}
RAlt2 := ""
Return

+!9::

SendInput, +!{F9}
RAlt2 := ""
Return

+^9::

SendInput, +^{F9}
RAlt2 := ""
Return

!^9::

SendInput, !^{F9}
RAlt2 := ""
Return

!^+9::

SendInput, !^+{F9}
RAlt2 := ""
Return

0::

SendInput, {F10}
RAlt2 := ""
Return

!0::

SendInput, !{F10}
RAlt2 := ""
Return

^0::

SendInput, ^{F10}
RAlt2 := ""
Return

+0::

SendInput, +{F10}
RAlt2 := ""
Return

+!0::

SendInput, +!{F10}
RAlt2 := ""
Return

+^0::

SendInput, +^{F10}
RAlt2 := ""
Return

!^0::

SendInput, !^{F10}
RAlt2 := ""
Return

!^+0::

SendInput, !^+{F10}
RAlt2 := ""
Return

-::

SendInput, {F11}
RAlt2 := ""
Return

!-::

SendInput, !{F11}
RAlt2 := ""
Return

^-::

SendInput, ^{F11}
RAlt2 := ""
Return

+-::

SendInput, +{F11}
RAlt2 := ""
Return

+!-::

SendInput, +!{F11}
RAlt2 := ""
Return

+^-::

SendInput, +^{F11}
RAlt2 := ""
Return

!^-::

SendInput, !^{F11}
RAlt2 := ""
Return

!^+-::

SendInput, !^+{F11}
RAlt2 := ""
Return

=::

SendInput, {F12}
RAlt2 := ""
Return

!=::

SendInput, !{F12}
RAlt2 := ""
Return

^=::

SendInput, ^{F12}
RAlt2 := ""
Return

+=::

SendInput, +{F12}
RAlt2 := ""
Return

+!=::

SendInput, +!{F12}
RAlt2 := ""
Return

+^=::

SendInput, +^{F12}
RAlt2 := ""
Return

!^=::

SendInput, !^{F12}
RAlt2 := ""
Return

!^+=::

SendInput, !^+{F12}
RAlt2 := ""
Return


;    -*- mode: ahk -*-
; RAlt+TAB 是大写锁定
TAB::
if (KeyboardCaps = 1)
{
  SetCapsLockState, off
  KeyboardCaps := ""
}
else
{
  SetCapsLockState, on
  KeyboardCaps := 1
}
RAlt2 := ""
return

; RAlt+` 来开关快捷键
`::
if (KeyboardOn = 1)
{
  KeyboardOn := ""
  Menu, Tray, Icon, %IconMark%, , 1
}
else
{
  KeyboardOn := 1
  Menu, Tray, Icon, %IconNum%, , 1
}
RAlt2 := ""
return
#If

;; Double click surface pen to create quick note in OneNote 2016
#F19::#n

; code below are from https://autohotkey.com/board/topic/82826-solved-check-if-drive-is-an-external-hard-disk/?p=527171
; Given a drive letter like "f" return the physical
; drive associated with it, i.e. \\\\.\\PHYSICALDRIVE2
PhysicalFromLogical(d)
{
    wmi := ComObjGet("winmgmts:")

    for LogicalDisk in wmi.ExecQuery("Select * from Win32_LogicalDiskToPartition")
        ; turn "f" into "f:"
        if InStr(LogicalDisk.Dependent,d ":")
            for Partition in wmi.ExecQuery("Select * from Win32_DiskDriveToDiskPartition")
                if (Partition.Dependent = LogicalDisk.Antecedent) {
                    Start := InStr(Partition.Antecedent, """") + 1
                    return SubStr(Partition.Antecedent, Start, -1)
                }
    return 0
}

; Given a drive path like \\\\.\\PHYSICALDRIVE2 return the
; drives interface type, i.e. "USB"
GetInterface(pd)
{
    wmi := ComObjGet("winmgmts:")

    for Drive in wmi.ExecQuery("Select * from Win32_DiskDrive where DeviceId = """ pd """")
        return Drive.InterfaceType
    return 0
}

; Given a drive path like \\\\.\\PHYSICALDRIVE2 return the drive type, i.e. "Removable"
; This is just a wrapper for DriveGet
GetType(pd)
{
    StringReplace pd, pd, \\, \, All
    DriveGet out, Type, %pd%
    return out 
}

