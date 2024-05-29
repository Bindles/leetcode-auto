# @param {Integer[]} nums
# @return {Integer}
def duplicate_numbers_xor(nums)
  nums.tally.select {|key, val| val > 1}.keys.reduce(:^) || 0
end