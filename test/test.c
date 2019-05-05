#include <stdio.h>
#include <stdlib.h>
int foo(int x)
{

int array[] = {1,3,5};
return array[x];


} /* ---- end of the function foo ---- */


int main(int argc, char *argv[])
{
int i =1;
int j = foo(i);
fprintf(stdout,"i=%d,j=%d\n",i,j);
return EXIT_SUCCESS;

} /* ---- end of the main ---- */



