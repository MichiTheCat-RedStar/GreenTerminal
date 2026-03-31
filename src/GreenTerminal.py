# Данный код распространяется по MIT лицензии автором MichiTheCat
# Не видитесь на проекты, выдающие себя за оригинал или подобное
# Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

from time import time
from datetime import datetime

VERSION = 'v0.3d' # Версия программы (соответственно C файлу, а не обновлению Python версии)

print(f'GreenTerminal   -   [run time] {(datetime.now()).strftime("%a %b %d %H:%M:%S %Y")}\n(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)')
while True:
    User = input('\nGreenTerminal> ') # Текст, который ввёл пользователь [Какой всего длины может быть строка]

    if not User: # None
        continue

    elif User == 'data': # data
        print((datetime.now()).strftime('%a %b %d %H:%M:%S %Y'))

    elif User == 'time': # time
        print(int(time()))

    elif User == 'exit': # exit
        quit()
    
    elif (User == 'help') or (User == '?'): # help | ?
        print('''
        help | ? - displays all commands
        exit - terminates execution
        data - displays the date
        time - displays the time in seconds
        version - shows the version of the terminal
        '''.strip())

    elif User == 'version': # version
        print('version =', VERSION)

    else: # * *
        User = User.split(' ') # UserCommand/UserFunction -> User[0]/User[1]

        if User[0] == 'read': # read
            continue # TODO fix C file first
        
        else: # UNKOWN
            print(f'\"{" ".join(User)}\" is no such command, read the documentation in README.md')