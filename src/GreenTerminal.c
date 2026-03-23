// Данный код распространяется по MIT лицензии автором MichiTheCat
// Не видитесь на проекты, выдающие себя за оригинал или подобное
// Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>

int main() {
    
    time_t t = time(NULL); // Время сейчас
    char User[32]; // Какой всего длины может быть строка
    printf("GreenTerminal   -   [run time] %s(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)\n", ctime(&t));

    while (1) {
        printf("\nGreenTerminal> ");
        fgets(User, sizeof(User), stdin);
        size_t len = strlen(User);
        if (len > 0 && User[len-1] == '\n') {
            User[len-1] = '\0';
        } else {
            int c;
            while ((c = getchar()) != '\n' && c != EOF);
        }

        // printf("\n%s", User); // Что пишет User | Удалить после отладки

        if (strcmp(User, "") == 0) { // NULL
            continue;

        } else if (strcmp(User, "data") == 0) { // data
            t = time(NULL);
            printf("%s", ctime(&t));

        } else if (strcmp(User, "time") == 0) { // time
            t = time(NULL);
            printf("%ld\n", (long)t);
            
        } else if (strcmp(User, "exit") == 0) { // exit
            exit(0);

        } else if (strcmp(User, "help") == 0) { // help
            printf("help | ? - displays all commands\nexit - terminates execution\ndata - displays the date\ntime - displays the time in seconds\n");

        } else {
            printf("\"%s\" is no such command, read the documentation in README.md\n", User);
        }
        
    }

    return 0;
}