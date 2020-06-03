#include <thread>
#include <iostream>
#include <future>
#include <vector>
#include <mutex>
#include <condition_variable>
#include <cstdlib>
#include <queue>

using namespace std;
std::condition_variable cv;
std::mutex m;

class ConsumerProducer {
    public:
        ConsumerProducer(){}
        void producer(int n){
            for(int i = 0; i < n; i++){
                {
                    std::lock_guard<std::mutex> l(m);
                    queue.push(i);
                    cout << "Producing data..[" << std::this_thread::get_id() << "] {" << i << "}..." << endl;
                }
                cv.notify_all();
            }
            {
                std::lock_guard<std::mutex> l(m);
                if(n == 1)
                    finished = true;
            }

            cv.notify_all();

        }

        void consumer(){
            while(true){
                std::unique_lock<std::mutex> lk(m);
                cv.wait(lk, [this]{return finished && !queue.empty();}); //Params:  unique_lock, predicate.... Atomically unlocks if it actually waits
                while(!queue.empty()){
                    std::cout << "Consuming data[" << std::this_thread::get_id() << "].. { " << queue.front() << "}..." << endl;
                    queue.pop();
                }

                if(finished) break;
            }
            std::this_thread::sleep_for(2s);

        }

        // This: cv.wait(lk, [this]{return finished && !queue.empty();}); //Params:  lock, predicate.... Atomically unlocks if it actually waits
        // Is similar to:
        //      while(!predicate)
        //          wait(lock)
        // std::unique_lock is necessary because when instantiated it is not 'locking' automatically, whereas lock_guard does.

    private:
        std::queue<int> queue;
        bool finished{};
};


int main(){
    ConsumerProducer cp;
    std::thread t1(&ConsumerProducer::producer, &cp, 10);
    std::thread t2(&ConsumerProducer::consumer, &cp);
    std::thread t3(&ConsumerProducer::producer, &cp, 10);
    std::thread t4(&ConsumerProducer::consumer, &cp);
    std::thread t5(&ConsumerProducer::producer, &cp, 1);

    t1.join();
    t2.join();
    t3.join();
    t4.join();
    t5.join();

    cout << "DONE" << endl;
}
