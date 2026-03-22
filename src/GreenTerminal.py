# Данный код распространяется по MIT лицензии автором MichiTheCat
# Не видитесь на проекты, выдающие себя за оригинал или подобное
# Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

from time import time
from datetime import datetime

print(f'GreenTerminal   -   [run time] {(datetime.now()).strftime("%a %b %d %H:%M:%S %Y")}\n(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)')
while True:
    user = input('\nGreenTerminal> ') # Ввод пользователя

    if not user: # None
        continue

    elif user == 'time': # time
        print((datetime.now()).strftime('%a %b %d %H:%M:%S %Y'))

    elif user == 'time --local': # time --local
        print(int(time()))

    elif user == 'exit': # exit
        quit()
    
    else:
        print(f'"{user}" is no such command, read the documentation in README.md\n')