/*

#include <cstdio>
#include <cstdlib>

//Your code here

int main(int argc, char *argv[]) {
  int a = atoi(argv[1]);

  //Your code here
  
  printf("a: %d\n",a);
  
  return 0;
}


*/

#include <cstdio>
#include <cstdlib>

void foo(int *p) {
  *p += 2;
}

int main(int argc, char *argv[]) {
  int a = atoi(argv[1]);

  foo(&a);
  printf("a: %d\n",a);
  
  return 0;
}