#include <stdio.h>

main() {
    int c;

    while (1) {
        c = getchar();

        if (c == EOF) {
            printf("%d\n", c);
            break;
        }
    }
}
