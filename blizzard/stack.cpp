#include <iostream>
#include <vector>
using namespace std;

/* To optimize space, the stack only allocates minimal memory at first
 * When the stack's capacity is reached, the stack doubles it heap allocation and
 * copies contents over. The amoritzed performance is O(1) for push and pop
 * operations, while the space complexity is O(N), N being the max number of
 * elements at any point in the stack
 */
class Stack{
    public:
        Stack(): capacity{1}{
            data = new int[capacity];
        }

        ~Stack(){ delete data; }

        void Push(int n){
            if (size == capacity) Resize();

            data[size++] = n;
        }

        int Pop(){
            if (size == 0) return std::numeric_limits<int>::max();
            return data[--size];
        }

    private:
        int capacity{};
        int size{};
        int* data;

        void Resize(){
            int tmp = capacity;
            capacity = capacity * 2;
            int* mem = new int[capacity];
            memcpy(mem, data, tmp * sizeof(*data));
            delete data;
            data = mem;
        }
};


void test(){
    Stack s;
    vector<int> inputs = {4, 2, 0, 3, 223, 782, 909, 1, 3, 5, 7};
    vector<int> results = {909, 782, 223, 3, 0, 7, 5, 3, 1, 2, 4};
    int input_idx{};
    int result_idx{};

    for(; input_idx < 7; input_idx++){
        s.Push(inputs[input_idx]);
    }

    for(; result_idx < 5; result_idx++){
        auto n = s.Pop();
        assert(n == results[result_idx]);
    }

    for(; input_idx < 11; input_idx++){
        s.Push(inputs[input_idx]);
    }

    for(; result_idx < 11; result_idx++){
        auto n = s.Pop();
        assert(n == results[result_idx]);
    }

    std::cout << "\n--- Test: PASSED" << std::endl;
}

int main(){
    test();
}
