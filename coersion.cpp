#include <vector>
#include <iostream>
using namespace std;


class C1{
    public:
        vector<int>& collection_;
        C1(vector<int>& collection) : collection_(collection) {
        }

        void print(){
            for (auto elem : collection_){
                cout << elem << " ";
            }
            cout << endl;
        }
};

class C2{
    public:
        vector<int>* collection_;
        C2(vector<int>* collection){
            collection_ = collection;
        }

        void print(){
            for (auto elem : *collection_){
                cout << elem << " ";
            }
            cout << endl;
        }
};

class C3{
    public:
        const vector<int>& collection_;
        C3(const vector<int>& collection) : collection_(collection) {
        }

        void print(){
            for (auto elem : collection_){
                cout << elem << " ";
            }
            cout << endl;
        }
};

C1 construct(){
    vector<int> dummy {1, 2, 3};
    C1 example(dummy);

    return example;
}


C1 constructV2(){
    vector<int>* dummy = new vector<int>{1, 2, 3};
    //C1 example(dummy); //This doesn't work ->  Pointer cannot be converted to reference type
    C1 example(*dummy);  //You need to derefence the pointer so that the constructor can accept the type

    return example;
}

vector<int>&& constructV3(){
    vector<int> dummy {1, 2, 3};
    return std::move(dummy);
}

pair<C1, vector<int>>&& constructV4(){
    vector<int> dummy {1, 2, 3};
    C1 example(dummy);

    auto p = make_pair(example, dummy);
    return std::move(p);
}

// Old C++
// --------->  vector<int>* v = makeBigVector();
vector<int>* makeBigVector() {
    vector<int> result = new vector<int>(1024);
    for(int i=0; i<1024; i++) {
        result[i] = rand();
    }
    return result;
}

// New C++
// auto v = makeBigVector(); // guaranteed not to copy the vector
vector<int> makeBigVector() {
    vector<int> result;
    for(int i=0; i<1024; i++) {
        result[i] = rand();
    }
    return result;
}


int main(){

    vector<int> dummy {1, 2, 3};
    C1 example(dummy);
    example.print();  //This works :)

    C1 example1 = construct();
    //example1.print(); //This doesn't work, dummy is out of scope

    //C2 example3(dummy); //Doesn't work, constructor expects pointer type
    C2 example2(&dummy);
    example2.print();

    C1 example3 = constructV2();
    example3.print(); //Unlike construct(),  constructV2() works bc memory is in the heap

    cout << "Move #1" << endl;
    auto dumvec = constructV3();
    for(auto item : dumvec) cout << item << endl;

    //auto [example4, dumvec] = constructV3();
    pair<C1, vector<int>>&& p = constructV4();
    //for(auto item : p.second) cout << item << endl;
    cout << "Move" << endl;
    p.first.print();

    //C++11 way
    v.push_back(s);                // move can't be done, as parameter is an rvalue
    v.push_back(std::move(s));     // move possible, as we're explicitly moving the data out

}
