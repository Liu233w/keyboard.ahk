﻿;    -*- mode: ahk -*-

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

RAlt::Ctrl  ;右Alt作为Ctrl

; capslock的详细设定：单独按下时是ESC
*CapsLock::                     ; 保证先按下修饰键，后按下 CapsLock 时效果相同
CapsLock::
CapsLock2 := CapsLock := 1
KeyWait, CapsLock
if CapsLock2
  SendInput, {Esc}
CapsLock2 := CapsLock := ""
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Capslock的组合键;;;;;;;;;;;;;;;;;;;;;;;;;;
#If CapsLock

o::

SendInput, {End}
SendInput, {Enter}

CapsLock2 := ""
Return

e::

;确定可弹出的驱动器列表
DriveList = Empty
DriveGet, DriveList, List, REMOVABLE

if DriveList
    goto, start_eject

MsgBox, 没有需要弹出的驱动器
return

start_eject:

InputBox, Driveletter, 请输入要弹出的盘符 , %DriveList%
if ErrorLevel=1
    return

StringUpper, Driveletter, Driveletter ;将用户输入的盘符转换成大写

IfInString, Driveletter, %DriveList%
{
    Driveletter = %Driveletter%:
    Runwait, RemoveDrive.exe %Driveletter%

}
else
{
    Msgbox, 请输入一个列表中的盘符
    goto, start_eject
}

CapsLock2 := ""
Return

u::

SendInput, {Home}
CapsLock2 := ""
Return

!u::

SendInput, !{Home}
CapsLock2 := ""
Return

^u::

SendInput, ^{Home}
CapsLock2 := ""
Return

+u::

SendInput, +{Home}
CapsLock2 := ""
Return

+!u::

SendInput, +!{Home}
CapsLock2 := ""
Return

+^u::

SendInput, +^{Home}
CapsLock2 := ""
Return

!^u::

SendInput, !^{Home}
CapsLock2 := ""
Return

!^+u::

SendInput, !^+{Home}
CapsLock2 := ""
Return

p::

SendInput, {End}
CapsLock2 := ""
Return

!p::

SendInput, !{End}
CapsLock2 := ""
Return

^p::

SendInput, ^{End}
CapsLock2 := ""
Return

+p::

SendInput, +{End}
CapsLock2 := ""
Return

+!p::

SendInput, +!{End}
CapsLock2 := ""
Return

+^p::

SendInput, +^{End}
CapsLock2 := ""
Return

!^p::

SendInput, !^{End}
CapsLock2 := ""
Return

!^+p::

SendInput, !^+{End}
CapsLock2 := ""
Return

n::

SendInput, {Backspace}
CapsLock2 := ""
Return

!n::

SendInput, !{Backspace}
CapsLock2 := ""
Return

^n::

SendInput, ^{Backspace}
CapsLock2 := ""
Return

+n::

SendInput, +{Backspace}
CapsLock2 := ""
Return

+!n::

SendInput, +!{Backspace}
CapsLock2 := ""
Return

+^n::

SendInput, +^{Backspace}
CapsLock2 := ""
Return

!^n::

SendInput, !^{Backspace}
CapsLock2 := ""
Return

!^+n::

SendInput, !^+{Backspace}
CapsLock2 := ""
Return

m::

SendInput, {DEL}
CapsLock2 := ""
Return

!m::

SendInput, !{DEL}
CapsLock2 := ""
Return

^m::

SendInput, ^{DEL}
CapsLock2 := ""
Return

+m::

SendInput, +{DEL}
CapsLock2 := ""
Return

+!m::

SendInput, +!{DEL}
CapsLock2 := ""
Return

+^m::

SendInput, +^{DEL}
CapsLock2 := ""
Return

!^m::

SendInput, !^{DEL}
CapsLock2 := ""
Return

!^+m::

SendInput, !^+{DEL}
CapsLock2 := ""
Return

h::

SendInput, {Left}
CapsLock2 := ""
Return

!h::

SendInput, !{Left}
CapsLock2 := ""
Return

^h::

SendInput, ^{Left}
CapsLock2 := ""
Return

+h::

SendInput, +{Left}
CapsLock2 := ""
Return

+!h::

SendInput, +!{Left}
CapsLock2 := ""
Return

+^h::

SendInput, +^{Left}
CapsLock2 := ""
Return

!^h::

SendInput, !^{Left}
CapsLock2 := ""
Return

!^+h::

SendInput, !^+{Left}
CapsLock2 := ""
Return

j::

SendInput, {Down}
CapsLock2 := ""
Return

!j::

SendInput, !{Down}
CapsLock2 := ""
Return

^j::

SendInput, ^{Down}
CapsLock2 := ""
Return

+j::

SendInput, +{Down}
CapsLock2 := ""
Return

+!j::

SendInput, +!{Down}
CapsLock2 := ""
Return

+^j::

SendInput, +^{Down}
CapsLock2 := ""
Return

!^j::

SendInput, !^{Down}
CapsLock2 := ""
Return

!^+j::

SendInput, !^+{Down}
CapsLock2 := ""
Return

k::

SendInput, {Up}
CapsLock2 := ""
Return

!k::

SendInput, !{Up}
CapsLock2 := ""
Return

^k::

SendInput, ^{Up}
CapsLock2 := ""
Return

+k::

SendInput, +{Up}
CapsLock2 := ""
Return

+!k::

SendInput, +!{Up}
CapsLock2 := ""
Return

+^k::

SendInput, +^{Up}
CapsLock2 := ""
Return

!^k::

SendInput, !^{Up}
CapsLock2 := ""
Return

!^+k::

SendInput, !^+{Up}
CapsLock2 := ""
Return

l::

SendInput, {Right}
CapsLock2 := ""
Return

!l::

SendInput, !{Right}
CapsLock2 := ""
Return

^l::

SendInput, ^{Right}
CapsLock2 := ""
Return

+l::

SendInput, +{Right}
CapsLock2 := ""
Return

+!l::

SendInput, +!{Right}
CapsLock2 := ""
Return

+^l::

SendInput, +^{Right}
CapsLock2 := ""
Return

!^l::

SendInput, !^{Right}
CapsLock2 := ""
Return

!^+l::

SendInput, !^+{Right}
CapsLock2 := ""
Return

1::

SendInput, {F1}
CapsLock2 := ""
Return

!1::

SendInput, !{F1}
CapsLock2 := ""
Return

^1::

SendInput, ^{F1}
CapsLock2 := ""
Return

+1::

SendInput, +{F1}
CapsLock2 := ""
Return

+!1::

SendInput, +!{F1}
CapsLock2 := ""
Return

+^1::

SendInput, +^{F1}
CapsLock2 := ""
Return

!^1::

SendInput, !^{F1}
CapsLock2 := ""
Return

!^+1::

SendInput, !^+{F1}
CapsLock2 := ""
Return

2::

SendInput, {F2}
CapsLock2 := ""
Return

!2::

SendInput, !{F2}
CapsLock2 := ""
Return

^2::

SendInput, ^{F2}
CapsLock2 := ""
Return

+2::

SendInput, +{F2}
CapsLock2 := ""
Return

+!2::

SendInput, +!{F2}
CapsLock2 := ""
Return

+^2::

SendInput, +^{F2}
CapsLock2 := ""
Return

!^2::

SendInput, !^{F2}
CapsLock2 := ""
Return

!^+2::

SendInput, !^+{F2}
CapsLock2 := ""
Return

3::

SendInput, {F3}
CapsLock2 := ""
Return

!3::

SendInput, !{F3}
CapsLock2 := ""
Return

^3::

SendInput, ^{F3}
CapsLock2 := ""
Return

+3::

SendInput, +{F3}
CapsLock2 := ""
Return

+!3::

SendInput, +!{F3}
CapsLock2 := ""
Return

+^3::

SendInput, +^{F3}
CapsLock2 := ""
Return

!^3::

SendInput, !^{F3}
CapsLock2 := ""
Return

!^+3::

SendInput, !^+{F3}
CapsLock2 := ""
Return

4::

SendInput, {F4}
CapsLock2 := ""
Return

!4::

SendInput, !{F4}
CapsLock2 := ""
Return

^4::

SendInput, ^{F4}
CapsLock2 := ""
Return

+4::

SendInput, +{F4}
CapsLock2 := ""
Return

+!4::

SendInput, +!{F4}
CapsLock2 := ""
Return

+^4::

SendInput, +^{F4}
CapsLock2 := ""
Return

!^4::

SendInput, !^{F4}
CapsLock2 := ""
Return

!^+4::

SendInput, !^+{F4}
CapsLock2 := ""
Return

5::

SendInput, {F5}
CapsLock2 := ""
Return

!5::

SendInput, !{F5}
CapsLock2 := ""
Return

^5::

SendInput, ^{F5}
CapsLock2 := ""
Return

+5::

SendInput, +{F5}
CapsLock2 := ""
Return

+!5::

SendInput, +!{F5}
CapsLock2 := ""
Return

+^5::

SendInput, +^{F5}
CapsLock2 := ""
Return

!^5::

SendInput, !^{F5}
CapsLock2 := ""
Return

!^+5::

SendInput, !^+{F5}
CapsLock2 := ""
Return

6::

SendInput, {F6}
CapsLock2 := ""
Return

!6::

SendInput, !{F6}
CapsLock2 := ""
Return

^6::

SendInput, ^{F6}
CapsLock2 := ""
Return

+6::

SendInput, +{F6}
CapsLock2 := ""
Return

+!6::

SendInput, +!{F6}
CapsLock2 := ""
Return

+^6::

SendInput, +^{F6}
CapsLock2 := ""
Return

!^6::

SendInput, !^{F6}
CapsLock2 := ""
Return

!^+6::

SendInput, !^+{F6}
CapsLock2 := ""
Return

7::

SendInput, {F7}
CapsLock2 := ""
Return

!7::

SendInput, !{F7}
CapsLock2 := ""
Return

^7::

SendInput, ^{F7}
CapsLock2 := ""
Return

+7::

SendInput, +{F7}
CapsLock2 := ""
Return

+!7::

SendInput, +!{F7}
CapsLock2 := ""
Return

+^7::

SendInput, +^{F7}
CapsLock2 := ""
Return

!^7::

SendInput, !^{F7}
CapsLock2 := ""
Return

!^+7::

SendInput, !^+{F7}
CapsLock2 := ""
Return

8::

SendInput, {F8}
CapsLock2 := ""
Return

!8::

SendInput, !{F8}
CapsLock2 := ""
Return

^8::

SendInput, ^{F8}
CapsLock2 := ""
Return

+8::

SendInput, +{F8}
CapsLock2 := ""
Return

+!8::

SendInput, +!{F8}
CapsLock2 := ""
Return

+^8::

SendInput, +^{F8}
CapsLock2 := ""
Return

!^8::

SendInput, !^{F8}
CapsLock2 := ""
Return

!^+8::

SendInput, !^+{F8}
CapsLock2 := ""
Return

9::

SendInput, {F9}
CapsLock2 := ""
Return

!9::

SendInput, !{F9}
CapsLock2 := ""
Return

^9::

SendInput, ^{F9}
CapsLock2 := ""
Return

+9::

SendInput, +{F9}
CapsLock2 := ""
Return

+!9::

SendInput, +!{F9}
CapsLock2 := ""
Return

+^9::

SendInput, +^{F9}
CapsLock2 := ""
Return

!^9::

SendInput, !^{F9}
CapsLock2 := ""
Return

!^+9::

SendInput, !^+{F9}
CapsLock2 := ""
Return

0::

SendInput, {F10}
CapsLock2 := ""
Return

!0::

SendInput, !{F10}
CapsLock2 := ""
Return

^0::

SendInput, ^{F10}
CapsLock2 := ""
Return

+0::

SendInput, +{F10}
CapsLock2 := ""
Return

+!0::

SendInput, +!{F10}
CapsLock2 := ""
Return

+^0::

SendInput, +^{F10}
CapsLock2 := ""
Return

!^0::

SendInput, !^{F10}
CapsLock2 := ""
Return

!^+0::

SendInput, !^+{F10}
CapsLock2 := ""
Return

-::

SendInput, {F11}
CapsLock2 := ""
Return

!-::

SendInput, !{F11}
CapsLock2 := ""
Return

^-::

SendInput, ^{F11}
CapsLock2 := ""
Return

+-::

SendInput, +{F11}
CapsLock2 := ""
Return

+!-::

SendInput, +!{F11}
CapsLock2 := ""
Return

+^-::

SendInput, +^{F11}
CapsLock2 := ""
Return

!^-::

SendInput, !^{F11}
CapsLock2 := ""
Return

!^+-::

SendInput, !^+{F11}
CapsLock2 := ""
Return

=::

SendInput, {F12}
CapsLock2 := ""
Return

!=::

SendInput, !{F12}
CapsLock2 := ""
Return

^=::

SendInput, ^{F12}
CapsLock2 := ""
Return

+=::

SendInput, +{F12}
CapsLock2 := ""
Return

+!=::

SendInput, +!{F12}
CapsLock2 := ""
Return

+^=::

SendInput, +^{F12}
CapsLock2 := ""
Return

!^=::

SendInput, !^{F12}
CapsLock2 := ""
Return

!^+=::

SendInput, !^+{F12}
CapsLock2 := ""
Return


;    -*- mode: ahk -*-
; capslock+TAB 是大写锁定
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
CapsLock2 := ""
return

; capslock+` 来开关快捷键
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
CapsLock2 := ""
return
#If
