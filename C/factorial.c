#include <stdio.h>

int main(void) {
    int n=5;
    unsigned long long fact=1;
    for(int i=1;i<=n;i++){
        fact*=i;
}
    printf("facoial=%llu\n",fact);
    return 0;
}
