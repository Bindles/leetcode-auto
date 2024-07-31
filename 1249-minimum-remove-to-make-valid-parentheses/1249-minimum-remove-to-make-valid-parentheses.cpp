int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    string minRemoveToMakeValid(string s) {
        string result;
        vector<string> stack;

        for (const auto& chr : s) {
            if (chr == '(') {
                stack.push_back(result);
                result.clear();
            } else if (chr == ')') { 
                if (!stack.empty()) {
                    result = stack.back() + '(' + result + ')';
                    stack.pop_back();
                }
            } else {
                result += chr;
            }
        }
        
        string stack_joined;
        for (const auto& elem : stack) {
            stack_joined += elem;
        }
        
        return stack_joined + result;
    }
};
