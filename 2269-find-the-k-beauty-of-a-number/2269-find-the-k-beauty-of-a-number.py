class Solution:
    def divisorSubstrings(self, num: int, k: int) -> int:  
        count=0     
        nums = str(num)
        for i in range(len(nums)-(k-1)):
            window = int(nums[i:k+i])
            if window != 0 and (num % window) == 0:
                count+=1

        return count