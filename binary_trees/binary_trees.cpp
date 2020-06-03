#include <vector>
#include <iostream>
#include <stack>
using namespace std;

template<class T>
struct Node{
    Node* left;
    Node* right;
    T val;
}

template<class T>
void preorder_iter(Node<T>* node){
    if (not node) return;

    stack<Node<T>> stack;
    stack.push(node);

    while(!stack.empty()){
        if(not node){
            cout << node.val << endl;
            node = stack.pop();
        }
    }

}

template<class T>
void preorder_rec(Node<T>* ndoe){


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
