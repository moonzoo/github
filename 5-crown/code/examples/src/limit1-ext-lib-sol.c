// External library example.
// The return value of an external binary function is 
// a concrete value, not a symbolic value 
#include <crown.h>
#include <stdio.h>
#include <stdlib.h>

int abs2(int v) {
  int r = 0;
  if (v < 0) r = - v;
  else r = v;
  return r; 
}

int main(){
    int x;
    SYM_int(x);
    printf("x = %d\n", x);
    if (abs2(x) == 4) { // a concrete condition, not a symbolic one 
        printf("x == 4\n");
    }else{
        printf("x != 4\n");
    }
    return 0;
}
