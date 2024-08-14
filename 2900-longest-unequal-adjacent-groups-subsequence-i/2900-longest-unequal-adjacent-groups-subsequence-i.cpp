int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    vector<string> getLongestSubsequence(vector<string>& words, vector<int>& groups) {
        vector<string> subsequence;
        if (words.empty()) return subsequence;

        subsequence.push_back(words[0]);
        for (int i=1; i<words.size(); ++i) {
            if (groups[i] != groups[i-1]) {
                subsequence.push_back(words[i]);
            }
        }
        return subsequence;
    }
};