#include <cstdint>
#include <iostream>
#include <bitset>

const int N = 32;

//Using STL
int8_t count_bits(uint32_t num){
    std::bitset<N> bset(num);
    return bset.count();
}



/* Non-STL version
 * Instead of checking every bit, this function clears the
 * right-most bit onn every iteration
 */
int8_t count_bits_nonstl(uint32_t num){
    uint8_t set_bits{};

    while(num){
        num = num & (num - 1);
        set_bits++;
    }

    return set_bits;
}


void test(){
    srand(time(nullptr));
    uint32_t random = rand();
    assert(count_bits_nonstl(random) == count_bits(random));
    std::cout << "\n--- Test #1: PASSED" << std::endl;
}


void test2(){
    assert(count_bits(123456) == 6);
    assert(count_bits(0) == 0);
    assert(count_bits(std::numeric_limits<uint32_t>::max()) == 32);
    std::cout << "\n--- Test #2: PASSED" << std::endl;
}

int main(){
    test();
    test2();
}
