;    -*- mode: ahk -*-

;; Copyright (c) 2016 Liu233w
;;
;; Author: Liu233w <wwwlsmcom@outlook.com>
;; URL: https://github.com/Liu233w/CapsLocKeys.ahk
;;
;;; License: GPLv3

; 全局变量;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
KeyboardOn := 1              ; 是否启用快捷键
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

#If KeyboardOn
; 空格单独按时是空格，当做组合键时是 shift，按下200毫秒之后也是shift
; from https://autohotkey.com/board/topic/57344-spacebar-as-space-and-as-shift/?p=360322
$space::
if !Spacedown										; if its the first press, no repeat
  Input, K, L
  if K != {space}
    SendInput, {shift down}            ; down shift
    SendInput, K                       ; send the key
    Spacedown := Spacedown ? Spacedown : A_TickCount	; GET THE TIME WE PRESSED THE BUTTON
return

$space up::
SendInput, {shift up}
if (A_TickCount - Spacedown < 200)					; if we pressed verry short
  SendInput, {space}									; send the space
  Spacedown := ""
return

#If

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Capslock的组合键;;;;;;;;;;;;;;;;;;;;;;;;;;
#If CapsLock
o::

SendInput, {End}
SendInput, {Enter}

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
TAB::CapsLock

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
