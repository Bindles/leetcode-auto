# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  left = 0
  max_length = 0
  k = 1
  
  nums.each_index do |right|
    k -= 1 if nums[right] == 0
    
    while k < 0
      k += 1 if nums[left] == 0
      left += 1
    end

    max_length = [max_length, right - left].max 
    # max_length = right - left if right - left > max_length # same as above
  end
  max_length
end