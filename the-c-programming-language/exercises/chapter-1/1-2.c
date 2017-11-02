#include <stdio.h>

main() {
    printf("' - \'\n"); // single quote
    printf("U - \U2af42323\n"); // unicode code point
    printf("\" - \"\n"); // double quote
    printf("\\ - \\\n"); // backlash
    printf("\\041 - \041\n"); // octal represetation of a character
    printf("a - \a\n"); // alert, beep
    printf("b - \b\n"); // backspace
    printf("e - \e\n"); // escape
    printf("f - \f\n"); // formfeed
    printf("n - \n\n"); // newline
    printf("r - \r\n"); // carriage return
    printf("t - \t\n"); // tab
    printf("u - \uaf42\n"); // unicode code point below 10000
    printf("v - \v\n"); // vertival tab
    printf("x - \x001\n"); // hex digits
}
