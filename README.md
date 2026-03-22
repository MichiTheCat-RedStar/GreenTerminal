[![Telegram](https://img.shields.io/badge/Telegram-@TeaTechnology-26A5E4?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/TeaTechnology)

[![GitHub](https://img.shields.io/badge/GitHub-MichiTheCat--RedStar-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/MichiTheCat-RedStar)

[![Itch.io](https://img.shields.io/badge/Itch.io-michi--the--cat-FA5C5C?style=for-the-badge&logo=itch.io&logoColor=white)](https://michi-the-cat.itch.io)


## Цель

Цель была в создании терминала на C с последующей компиляцией в байтовый файл для поддержки Windows и Linux.

Конкретная суть в том, что CMD Windows или Termianl Linux имеют разные синтаксис и много лишних для меня команд, либо команд, которые бы я никогда не использовал.

Данный же терминал не имеет поддержки большинства функций, таких как PATH, SSH, разного вида установщиков пакетов и прочего.

Этот терминал создавался больше с целью углубления в язык программирования C, который был выбрал из-за своего удобного минимализма и поддержки компиляции в байтовые исполняемые файлы.

*Изменено: так же, на всякий случай, был добавлен [Python](/src/GreenTerminal.py) файл при проблемах с запуском бинарного файла, поэтому учтите, что python версия не является основной и может не поддерживать последние изменения или некотоыре функции.*


## Запуск

- В [/bin](/bin/) находятся бинарники (скомпилированные файлы) под [Windows](/bin/windows/GreenTerminal.exe) и [Linux](/bin/linux/GreenTerminal).
- В [/src](/src/) находится [исходный код](/src/GreenTerminal.c) на C и [Python-аналог](/src/GreenTerminal.py) кода.
- Так же для использования в качестве своих отдельных проектов или форков на основе этого, стоит ознакомится с [лицензией](LICENSE).


## Синтаксис

Повторяя текст из '[цели](#цель)' хочется повторить, что здесь не будет всех команд, а только самые основные, необходимые лично мне, [MichiTheCat](https://github.com/MichiTheCat-RedStar), для того или иного управления. А так же это проект скорее для обучения языку C.

### Команды

`time` - выводит время и дату

`time --local` - выводит время в секундах

`exit` - закрвает исполнение

---

*Все права защищены по [MIT лицензии](LICENSE) пользователем MichiTheCat на площадке GitHub в 2026 году.*