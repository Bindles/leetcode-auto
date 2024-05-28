class Solution:
    def getMaximumGold(self, grid: List[List[int]]) -> int:
        def dfs(i, j):
            if i < 0 or i >= m or j < 0 or j >= n or grid[i][j] == 0:
                return 0
            
            # Temporarily mark the cell as visited by setting its value to 0
            temp = grid[i][j]
            grid[i][j] = 0
            
            # Explore adjacent cells
            max_gold = 0
            for dx, dy in directions:
                max_gold = max(max_gold, dfs(i + dx, j + dy))
            
            # Restore the original value of the cell
            grid[i][j] = temp
            
            return max_gold + temp
        
        m, n = len(grid), len(grid[0])
        directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        max_gold = 0
        
        # Iterate over each cell in the grid
        for i in range(m):
            for j in range(n):
                if grid[i][j] != 0:
                    max_gold = max(max_gold, dfs(i, j))
        
        return max_gold
