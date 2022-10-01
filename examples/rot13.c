#ifndef EOF
#define EOF 0
#endif

int putchar(char c);
char getchar(void);

char c;
int offset;

int main (void) {
    for (;;) {
        c = getchar();
        if (c == EOF) {
            exit(0);
        }

        offset = 0;
        if (('a' <= c && c < 'n') || ('A' <= c && c < 'N')) {
            offset = 13;
        } else if (('n' <= c && c <= 'z') || ('N' <= c && c <= 'Z')) {
            offset = -13;
        }
        putchar(c + offset);
    }
    return 0;
}