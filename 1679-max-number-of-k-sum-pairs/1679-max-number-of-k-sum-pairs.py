class Solution:
    def maxOperations(self, nums: List[int], k: int) -> int:
        count=0
        numcount=defaultdict(int)
        for num in nums:
            complement = k - num
            if numcount[complement] > 0:
                count+=1
                numcount[complement]-=1
            else:
                numcount[num]+=1

        return count
        