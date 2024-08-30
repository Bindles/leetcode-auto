class Solution {
public:
    bool validPalindrome(string s) {
        for (int i = 0; i < s.length(); ++i) {
            // Create a new string by excluding the character at index i
            string s_minus_ind = s.substr(0, i) + s.substr(i + 1);
            
            // Check if the new string is a palindrome
            string reversed = s_minus_ind;
            reverse(reversed.begin(), reversed.end());
            if (s_minus_ind == reversed) {
                return true;
            }
        }
        return false;
    }
};