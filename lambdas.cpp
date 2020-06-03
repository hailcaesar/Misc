#include <vector>
#include <numeric>
#include <iostream>
using namespace std;

void lambdas(){
    int x{};
    auto fn = [x](int y){return y * y + x;};

    cout << "<<LAMBDA>>" << endl;
    cout << "Squared 5->" << fn(5) << endl;
    x = 10;   //x should not affect the original value
    cout << "Squared 4->" << fn(4) << endl;
}

struct average_accumulate_t{
    int sum;
    size_t n;
    double get_average() const { return ((double)sum)/n; }
};

auto func_accumulate_average =
    [](average_accumulate_t accAverage, int value) {
        return average_accumulate_t(
            {accAverage.sum+value, // value is added to the total sum
            accAverage.n+1});      // increment number of values seen
    };

class RunningAverage{
    average_accumulate_t _avg;
public:
    RunningAverage():_avg({0,0}){} // initialize to empty average
    double average_so_far() const { return _avg.get_average(); }

    void add_values(const vector<int>& v){
        _avg = std::accumulate(v.begin(), v.end(),
            _avg, // NOT the default initial {0,0}!
            func_accumulate_average);
    }
};

int accumulate2(){
    RunningAverage r;
    r.add_values(vector<int>({1,2,3,4,5}));
    std::cout << "Running Average: " << r.average_so_far() << std::endl; // 1.0
    r.add_values(vector<int>({-5,-4,-3,-2,-1}));
    std::cout << "Running Average: " << r.average_so_far() << std::endl; // 0.0
}

void accumulate(){
    vector<int> nums(10);
    std::iota(nums.begin(), nums.end(), 0);

    int x = std::accumulate(nums.begin(), nums.end(), 0);
    cout << "<<ACCUM>>" << endl;
    cout << "1 to 10->" << x << endl;
}

int main(){

    lambdas();
    accumulate();
    accumulate2();
}
