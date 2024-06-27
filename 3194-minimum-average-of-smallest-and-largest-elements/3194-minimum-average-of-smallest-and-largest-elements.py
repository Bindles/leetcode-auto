class Solution:
    def minimumAverage(self, nums: List[int]) -> float:
        result=[]
        n=len(nums)
        for i in range(n//2):
            print(i)
            min_elem=min(nums)
            max_elem=max(nums)
            result.append((min_elem + max_elem) / 2)
            nums.remove(min_elem)
            nums.remove(max_elem)

        return(min(result))

        