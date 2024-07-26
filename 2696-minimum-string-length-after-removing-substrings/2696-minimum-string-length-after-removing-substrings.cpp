int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int minLength(string s) {
        vector<char> stack;
        for (char chr : s) {
            if (!stack.empty()) {
                if (chr == 'B' && stack.back() == 'A' || chr == 'D' && stack.back() == 'C') {
                    stack.pop_back();
                    continue;
                }
            }
            stack.push_back(chr); 
        }
        return stack.size();
    }
};

