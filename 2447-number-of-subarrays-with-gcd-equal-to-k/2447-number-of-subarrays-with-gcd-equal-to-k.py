class Solution:
    def subarrayGCD(self, nums: List[int], k: int) -> int:
        count = 0
        for i in range(len(nums)):
            current_gcd = 0
            for j in range(i, len(nums)):
                current_gcd = gcd(current_gcd, nums[j])
                if current_gcd == k:
                    count += 1
                elif current_gcd < k:
                    break
        return count        
        