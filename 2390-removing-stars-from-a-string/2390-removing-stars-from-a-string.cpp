int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    string removeStars(string s) {
        int i = 0;
        for(char chr : s) {
            chr != '*' ? s[i++] = chr : --i;
        }
        return s.substr(0, i);
    }
};