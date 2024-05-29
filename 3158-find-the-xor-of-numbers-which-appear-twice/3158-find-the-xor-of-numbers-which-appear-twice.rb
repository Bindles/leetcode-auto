# @param {Integer[]} nums
# @return {Integer}
def duplicate_numbers_xor(nums)
  nums.select {|num| nums.count(num) > 1 }.uniq.reduce(:^) || 0
end