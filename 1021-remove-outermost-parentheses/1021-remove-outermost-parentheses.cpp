class Solution {
public:
    string removeOuterParentheses(string s) {
        vector<int> stack;
        string res="";

        for (char chr : s) {
            if (chr==')') stack.pop_back();
            if (!stack.empty()) res += chr;
            if (chr=='(') stack.push_back(chr);
        }
        return res;
    }
};

