__author__ = 'liu233w'

"""
"""

import os

head = ''
with open('head.template', 'r', encoding='utf-8') as alias:
    head = alias.read()

tail = ''
with open('tail.template', 'r', encoding='utf-8') as alias:
    tail = alias.read()

# ("button", "ahk command")
single_key = [
]

# ("button", "map") e.g. ("a","{Home}") generates:
#      a::
#      SendInput,{Home}
#      RAlt2:=""
#      Return
#      
# and other 7 combinations (ctrl, alt, etc)
multi_key = [
    ('a', '{Home}'), ('e', '{End}'),
    ('b', '{Left}'), ('n', '{Down}'), ('p', '{Up}'), ('f', '{Right}')
]

# RAlt+(1...9 0 - =) => F1-F12
for a in range(1, 10):
    multi_key.append((str(a), '{F%d}' % (a)))
multi_key += [('0', '{F10}'), ('-', '{F11}'), ('=', '{F12}')]

# all modifier key combination
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
