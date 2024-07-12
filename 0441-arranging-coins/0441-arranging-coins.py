class Solution:
    def arrangeCoins(self, n: int) -> int:
        stair_cost=1
        stairs_completed=0

        while n >= stair_cost:
            n -= stair_cost
            stairs_completed+=1
            stair_cost+=1

        return stairs_completed        
        