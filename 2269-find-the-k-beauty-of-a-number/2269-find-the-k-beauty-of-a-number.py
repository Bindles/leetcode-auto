class Solution:
    def divisorSubstrings(self, num: int, k: int) -> int:  
        count=0     
        nums = [(digit) for digit in str(num)]
        for i in range(len(nums)-(k-1)):
            window = int(''.join(nums[i:k+i]))
            if window != 0:
                if (num % window) == 0:
                    count+=1

        return count