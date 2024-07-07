class Solution {
public:
    vector<int> dailyTemperatures(vector<int>& temperatures) {
        int n = temperatures.size();
        vector<int> result(n, 0);  // Initialize the result array with 0s
        stack<int> stack;  // Stack to store indices of the temperatures

        for (int i = 0; i < n; ++i) {
            // While stack is not empty and current temperature is greater than the temperature at the index stored at the top of the stack
            while (!stack.empty() && temperatures[i] > temperatures[stack.top()]) {
                int last = stack.top();  // Get the index from the top of the stack
                stack.pop();  // Pop the index from the stack
                result[last] = i - last;  // Calculate the number of days and update the result array
            }
            stack.push(i);  // Push the current index onto the stack
        }

        return result;
    }
};