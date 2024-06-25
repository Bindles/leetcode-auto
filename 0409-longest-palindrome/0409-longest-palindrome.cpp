class Solution {
public:
    int longestPalindrome(string s) {
        unordered_map<char, int> sc;
        int result=0;

        for (char chr : s){
            sc[chr]++;
        }

        for (auto& pair : sc) {
            result+= (pair.second / 2) * 2;
            if (result % 2 == 0 && pair.second % 2 == 1) {
                result+=1;
            }
        }
        return result;
    }
};