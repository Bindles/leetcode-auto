class Solution:
    def numTilePossibilities(self, tiles: str) -> int:
        n = len(tiles)
        res = set()
        for i in range(1, n + 1):
            res.update(permutations(tiles, i))
        return len(res)



        