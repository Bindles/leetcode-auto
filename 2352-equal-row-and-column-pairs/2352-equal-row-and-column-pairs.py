class Solution:
    def equalPairs(self, grid: List[List[int]]) -> int:
        count = 0
        c = [list(row) for row in zip(*grid)]

        for i in range(len(grid)):
            for j in range(len(grid)):
                if grid[i] == c[j]:
                    count += 1
                    
        return count