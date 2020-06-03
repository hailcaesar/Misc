#include <vector>
#include <iostream>
using namespace std;

vector<int> modify(vector<int>&& test){
    test.push_back(24);
    return test;
}

int main(){
    vector<int> test = {-1, 1,3,5,6,7,19,23};
    size_t orig_size = test.size();
    auto modified = modify(std::move(test));

    test.push_back(0);  // shouldn't add an item to the modified list
    modified.push_back(25);
    for (auto item : modified){
        cout << item << endl;
    }

    assert(modified.size() == (orig_size + 2));

    cout << "Succeeded!!" << endl;

}
