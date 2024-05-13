class Solution:
    def rearrangeArray(self, nums: List[int]) -> List[int]:
        # Initialize left and right pointers to track positive and negative elements
        l = r = 0
        # Initialize an empty list to store the rearranged elements
        res = []
        # Initialize an index to track the current position in the original array
        i = 0
        
        # Iterate through the original array
        while i < len(nums):
            # If the index is even
            if i % 2 == 0:
                # Move the right pointer until finding the next positive number
                while r < len(nums) and nums[r] < 0:
                    r += 1
                # Append the positive number to the result list
                res.append(nums[r])
                # Move the right pointer to the next position
                r += 1
            else:  # If the index is odd
                # Move the left pointer until finding the next negative number
                while l < len(nums) and nums[l] > 0:
                    l += 1
                # Append the negative number to the result list
                res.append(nums[l])
                # Move the left pointer to the next position
                l += 1
            # Move to the next index
            i += 1
        
        # Return the rearranged array
        return res
