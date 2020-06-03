#include <iostream>
#include <vector>
using namespace std;


int main(){
    vector<int> x{1,2,3,5};

    x[7] = 100;    //No error
    try{
        x.at(7) = 100;
    }
    catch (...){ //or (out_of_range& e)
        cout << "Caught exception!" << endl;
    }
    for (auto& num : x){
        cout << num << endl;
    }

}
