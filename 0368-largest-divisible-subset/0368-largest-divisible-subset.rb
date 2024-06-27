# @param {Integer[]} nums
# @return {Integer[]}
def largest_divisible_subset(nums)
  # Sort the array
  nums.sort!

  # Initialize a list of arrays to store subsets
  result = nums.map { |num| [num] }

  (1...nums.length).each do |i|
    (0...i).each do |j|
      # Check if the current num is divisible by the numbers in the previous subset
      if nums[i] % nums[j] == 0 && result[i].length < result[j].length + 1
        result[i] = result[j] + [nums[i]]
      end
    end
  end

  # Find the subset with the maximum size
  max_subset = result.max_by(&:length)

  max_subset
end