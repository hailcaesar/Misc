#include <thread>
#include <iostream>
#include <future>
#include <vector>
#include <mutex>
#include <cstdlib>

using namespace std;

std::mutex global;
class Runner {
    public:
        Runner(){}
        void run(int start, int end){
            for (int i = start ; i < end; i++){
                cout << "*" << i << "*\n";
            }
        }
        static void runStatic(int start, int end){
            for (int i = start ; i < end; i++){
                cout << "(" << i << ")\n";
            }
        }
        void operator()(int start, int end){
            for (int i = start ; i < end; i++){
                cout << "*" << i << "*\n";
            }
        }

        std::string buildString(){
            std::string x;
            for (int i = 30000 ; i < 33000; i++){
                x += "a";

            }
            return x;
        }

        int tmp{};
        void readAndWrite(){
            for (int i = 0 ; i < 300; i++){
                global.lock();
                cout << tmp << "-locked" << endl;
                tmp += rand() % 10;
                global.unlock();
            }
        }
};

void tmp(){
    for (int i = 30000 ; i < 33000; i++){
        cout << i << endl;
    }
}

std::atomic<int> x;
void atomicInc(){
    for(int i = 0; i < 50000000; i++)
        x++;

    cout << "value: " << x << endl;
}

int main(){
    //Method 1 (non-member function)
    std::thread t0(&tmp);

    //Method 2 (non-static member functions)
    std::thread t1(&Runner::run, new Runner(), 0, 5000);
    std::thread t2(&Runner::run, new Runner(), 15000, 20000);

    //Method 3 (static member functions)
    std::thread t3(&Runner::runStatic, 70000, 73000);

    //Method 4 (function object)
    std::thread t4(Runner(), 0, 5000);

    auto lambda = [](int start, int end){
        for (int i = start ; i < end; i++){
            cout << "&" << i << "&\n";
        }
    };

    //Method 5 (lambda)
    std::thread t5(lambda, 190000, 197000);


    t0.join();
    t1.join();
    t2.join();
    t3.join();
    t4.join();
    t5.join();

    //Atomics
    std::thread t6(&atomicInc);
    std::thread t7(&atomicInc);
    t6.join();
    t7.join();


    //Async
    std::future<string> fut = async(&Runner::buildString, new Runner());
    cout << "Called async, and now about to wait" << endl;

    fut.wait();

    cout << "Future.get() = " << fut.get() << endl;
    //TODO:  Play with async + consequences

    // Wait for all threads
    std::vector<std::thread> threads;
    for (int i = 0; i < 10; i++){
        threads.emplace_back(std::thread(lambda, 400, 800));
    }

    for(auto& thread : threads)
        thread.join();

    //Mutexes
    Runner x;
    std::thread t8(&Runner::readAndWrite, &x);
    std::thread t9(&Runner::readAndWrite, &x);  //Both threads accessing same object but locking shared data

    t8.join();
    t9.join();
    cout << "DONE" << endl;
}
