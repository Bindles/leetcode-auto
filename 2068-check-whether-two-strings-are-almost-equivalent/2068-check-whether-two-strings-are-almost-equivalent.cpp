int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    bool checkAlmostEquivalent(string word1, string word2) {
        unordered_map<char, int> charCount;
        for (char key : word1) charCount[key]++; // Count chars in word1
        // Subtract count for characters in word2
        for (char key : word2) charCount[key]--; 
        // Check if the absolute difference exceeds 3 for any character
        for (auto& pair : charCount) {
            if (abs(pair.second) > 3) {
                return false;
            }
        }

        return true;
    }
};