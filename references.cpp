#include <memory>
#include <iostream>

using namespace std;
int method0(std::unique_ptr<int>& p){
    cout << "Unique: " << *p << endl;
    return 7;
}

int method1(std::shared_ptr<int> p){
    cout << "Shared: " << *p << endl;
    return 7;
}

int method2(int* p){
    cout << "Pointer: " << *p << endl;
    return 0;
}
int method3(int& p){
    cout << "Reference: " << p << endl;
    return 0;
}

std::unique_ptr<std::string> method4(){
    return make_unique<std::string>("Test");
}

int main(){
    std::unique_ptr<int> p = make_unique<int>(7);
    method0(p);

    method2(p.get());

    method3(*p.get());

    std::shared_ptr<string> s = method4();
    std::cout << "Unique to Shared: " << *s << std::endl;

    method1(std::move(p));
}


