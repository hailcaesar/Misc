#include <vector>
#include <iostream>
#include <experimental/ranges/algorithm>
using namespace std;



int main(){
    vector<int> x{1,2,3,43,5};

    std::ranges::sort(x);

    for(auto& i : x){
        cout << i << endl;
    }
}
