# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num: int) -> int:

class Solution:
    def guessNumber(self, n: int) -> int:
        low = 0; high = n
        while low <= high:
            mid = (low + high ) // 2
            g = guess(mid)
            if g > 0:
                low = mid + 1                
            elif g < 0:
                high = mid - 1
            else: return mid


        
        