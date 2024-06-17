/*
#include <cstdio>

int* element(int *array, int i, int j) {
  int *p = &array[i*4+j];
  return p;
}

int main(int argc, char *argv[]) {
  //Allocate memory

  //Initialize values from 0 to 19 using element function
  
  //Print values of the array using element function as
  //0 1 2 3
  //4 5 6 7
  //8 9 10 11
  //12 13 14 15
  //16 17 18 19
  
  //Free memory
  
  return 0;
}

*/

#include <cstdio>

int* element(int *array, int i, int j) {
  int *p = &array[i*4+j];
  return p;
}

int main(int argc, char *argv[]) {
  int *a = new int[20];

  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 4; j++){
      *element(a,i,j) = 4*i+j;
    }
  }

  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 4; j++){
      printf("%d ",*element(a,i,j));
    }
    printf("\n");
  }
  
  delete[] a;
  
  return 0;
}