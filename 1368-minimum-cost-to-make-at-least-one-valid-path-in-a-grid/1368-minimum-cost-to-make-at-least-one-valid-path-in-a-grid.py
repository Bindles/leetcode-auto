class Solution:
    def minCost(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])
        queue = [(m-1,n-1)]
        potential = []
        cost = 0
        while True:
            for x,y in queue:
                if x == 0 and y == 0:
                    return cost
                if grid[x][y] > 0:
                    grid[x][y] = 0
                    if x > 0:
                        if grid[x-1][y] == 3:
                            queue.append((x-1,y))
                        elif grid[x-1][y] > 0:
                            potential.append((x-1,y))
                    if x < m-1:
                        if grid[x+1][y] == 4:
                            queue.append((x+1,y))
                        elif grid[x+1][y] > 0:
                            potential.append((x+1,y))
                    if y > 0:
                        if grid[x][y-1] == 1:
                            queue.append((x,y-1))
                        elif grid[x][y-1] > 0:
                            potential.append((x,y-1))
                    if y < n-1:
                        if grid[x][y+1] == 2:
                            queue.append((x,y+1))
                        elif grid[x][y+1] > 0:
                            potential.append((x,y+1))
            cost += 1
            queue = potential
            potential = []