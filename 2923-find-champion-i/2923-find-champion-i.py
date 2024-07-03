class Solution:
    def findChampion(self, grid: List[List[int]]) -> int:
        transposed_grid = list(zip(*grid))
        for index, column in enumerate(transposed_grid):
            if all(cell == 0 for cell in column):
                return index
        return -1  