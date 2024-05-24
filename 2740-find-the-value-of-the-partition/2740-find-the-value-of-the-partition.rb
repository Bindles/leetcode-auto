# @param {Integer[]} nums
# @return {Integer}
def find_value_of_partition(nums)
  nums.sort!

  # Initialize the minimum difference to a large number
  min_difference = Float::INFINITY

  # Iterate through the sorted array and find the smallest difference between consecutive elements
  (1...nums.length).each do |i|
    difference = (nums[i] - nums[i - 1]).abs
    min_difference = [min_difference, difference].min
  end

  # Return the minimum difference found
  min_difference
end
