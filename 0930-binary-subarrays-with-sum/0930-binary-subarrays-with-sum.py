class Solution:
    def numSubarraysWithSum(self, nums: List[int], goal: int) -> int:
        res = total = 0
        sum_hash = {}
        
        for num in nums:
            total += num
            
            if total == goal:
                res += 1
            
            if (total - goal) in sum_hash:
                res += sum_hash[total - goal]
            
            if total in sum_hash:
                sum_hash[total] += 1
            else:
                sum_hash[total] = 1

        return res