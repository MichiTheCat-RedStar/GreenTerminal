// Данный код распространяется по MIT лицензии автором MichiTheCat
// Не видитесь на проекты, выдающие себя за оригинал или подобное
// Оригинал кода https://github.com/MichiTheCat-RedStar/GreenTerminal

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>

int main() {
    
    time_t t = time(NULL); // Время сейчас
    char user[32]; // Какой всего длины может быть строка
    printf("GreenTerminal   -   [run time] %s(c) all rights reserved under the MIT license (MichiTheCat-RedStar on GitGub)\n", ctime(&t));

    while (1) {
        printf("\nGreenTerminal> ");
        fgets(user, sizeof(user), stdin);
        size_t len = strlen(user);
        if (len > 0 && user[len-1] == '\n') user[len-1] = '\0';

        // printf("\n%s", user); // Что пишет user | Удалить после отладки

        if (strcmp(user, "") == 0) { // NULL

        } else if (strcmp(user, "time") == 0) { // time
            t = time(NULL);
            printf("%s", ctime(&t));

        } else if (strcmp(user, "time --local") == 0) { // time --local
            t = time(NULL);
            printf("%ld\n", (long)t);
            
        } else if (strcmp(user, "exit") == 0) { // exit
            exit(0);

        } else {
            printf("\"%s\" is no such command, read the documentation in README.md\n", user);
        }
        
    }

    return 0;
}