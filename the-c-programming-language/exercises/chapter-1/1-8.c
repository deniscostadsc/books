#include <stdio.h>

main() {
    int c, nl = 0, bl = 0 , tb = 0;

    puts("dsadsa");
    while ((c = getchar()) != EOF) {
        if (c == '\n') nl++;
        else if (c == ' ') bl++;
        else if (c == '\t') tb++;
    }

    printf("newlines: %d\nblank: %d\ntabs: %d\ntotal: %d\n", nl, bl, tb, nl + bl + tb);
}
