class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        cset = set()
        left = result = 0

        for right in range(len(s)):
            while s[right] in cset:
                cset.remove(s[left])
                left += 1
            cset.add(s[right])
            result = max(result, right - left + 1)
        return result