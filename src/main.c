#include "main.h"
int main(int argc, char** argv) {
    for (int i = 0;i < argc;i++)
        printf("%s\n", argv[i]);

    int res = sum(1, 2);
    printf("%d\n", res);

    static_test();
    

    return 0;
}
