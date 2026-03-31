@echo off
color 0a
title MichiTheCat-RedStar - GCC used compiler
chcp 65001 > nul

:: Создаёт файлы куда надо и какие надо для моего удобства с версии v0.3d-1

gcc %~dp0GreenTerminal.c -o %~dp0..\bin\windows\GreenTerminal.exe
gcc -static %~dp0GreenTerminal.c -o %~dp0..\bin\windows\GreenTerminalStatic.exe
gcc -S %~dp0GreenTerminal.c -o %~dp0..\bin\windows\GreenTerminal.s
gcc -S -static %~dp0GreenTerminal.c -o %~dp0..\bin\windows\GreenTerminalStatic.s

:: TODO make Linux Bash аналог этого файла
:: x86_64-linux-gnu-gcc %~dp0GreenTerminal.c -o %~dp0..\bin\linux\GreenTerminal
:: x86_64-linux-gnu-gcc -static %~dp0GreenTerminal.c -o %~dp0..\bin\linux\GreenTerminalStatic
:: x86_64-linux-gnu-gcc -S %~dp0GreenTerminal.c -o %~dp0..\bin\linux\GreenTerminal.s
:: x86_64-linux-gnu-gcc -S -static %~dp0GreenTerminal.c -o %~dp0..\bin\linux\GreenTerminalStatic.s

echo --------------------------------------------
echo  Всё установлено! Если не вылезла ошибка...
echo --------------------------------------------
pause