class Solution:
    def countCompleteDayPairs(self, hours: List[int]) -> int:
        return sum(
            1 for i in range(len(hours)-1) 
            for j in range(i+1, len(hours)) 
            if (hours[i] +hours[j]) % 24 == 0
            )
        