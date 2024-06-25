class Solution:
    def longestPalindrome(self, s: str) -> int:
        result=0
        sc = Counter(s)
        for val in sc.values():
          print(val)
          result += (val // 2) * 2
          if result % 2 == 0 and val % 2 == 1:
             result += 1

        return result