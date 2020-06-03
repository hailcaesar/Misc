#include <sstream>
#include <iostream>
#include <vector>
using namespace std;


int main(){
    std::string is{"1,2,3,4,5,5,6,6,7,7,5,4,3"};

    std::istringstream iss;
    iss.str(is);
    vector<string> v;
    string tmp;

    while(getline(iss, tmp, ',')){
        v.push_back(tmp);
    }

    /*
       while(iss.good()){
       string tmp;
       getline(iss, tmp, ',');
       v.push_back(tmp);
       }
       */


    for(auto& n : v){
        cout << n << " ";
    }
    cout << endl;
}
