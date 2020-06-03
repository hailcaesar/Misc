#include <iostream>
#include <unordered_map>
using namespace std;

/* A map is used to associate a char with its order
 * sort function check this map to order the input string
 */
void SortLetters(char* input, char* sortOrder){
    unordered_map<char, int> order;
    for(int i = 0; i < strlen(sortOrder); i++){
        order[sortOrder[i]] = i;
    }

    sort(input, input + strlen(input), [&order](auto a, auto& b){ return order[a] < order[b];});
}


void test(){
    char* inputStr = strdup("sort the letters in this string");
    char* order = strdup(" isetlgornh");
    int origSize = strlen(inputStr);

    SortLetters(inputStr, order);

    assert(origSize == strlen(inputStr));
    assert(strcmp(inputStr, "     iiisssseeettttttlgorrrnnhh") == 0);
    std::cout << "\n--- Test: PASSED" << std::endl;
}

int main(){
    test();
}
