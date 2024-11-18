class Solution:
    def getSneakyNumbers(self, nums: List[int]) -> List[int]:
        tal = Counter(nums)
        return [key_num for key_num,value_count in tal.items() if value_count > 1]

       

    
        