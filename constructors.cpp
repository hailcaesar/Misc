
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
    list.push_back({1, 2, 3}); //Move Constructor
    Vertex w = v;              //Copy Constructor
    z = v;                     //Assignment Operator
    z = std::move(v);          //Move Assignment Operator

    z = Vertex(1,2,3);

    cout << v.x << endl;
}
