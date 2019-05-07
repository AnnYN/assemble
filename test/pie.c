#include <stdlib.h>
#include <stdio.h>

void* getAddr () {
 return __builtin_return_address(0)-0x5;
};

int main(int argc, char** argv){
 printf("Code located at: %p\n",getAddr());
 return 0;
}
