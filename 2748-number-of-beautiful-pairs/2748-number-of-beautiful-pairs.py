class Solution:
    def countBeautifulPairs(self, nums):
        return sum(
            sum(1 for j in range(i + 1, len(nums)) if gcd(int(str(nums[i])[0]), nums[j] % 10) == 1)
            for i in range(len(nums))
        )