# @param {Integer[]} nums
# @return {Integer}
def maximum_xor(nums)
  nums.reduce(0){|acc,num| acc | num} 
end