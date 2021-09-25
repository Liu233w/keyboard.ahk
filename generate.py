__author__ = 'liu233w'

"""
这是使用Python编写的自动化ahk脚本生成文件，用于减少重复的编码
主要功能：
对于某些映射，比如RAlt+L是右箭头，我们也需要Ctrl+RAlt+L作为Ctrl+右箭头
类似的映射对于每个按键需要写七遍，本脚本用于减少此类的重复劳动
"""

import os

#文件头
head = ''
with open('head.template', 'r', encoding='utf-8') as alias:
    head = alias.read()

#文件尾
tail = ''
with open('tail.template', 'r', encoding='utf-8') as alias:
    tail = alias.read()

#单独按键，放在此列表内的按键设定只有一个映射，不需要和Ctrl之类进行组合
#格式：一个元组的列表，第一项是要按下的按键，第二项是一个字符串，表示要运行的
#      命令
single_key = [
('o', """
SendInput, {End}
SendInput, {Enter}
"""),
('e', """
;确定可弹出的驱动器列表
DriveList = Empty
DriveGet, DriveList, List

RemovableDriveList := ""
Loop, Parse, DriveList
{
    pd := PhysicalFromLogical(A_LoopField)
    if GetType(pd) = "Removable" or GetInterface(pd) = "USB"
        RemovableDriveList := RemovableDriveList A_LoopField
}

if RemovableDriveList
    goto, start_eject

MsgBox, 没有需要弹出的驱动器
return

start_eject:

InputBox, Driveletter, 请输入要弹出的盘符 , %RemovableDriveList%
if ErrorLevel=1
    return

StringUpper, Driveletter, Driveletter ;将用户输入的盘符转换成大写

IfInString, Driveletter, %RemovableDriveList%
{
    Driveletter = %Driveletter%:
    Runwait, RemoveDrive.exe %Driveletter%

}
else
{
    Msgbox, 请输入一个列表中的盘符
    goto, start_eject
}
""")
]

#多重按键，此列表中的按键有多个映射
#格式：一个元组的列表，第一项是要按下的按键，第二项是一个字符串，表示需要映射
#      的按键，例如("a","{Home}")将生成：
#      a::
#      SendInput,{Home}
#      RAlt2:=""
#      Return
#      以及其他的七个组合键
multi_key = [
    ('u', '{Home}'), ('p', '{End}'), ('n', '{PgUp}'), ('m', '{PgDn}'),
    ('h', '{Left}'), ('j', '{Down}'), ('k', '{Up}'), ('l', '{Right}')
]

# 分别使用RAlt+1...9 0 - =表示F1-F12
for a in range(1, 10):
    multi_key.append((str(a), '{F%d}' % (a)))
multi_key += [('0', '{F10}'), ('-', '{F11}'), ('=', '{F12}')]

#表示所有的组合键
chord_key = ['', '!', '^', '+', '+!', '+^', '!^', '!^+']


def get_keys_script():
    str1 = ''
    for (key, bind) in single_key:
        str1 += '%s::\n' % (key)
        str1 += bind
        str1 += """
RAlt2 := ""
Return

"""

    for (key, bind) in multi_key:
        for all_key in chord_key:
            str1 += '%s%s::\n' % (all_key, key)
            str1 += """
SendInput, %s%s
RAlt2 := ""
Return

""" % (all_key, bind)

    return (str1)

with open('keyboard.ahk', 'w', encoding='utf-8-sig') as fileout:
    print(head, file=fileout)
    print(get_keys_script(), file=fileout)
    print(tail, file=fileout)
