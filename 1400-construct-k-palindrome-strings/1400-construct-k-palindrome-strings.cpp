int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    bool canConstruct(std::string s, int k) {
        if (k > s.length()) return false;
        unordered_map<char,int> freq;
        for (char c : s) freq[c]++;

        int odd_count=0;
        for (auto& [_, count] : freq) {
            if (count % 2 == 1) {
                odd_count++;
            }
        }

        return odd_count <= k;   
    }
};