class Solution:
    def shortestToChar(self, s: str, c: str) -> List[int]:
      res = []
      char_indices = [i for i, char in enumerate(s) if char == c]
      
      for i in range(len(s)):
          res.append(min(abs(i - index) for index in char_indices))
      
      return res