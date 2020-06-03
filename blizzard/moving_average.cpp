#include <iostream>
#include <vector>
#include <deque>

/* Computes a moving average over a window of size N
 * Algorithm uses a queue (FIFO) to displace the oldest
 * value when a new sample is provided.  A total is always
 * maintained.  The assumption is that AddSample will be
 * called many more times than GetAverage, so as an optimization
 * the actual average is only computed upon request.
 */
class MovingAverage {
    public:
        MovingAverage(int window_size = 10) : W(window_size), values(W,0){}

        void AddSample(int sample){
            int oldest = values.front();
            values.pop_front();
            sum = sum - oldest + sample;
            values.push_back(sample);
        }

        int GetAverage(){
            return sum / W;
        }
    private:
        int sum{};
        int W{};
        std::deque<int> values;
};


void test(){
    MovingAverage x;
    std::vector<int> input{0x08, 0x0A, 0x06, 0x08, 0x07, 0x09, 0x08, 0x12, 0x14, 0x13, 0x15, 0x12, 0x0E, 0x0D, 0x0F, 0x07,
        0x36, 0x2E, 0x2F, 0x28, 0x35, 0x2D, 0x2F, 0x30, 0x2E, 0x31, 0x2D, 0x1D, 0x30, 0x30, 0x30, 0x30};
    std::vector<int> results{0x00, 0x01, 0x02, 0x3, 0x03, 0x04, 0x05, 0x07, 0x09, 0x0B, 0x0C, 0x0D, 0x0E, 0x0E, 0x0F, 0x0F,
        0x13, 0x16, 0x19, 0x1B, 0x1E, 0x21, 0x24, 0x28, 0x2B, 0x2F, 0x2E, 0x2C, 0x2D, 0x2D, 0x2D, 0x2D};
    int i{};
    for(auto& num : input){
        x.AddSample(num);
        assert(x.GetAverage() == results[i++]);
    }
    std::cout << "\n--- Test: PASSED" << std::endl;
}

int main(){
    test();
}
