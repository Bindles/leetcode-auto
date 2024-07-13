int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    string removeStars(string s) {
        vector<int> stack;
        string str="";
        
        for (char chr : s) {
            if (chr == '*') stack.pop_back();
            else stack.push_back(chr);
        }
        
        for (int i=0;i<stack.size();++i) {
            str+=stack[i];
        }
        return str;
    }
};