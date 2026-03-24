# Данный код распространяется по MIT лицензии автором MichiTheCat
# Не видитесь на проекты, выдающие себя за оригинал или подобное
# Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

from time import time
from datetime import datetime

VERSION = 'v0.2b'
# isWindows = False

print(f'GreenTerminal   -   [run time] {(datetime.now()).strftime("%a %b %d %H:%M:%S %Y")}\n(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)')
while True:
    User = input('\nGreenTerminal> ') # Ввод пользователя

    if not User: # None
        continue

    elif User == 'data': # data
        print((datetime.now()).strftime('%a %b %d %H:%M:%S %Y'))

    elif User == 'time': # time
        print(int(time()))

    elif User == 'exit': # exit
        quit()
    
    elif (User == 'help') or (User == '?'): # help | ?
        print('help | ? - displays all commands\nexit - terminates execution\ndata - displays the date\ntime - displays the time in seconds\nversion - shows the version of the terminal')

    elif User == 'version': # version
        print('version =', VERSION)

    else:
        print(f'"{User}" is no such command, read the documentation in README.md')