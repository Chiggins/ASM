#include <stdio.h>

void f1() {
    int a, b, c;
}

void f2() {
    int a, b, c;
    printf("%d, %d, %d\n", a, b, c);
}

int main() {
    f1();
    f2();
}
