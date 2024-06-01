# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
  nums.join.split('').map(&:to_i)
end

    