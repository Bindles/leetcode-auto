class Solution:
    def minNumberOperations(self, target: List[int]) -> int:
        prev=res=0
        for num in target:
            if num > prev:
                res+=(num-prev)
            prev=num

        return res 