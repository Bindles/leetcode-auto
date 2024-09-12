class Solution {
public:
    int countKConstraintSubstrings(string s, int k) {
        int total = 0;
        int left = 0;
        int count_zeros = 0, count_ones = 0;

        for (int right = 0; right < s.size(); ++right) {
            if (s[right] == '0') count_zeros++;
            if (s[right] == '1') count_ones++;

            // Shrink window if both counts exceed k
            while (count_zeros > k && count_ones > k) {
                if (s[left] == '0') count_zeros--;
                if (s[left] == '1') count_ones--;
                left++;
            }

            // Every substring from `left` to `right` is valid
            total += right - left + 1;
        }

        return total;
    }
};