#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <iostream>

using namespace std;

// What happens when I allocate 8GB in my machine?
int main(){
    size_t sz = 80000000000;
    char *a = (char*)malloc(sz);

    cout << "Allocating..." << endl;
    memset(a, 'a', sz);
    cout << "Done.." << endl;

    sleep(10);
    printf("%.4s", &a[sz-5]);

    return 0;
}
