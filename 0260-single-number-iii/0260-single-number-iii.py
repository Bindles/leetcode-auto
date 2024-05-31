class Solution:
    def singleNumber(self, nums: List[int]) -> List[int]:
        result=[]
        x = Counter(nums)
        for key, val in x.items():
            if val == 1:
                result.append(key)

        return result
        