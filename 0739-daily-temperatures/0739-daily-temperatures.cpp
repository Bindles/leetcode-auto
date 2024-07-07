class Solution {
public:
    vector<int> dailyTemperatures(vector<int>& temperatures) {
        int n = temperatures.size();
        vector<int> answer(n, 0);  // Initialize the result array with 0s
        stack<int> s;  // Stack to store indices of the temperatures

        for (int i = 0; i < n; ++i) {
            // While stack is not empty and current temperature is greater than the temperature at the index stored at the top of the stack
            while (!s.empty() && temperatures[i] > temperatures[s.top()]) {
                int last = s.top();  // Get the index from the top of the stack
                s.pop();  // Pop the index from the stack
                answer[last] = i - last;  // Calculate the number of days and update the result array
            }
            s.push(i);  // Push the current index onto the stack
        }

        return answer;
    }
};