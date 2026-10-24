#include <stdio.h>
int main(void){
    int n=7;
    int prime=(n>=2);
    for(int i=2;i<=n/i&&prime;i++){
        if(n%i==0){
            prime=0;
        }
    }
    if(prime)
        printf("prime\n");
    else
        printf("not prime");
            return 0;
}
