#include <stdio.h>
int main (void){
    int a,b,temp;
    printf("enter a value= ");
    scanf("%d",&a);
    printf("enter b value= ");
    scanf("%d",&b);
    temp=a;
    a=b;
    b=temp;
    printf("a=%d b=%d",a,b);
    return 0;
}
