class Solution {
public:
    string freqAlphabets(string s) {
        unordered_map<string, char> mapx;
        for (int i = 1; i <= 26; ++i) {
            mapx[to_string(i)] = 'a' + (i - 1);
        }
        vector<string> stack;
        string strx;
        
        for (char chr : s) {
            if (chr != '#') {
                stack.push_back(string(1, chr));
            } else {
                strx += stack.back(); stack.pop_back();
                strx += stack.back(); stack.pop_back();
                reverse(strx.begin(), strx.end());
                stack.push_back(strx);
                strx.clear();
            }
        }

        //reuse strx which should be blank string instead of creting 'string result'
        for (const auto& num : stack) {
            strx += mapx[num];
        }
        return strx;
    }
};

