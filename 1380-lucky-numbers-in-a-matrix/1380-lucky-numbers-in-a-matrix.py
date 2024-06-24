class Solution:
    def luckyNumbers (self, matrix: List[List[int]]) -> List[int]:
        # Transpose the matrix and find the maximum in each column
        max_in_col = [max(col) for col in zip(*matrix)]

        # Find the minimum in each row
        min_in_row = [min(row) for row in matrix]

        # Find the intersection of the two lists
        result = list(set(min_in_row) & set(max_in_col))
        return result