# @param {Integer[]} nums
# @return {Integer[]}
def get_sneaky_numbers(nums)
  tal = nums.tally
  tal.select {|_,count| count > 1}.keys
end
