class Solution {
public:
    int findMinFibonacciNumbers(int k) {
        // Generate Fibonacci numbers up to k
        vector<int> fibs = {1, 1};
        while (fibs.back() <= k) {
            fibs.push_back(fibs.back() + fibs[fibs.size() - 2]);
        }
        
        int count = 0;
        int i = fibs.size() - 1;
        
        // Use the largest possible Fibonacci number and subtract it from k
        while (k > 0) {
            if (fibs[i] <= k) {
                k -= fibs[i];
                count++;
            }
            i--;
        }
        
        return count;
    }
};