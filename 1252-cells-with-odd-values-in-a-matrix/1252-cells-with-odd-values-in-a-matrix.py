class Solution:
    def oddCells(self, m: int, n: int, indices: List[List[int]]) -> int:
        matrix = [ [0] * n for _ in range(m) ]

        for rc in indices:
            for i in range(n):
                matrix[rc[0]][i] += 1
            for i in range(m):
                matrix[i][rc[1]] += 1
        
        return sum(cell % 2 != 0 for row in matrix for cell in row)
        