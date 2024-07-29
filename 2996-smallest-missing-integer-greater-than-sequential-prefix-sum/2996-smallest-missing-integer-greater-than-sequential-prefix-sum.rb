# @param {Integer[]} nums
# @return {Integer}
def missing_integer(nums)
  (nums[0..nums.each_cons(2).take_while {|a,b|b - a == 1 }.size].sum..).find {|num| !nums.include?(num) }
end