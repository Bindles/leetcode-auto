class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        return [list(row) for row in zip(*matrix)]

    def equalPairs(self, grid: List[List[int]]) -> int:
        count = 0
        c = self.transpose(grid)

        for i in range(len(grid)):
            for j in range(len(grid)):
                if grid[i] == c[j]:
                    count += 1
        return count