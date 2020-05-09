#include <vector>
#include <iostream>
using namespace std;
int main(){

    vector<int> nums {1, 2, 3};
    auto it = nums.end() - 1;

    nums.push_back(4);
    cout << *it << endl;
    nums.insert(it, 5);
    cout << *it << endl;

    int* x = &nums[0];
    cout << *x << endl;
    nums[0] = 100;
    cout << *x << endl;


    //cout << *it << endl;

}
