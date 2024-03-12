#include <stdio.h>
/*
    This is a comment outside the main.
*/
char *get_code() {
    return "#include <stdio.h>%c/*%c    This is a comment outside the main.%c*/%cchar *get_code() {%c    return %c%s%c;%c}%cint main() {%c    /*%c        This is a comment in the main function.%c    */%c    char *p = get_code();%c    printf(p, 10, 10, 10, 10, 10, 34, p, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c}";
}
int main() {
    /*
        This is a comment in the main function.
    */
    char *p = get_code();
    printf(p, 10, 10, 10, 10, 10, 34, p, 34, 10, 10, 10, 10, 10, 10, 10, 10);
}