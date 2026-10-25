#include <stdio.h>

int main(void) {
    unsigned int n;
    printf("enter a number= ");
    scanf("%u",&n);
    int count=0;
    while(n!=0){
        count+=n&1u;
        n>>=1;
    }

    printf("set_bit=%d",count);
    return 0;
}
