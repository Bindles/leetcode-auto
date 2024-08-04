# @param {Integer[]} nums
# @return {Integer}
def incremovable_subarray_count(nums)
  n = nums.size
  count = 0

  # Iterate over all possible subarrays
  (0...n).each do |start|
    (start...n).each do |end_index|
      # Generate the remaining array after removing the subarray
      remaining = nums[0...start] + nums[(end_index + 1)..-1]

      # Check if the remaining array is strictly increasing
      if remaining.each_cons(2).all? { |a, b| a < b }
        count += 1
      end
    end
  end

  count
end