class Solution {
public:
    int minLength(string s) {
        vector<int> stack;
        for (char chr : s) {
            if (!stack.empty() && chr == 'B' && stack.back() == 'A') {
                stack.pop_back();
            } else if (!stack.empty() && chr == 'D' && stack.back() == 'C') {
                stack.pop_back();
            } else {
                stack.push_back(chr);
            }
        }

        return stack.size();
    }
};

