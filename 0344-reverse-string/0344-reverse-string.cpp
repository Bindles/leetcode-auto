class Solution {
public:
    void reverseString(vector<char>& s) {
        int last = s.size()-1;
        for (int i=0; i<s.size()/2; i++) {
            char temp = s[i];
            s[i] = s[last];
            s[last] = temp;
            last--;
        }
    }
};