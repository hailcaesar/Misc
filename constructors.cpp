
#include <iostream>
#include <vector>
using namespace std;

class Vertex{

    public:
        Vertex() = default;
        Vertex(int x, int y, int z): x(x), y(y), z(z){}
        Vertex(const Vertex& other){
            x = other.x;
            y = other.y;
            z = other.z;
            cout << "Copied!" << endl;
        }

        //Recommented to pass by const&, or by value
        //C++ compiler prevents a temporary object to be passed to a non-const reference parameters
        //ie.
        //Vertex a;
        //a = Vertex(1,2,3);
        Vertex& operator=(const Vertex& other){
            x = other.x;
            y = other.y;
            z = other.z;
            cout << "Copy Assigned!" << endl;
            return *this;
        }

        //Not CONST!
        Vertex(Vertex&& other){
            x = other.x;
            y = other.y;
            z = other.z;
            cout << "Moved!" << endl;
        }

        Vertex& operator=(const Vertex&& other){
            x = other.x;
            y = other.y;
            z = other.z;
            cout << "Move Assigned!" << endl;
            return *this;
        }

        int x{};
        int y{};
        int z{};
};


int main(){
    Vertex a;
    vector<Vertex> list;
    Vertex v(1, 2, 3);
    Vertex z(4, 5, 6);
    list.push_back({1, 2, 3});  // Move Constructor
    Vertex w = v;               // Copy Constructor
    z = v;                      // Assignment Operator
    z = std::move(v);           // Move Assignment Operator

    z = Vertex(1,2,3);

    cout << v.x << endl;

    int i = 5;
    const int& tmp = i;         // Const Reference
    //tmp = 6; //Error
    int const& tmp2 = i;        // Const Reference
    //tmp = 7;  //Error

    int j = 5;
    int const* tmp3 = &j;       // Pointer to const
    //*tmp3 = 8; //Error
    const int * tmp4 = &j;      // Pointer to const
    //*tmp3 = 9;
    int * const tmp5 = &j;      // Const Pointer
    *tmp5 = 10;                 // works!
    //tmp5 = tmp3; //Error


    Vertex l {30,31,32};
    auto&& rvalue = std::move(l);
    cout << "RValue: " << rvalue.x << endl;
    Vertex r;
    r = rvalue;                 //Copy Assigned!  Not sure why there is a need to keep an auto&& rvalue
    r = std::move(rvalue);       //Move Assigned!  l was 'moved' to ravalue, but rvalue it is still an lvalue (it has a name)... && just means it CAN ACCEPT moved from values
    // to move from auto&& you need to do std::move(rvalue) again.
}
