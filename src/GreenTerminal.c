// Данный код распространяется по MIT лицензии автором MichiTheCat
// Не видитесь на проекты, выдающие себя за оригинал или подобное
// Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <locale.h>

#define DEBUG // Проверка на debug режим

int main() {
    
    // Задаю переменные, чтобы не плодить их в цикле
    time_t t = time(NULL); // Время сейчас
    setlocale(LC_ALL, ""); // Локаль
    size_t len = 0; // Размер строки
    int chr; // Символ
    char space[128] = ""; // Разделённый пробелом текст
    int i, j; // Буду использовать в циклах for

    char User[128]; // Текст, который ввёл пользователь [Какой всего длины может быть строка]
    char VERSION[] = "v0.3c"; // Версия программы

    printf("GreenTerminal   -   [run time] %s(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)\n", ctime(&t));
    while (1) {

        printf("\nGreenTerminal> ");
        fgets(User, sizeof(User), stdin);
        len = strlen(User);
        if (len > 0 && User[len-1] == '\n') {
            User[len-1] = '\0';
        } else {
            while ((chr = getchar()) != '\n' && chr != EOF); }

        if (strcmp(User, "data") == 0) { // data
            t = time(NULL);
            printf("%s", ctime(&t));

        } else if (strcmp(User, "time") == 0) { // time
            t = time(NULL);
            printf("%ld\n", (long)t);
            
        } else if (strcmp(User, "exit") == 0) { // exit
            exit(0);

        } else if ((strcmp(User, "help") == 0) || (strcmp(User, "?") == 0)) { // help
            printf(
                "help | ? - displays all commands\n"
                "exit - terminates execution\n"
                "data - displays the date\n"
                "time - displays the time in seconds\n"
                "version - shows the version of the terminal\n"
            );

        } else if (strcmp(User, "version") == 0) { // version
            printf("version = %s\n", VERSION);

        } else { // * *
            // TODO: тут была цель в том, чтобы разделить User по пробелу (напрмиер при run command чтобы было User=["r", "u", "n"], а space=["c", "o", "m", "m", "a", "n", "d"])
            j = 0;
            memset(space, 0, 128);
            for (i = 0; i < 128; i++) {
                if (User[i] == ' ') {
                    j = 0;
                    continue;
                } else if (User[i] == '\0') {
                    break;
                }
                j++;
                space[i] += User[i];
            }


            if (0) {
                // TODO
            } else { // UNKOWN
                printf("\"%s\" is no such command, read the documentation in README.md\n", User);
                #ifdef DEBUG
                    printf("command: \"%s\"; char after split: %i\n", space, j);
                #endif
            }
        }
        
    }

    return 0;
}