class Solution:
    def minimizeTheDifference(self, mat: List[List[int]], target: int) -> int:

        def solve(index, curSum):
            if index == len(mat):
                return abs(target - curSum)
            
            minRes = float("inf")
            for x in set(mat[index]):
                res = solve(index + 1, curSum + x)
                minRes = min(res, minRes)
                if minRes == 0:
                    return 0
            return minRes

        return solve(0, 0)