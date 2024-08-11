class Solution {
public:
    void backtrack(vector<string>& result, string current, int open, int close, int max) {
        // If the current string is complete (i.e., 2n characters), add it to the result
        if (current.length() == max * 2) {
            result.push_back(current);
            return;
        }
        
        // Add an open parenthesis if we still have open ones available
        if (open < max) {
            backtrack(result, current + "(", open + 1, close, max);
        }
        
        // Add a close parenthesis if it won't lead to an invalid sequence
        if (close < open) {
            backtrack(result, current + ")", open, close + 1, max);
        }
    }

    vector<string> generateParenthesis(int n) {
        vector<string> result;
        backtrack(result, "", 0, 0, n);
        return result;
    }
};