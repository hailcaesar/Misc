#include <vector>
#include <iostream>
using namespace std;

void merge(vector<int>& nums, int left, int mid, int right){
    int left_ptr = left;
    int right_ptr = mid + 1;
    std::vector<int> buffer(right - left + 1, -100);
    int buffer_ptr{};

    while (left_ptr <= mid && right_ptr <= right){
        if (nums[left_ptr] < nums[right_ptr]){
            buffer[buffer_ptr] = nums[left_ptr];
            left_ptr++;
        }
        else{
            buffer[buffer_ptr] = nums[right_ptr];
            right_ptr++;
        }
        buffer_ptr++;
    }

    while(left_ptr <= mid){    buffer[buffer_ptr] = nums[left_ptr]; left_ptr++; buffer_ptr++;};
    while(right_ptr <= right){ buffer[buffer_ptr] = nums[right_ptr]; right_ptr++; buffer_ptr++;};

    for (int idx = left; idx <= right; idx++){
        nums[idx] = buffer[idx - left];
    }
}

void merge_sort(vector<int>& nums, int left, int right){
    if (right - left + 1 <= 1)  return;

    int mid = left + (right - left) / 2;
    merge_sort(nums, left, mid);
    merge_sort(nums, mid + 1,  right);

    merge(nums, left,  mid, right);
}


// quick_sort(nums, 0, nums.size() - 1);
void quick_sort(vector<int>& nums, int l, int r){
    if (l >= r) return;

    int tail = l;
    int& pivot = nums[r];
    for (int idx = l; idx < r; idx++){
        if (nums[idx] <= pivot){
            swap(nums[tail], nums[idx]);
            tail++;
        }
    }
    swap(nums[tail], pivot);
    int partition = tail;

    quick_sort(nums, partition+1, r);
    quick_sort(nums, l, partition-1);
}


void quick_sort2(vector<int>& nums, int l, int r){
    if(l >= r) return;
    int i = l; // cursor for final pivot location
    for(int j = l; j <= r - 1; j++){ // nums[r] is chosen as the pivot
        if(nums[j] <= nums[r]){
            swap(nums[i], nums[j]);
            i++; // smaller or equal elements go to the left of i
        }
    }
    swap(nums[i], nums[r]); // after swap, the pivot is nums[i]
    quick_sort(nums, l, i - 1);
    quick_sort(nums, i + 1, r);
}

// TODO!!!!!!!!!!!!
/* Function to sort an array using insertion sort */
void insertion_sort(int A[], int size){
   int i, key, j;
   for (i = 1; i < size; i++){
       key = A[i];
       j = i-1;

       /* Move elements of A[0..i-1], that are greater than key, to one
          position ahead of their current position.
          This loop will run at most k times */
       while (j >= 0 && A[j] > key){
           A[j+1] = A[j];
           j = j-1;
       }
       A[j+1] = key;
   }
}

int main(){
    vector<int> test = {80,10,-1,4,5,19,200,145,-5,45,11};
    //merge_sort(test, 0, test.size() - 1);
    quick_sort(test, 0, test.size() - 1);

    for(auto& item : test){
        cout << item << ", ";
    }

    cout << endl;

}
