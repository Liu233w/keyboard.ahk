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

CapsLock::Backspace ; 大写锁定键作为退格键

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

o::

SendInput, {End}
SendInput, {Enter}

RAlt2 := ""
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

RAlt2 := ""
Return

u::

SendInput, {Home}
RAlt2 := ""
Return

!u::

SendInput, !{Home}
RAlt2 := ""
Return

^u::

SendInput, ^{Home}
RAlt2 := ""
Return

+u::

SendInput, +{Home}
RAlt2 := ""
Return

+!u::

SendInput, +!{Home}
RAlt2 := ""
Return

+^u::

SendInput, +^{Home}
RAlt2 := ""
Return

!^u::

SendInput, !^{Home}
RAlt2 := ""
Return

!^+u::

SendInput, !^+{Home}
RAlt2 := ""
Return

p::

SendInput, {End}
RAlt2 := ""
Return

!p::

SendInput, !{End}
RAlt2 := ""
Return

^p::

SendInput, ^{End}
RAlt2 := ""
Return

+p::

SendInput, +{End}
RAlt2 := ""
Return

+!p::

SendInput, +!{End}
RAlt2 := ""
Return

+^p::

SendInput, +^{End}
RAlt2 := ""
Return

!^p::

SendInput, !^{End}
RAlt2 := ""
Return

!^+p::

SendInput, !^+{End}
RAlt2 := ""
Return

n::

SendInput, {Backspace}
RAlt2 := ""
Return

!n::

SendInput, !{Backspace}
RAlt2 := ""
Return

^n::

SendInput, ^{Backspace}
RAlt2 := ""
Return

+n::

SendInput, +{Backspace}
RAlt2 := ""
Return

+!n::

SendInput, +!{Backspace}
RAlt2 := ""
Return

+^n::

SendInput, +^{Backspace}
RAlt2 := ""
Return

!^n::

SendInput, !^{Backspace}
RAlt2 := ""
Return

!^+n::

SendInput, !^+{Backspace}
RAlt2 := ""
Return

m::

SendInput, {DEL}
RAlt2 := ""
Return

!m::

SendInput, !{DEL}
RAlt2 := ""
Return

^m::

SendInput, ^{DEL}
RAlt2 := ""
Return

+m::

SendInput, +{DEL}
RAlt2 := ""
Return

+!m::

SendInput, +!{DEL}
RAlt2 := ""
Return

+^m::

SendInput, +^{DEL}
RAlt2 := ""
Return

!^m::

SendInput, !^{DEL}
RAlt2 := ""
Return

!^+m::

SendInput, !^+{DEL}
RAlt2 := ""
Return

h::

SendInput, {Left}
RAlt2 := ""
Return

!h::

SendInput, !{Left}
RAlt2 := ""
Return

^h::

SendInput, ^{Left}
RAlt2 := ""
Return

+h::

SendInput, +{Left}
RAlt2 := ""
Return

+!h::

SendInput, +!{Left}
RAlt2 := ""
Return

+^h::

SendInput, +^{Left}
RAlt2 := ""
Return

!^h::

SendInput, !^{Left}
RAlt2 := ""
Return

!^+h::

SendInput, !^+{Left}
RAlt2 := ""
Return

j::

SendInput, {Down}
RAlt2 := ""
Return

!j::

SendInput, !{Down}
RAlt2 := ""
Return

^j::

SendInput, ^{Down}
RAlt2 := ""
Return

+j::

SendInput, +{Down}
RAlt2 := ""
Return

+!j::

SendInput, +!{Down}
RAlt2 := ""
Return

+^j::

SendInput, +^{Down}
RAlt2 := ""
Return

!^j::

SendInput, !^{Down}
RAlt2 := ""
Return

!^+j::

SendInput, !^+{Down}
RAlt2 := ""
Return

k::

SendInput, {Up}
RAlt2 := ""
Return

!k::

SendInput, !{Up}
RAlt2 := ""
Return

^k::

SendInput, ^{Up}
RAlt2 := ""
Return

+k::

SendInput, +{Up}
RAlt2 := ""
Return

+!k::

SendInput, +!{Up}
RAlt2 := ""
Return

+^k::

SendInput, +^{Up}
RAlt2 := ""
Return

!^k::

SendInput, !^{Up}
RAlt2 := ""
Return

!^+k::

SendInput, !^+{Up}
RAlt2 := ""
Return

l::

SendInput, {Right}
RAlt2 := ""
Return

!l::

SendInput, !{Right}
RAlt2 := ""
Return

^l::

SendInput, ^{Right}
RAlt2 := ""
Return

+l::

SendInput, +{Right}
RAlt2 := ""
Return

+!l::

SendInput, +!{Right}
RAlt2 := ""
Return

+^l::

SendInput, +^{Right}
RAlt2 := ""
Return

!^l::

SendInput, !^{Right}
RAlt2 := ""
Return

!^+l::

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
