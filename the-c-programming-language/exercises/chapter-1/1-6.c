#include <stdio.h>

main() {
    int c = 1;

    while (c) {
        c = getchar() != EOF;
        printf("%d\n", c);
    }
}
