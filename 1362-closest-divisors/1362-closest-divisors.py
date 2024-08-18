class Solution:
    def closestDivisors(self, num: int) -> List[int]:
        for i in range(int(math.sqrt(num + 2)), 1, -1):
            if (num + 1) % i == 0:
                return [i, (num + 1) // i]
            elif (num + 2) % i == 0:
                return [i, (num + 2) // i]
        
        return [1, num + 1]       
        