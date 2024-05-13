# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  # Initialize left and right pointers to track positive and negative elements
  l = r = 0
  # Initialize an empty array to store the rearranged elements
  res = []
  # Initialize an index to track the current position in the original array
  i = 0
  
  # Iterate through the original array
  while i < nums.size
    # If the index is even
    if i.even?
      # Move the right pointer until finding the next positive number
      while r < nums.size && nums[r] < 0
        r += 1
      end
      # Append the positive number to the result array
      res << nums[r]
      # Move the right pointer to the next position
      r += 1
    else # If the index is odd
      # Move the left pointer until finding the next negative number
      while l < nums.size && nums[l] > 0
        l += 1
      end
      # Append the negative number to the result array
      res << nums[l]
      # Move the left pointer to the next position
      l += 1
    end
    # Move to the next index
    i += 1
  end
  # Return the rearranged array
  res
end