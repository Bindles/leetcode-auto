class Solution:
    def countKConstraintSubstrings(self, s: str, k: int) -> int:
        total = 0
        left = 0
        count_zeros = 0
        count_ones = 0

        for right in range(len(s)):
            if s[right] == '0':
                count_zeros += 1
            if s[right] == '1':
                count_ones += 1

            # Shrink window if both counts exceed k
            while count_zeros > k and count_ones > k:
                if s[left] == '0':
                    count_zeros -= 1
                if s[left] == '1':
                    count_ones -= 1
                left += 1

            # Every substring from `left` to `right` is valid
            total += right - left + 1

        return total
        