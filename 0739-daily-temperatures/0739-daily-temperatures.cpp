class Solution {
public:
    vector<int> dailyTemperatures(vector<int>& temperatures) {
        int n=temperatures.size();
        vector<int> result(n,0);
        vector<int> stack;

        for (int i=0; i < n; ++i) {
            while (!stack.empty() && temperatures[i] > temperatures[stack.back()]) {
                int last = stack.back();
                stack.pop_back();
                result[last] = i - last;
            }

            stack.push_back(i);
        }

        return result;       
    }
};