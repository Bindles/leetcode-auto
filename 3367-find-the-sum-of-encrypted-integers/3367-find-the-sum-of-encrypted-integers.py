class Solution:
    def sumOfEncryptedInt(self, nums: List[int]) -> int:
        total_sum = 0
        for num in nums:
            digs = str(num)
            max_digit = max(digs)
            encrypted_num = int(max_digit * len(digs))
            total_sum += encrypted_num
        return total_sum       