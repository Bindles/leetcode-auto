class Solution {
public:
    int maxDepth(string s) {
        stack<char> stack;
        int maxcount=0;
        for (const auto& chr : s) {
            if ( chr == '(' ) stack.push(chr);
            if ( chr == ')' ) stack.pop();
            if (stack.size() > maxcount) maxcount = stack.size();
        }
        return maxcount;
    }
};