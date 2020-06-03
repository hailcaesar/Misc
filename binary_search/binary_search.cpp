#include <vector>
#include <iostream>
using namespace std;

// Regular binary search
int binary_search_v1(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] == target) return m;
        if (nums[m] >= target)
            r = m - 1;
        else
            l = m + 1;
    }
    return -1;
}

// Find highest possible k where arr[k] < target
// IE. Get as close to target but has to remain less than
int binary_search_v2(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] >= target){
            r = m - 1;
        }
        else{
            l = m + 1;
            res = m;
        }
    }
    return res;
}

// First occurrence of target
int binary_search_v3(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] == target){
            r = m - 1;
            res = m;
        }
        else if (nums[m] > target)
            r = m - 1;
        else
            l = m + 1;
    }
    return res;
}

// Last occurrence of target
int binary_search_v4(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] == target){
            l = m + 1;
            res = m;
        }
        else if (nums[m] > target)
            r = m - 1;
        else
            l = m + 1;
    }
    return res;
}

// Lowest k when A[k] > target [Similar to std::upper_bound]
// IE. First first value > target
// IE. Where it should be inserted, or one idx higher than target found
int binary_search_v5(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = nums.size();

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] <= target){
            l = m + 1;
        }
        else{
            res = m;
            r = m - 1;
        }
    }
    return res;
}

// Lowest k when A[k] >= target [Similar to std::lower_bound]
// IE. First first value >= target
int binary_search_v6(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] >= target){
            r = m - 1;
            res = m;
        }
        else
            l = m + 1;
    }
    return res;
}

// Binary serach on rotated array
int binary_search_v7(const vector<int>& nums, int target){
    int l = 0, r = nums.size() - 1, m = -1;
    int res = -1;

    while (l <= r){
        m = l + (r - l) / 2;
        if (nums[m] >= target){
            r = m - 1;
            res = m;
        }
        else
            l = m + 1;
    }
    return res;
}

// Find minimum in rotated list
//

// Sqrt


// Find Peak


//
//V2
int find_peak(const vector<int>& nums){
    int left = 0;
    int right = nums.size() - 1;
    int N =  nums.size();
    while (left < right){
        int mid = left + (right - left) / 2;
        if(nums[mid] < nums[mid+1]){
            left = mid + 1;         //mid cannot possibly be the peak
        }
        else{
            right = mid;            //mid could be the peak but not sure!
        }
    }
    assert(left == right);
    return right;
}



//Python's bisect_left / std::lower_bound --->   First occurrence of target or where item should be inserted
//Python's bisect_right / std::upper_bound  -->   One past last occurrence, or where item should be inserted
//Notice that when using the above algorithms, you are not guaranteed there is an actual occurrence or target
//You won't get a '-1' return value.   std::upper_bound returns N.size() if target is anything higher than the list, and 0 if smaller
int main(){
    vector<int> test = {-1, 1,3,5,6,7,19,23};
    int res;
    //Normal
    res = binary_search_v1(test, -1); assert(res == 0);
    res = binary_search_v1(test, 23); assert(res == 7);

    //Highest less than target
    res = binary_search_v2(test, -1); assert(res == -1);  //not found
    res = binary_search_v2(test, 23); assert(res == 6);
    res = binary_search_v2(test, 16); assert(res == 5);

    vector<int> test2 = {-1, 1,3,5,6,7,7,7};
    vector<int> test3 = {-1, -1, -1};

    //First occurrence
    res = binary_search_v3(test2, 7); assert(res == 5);
    res = binary_search_v3(test2, -2); assert(res == -1);
    res = binary_search_v3(test3, -1); assert(res == 0);

    //Last occurence
    res = binary_search_v4(test2, 7); assert(res == 7);
    res = binary_search_v4(test2, -2); assert(res == -1);
    res = binary_search_v4(test3, -1); assert(res == 2);

    //Lower higher than tartet [std::upper_bound]
    res = binary_search_v5(test2, 7); assert(res == 8);
    res = binary_search_v5(test2, -2); assert(res == 0);
    res = binary_search_v5(test3, -1); assert(res == 3);

    vector<int> test4 = {-1,1,2,3,4,5,6,7,8,9,10,9};
    res = find_peak(test4); assert(res == 10);
    cout << "Succeeded!!" << endl;

}
