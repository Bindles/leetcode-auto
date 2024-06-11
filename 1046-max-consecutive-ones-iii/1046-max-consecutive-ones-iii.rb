# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  zero_count = 0
  left = 0
  max = 0
  
  nums.each_with_index do |num, index|
    zero_count+=1 if num==0

    while zero_count > k
      zero_count -= 1 if nums[left] == 0
      left +=1
    end

    max = [index - left + 1, max].max
  end
  max
end