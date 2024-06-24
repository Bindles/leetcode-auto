class Solution:
    def minimumChairs(self, s: str) -> int:
        max_needed=0
        max_ever=0
        for x in s:
            if x == 'E':
                max_needed+=1
            elif x == 'L':
                max_needed-=1
            max_ever = max([max_ever, max_needed])

        return max_ever

        
        