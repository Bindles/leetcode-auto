class Solution:
    def mostFrequent(self, nums: List[int], key: int) -> int:
        result = [nums[index+1] for index in range(len(nums) -1) if nums[index] == key]    
        return max(result, key=result.count)




      
        