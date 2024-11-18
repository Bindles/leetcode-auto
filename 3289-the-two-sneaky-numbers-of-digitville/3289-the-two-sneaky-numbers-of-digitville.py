class Solution:
    def getSneakyNumbers(self, nums: List[int]) -> List[int]:
        tal = Counter(nums)
        res = []
        for k,v in tal.items():
            if v > 1:
                res.append(k)

        return res

       

    
        