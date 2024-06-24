class Solution:
    def luckyNumbers (self, matrix: List[List[int]]) -> List[int]:
      return list(set(min(row) for row in matrix) & set(max(col) for col in zip(*matrix)))