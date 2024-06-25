# @param {Integer[]} nums
# @param {Integer} limit
# @return {Integer}
def longest_subarray(nums, limit)
  max_deque = []
  min_deque = []
  left = 0
  result = 0

  nums.each_with_index do |num, right|
    # Maintain the max_deque to have decreasing elements
    while !max_deque.empty? && max_deque[-1] < num
      max_deque.pop
    end
    max_deque.push(num)

    # Maintain the min_deque to have increasing elements
    while !min_deque.empty? && min_deque[-1] > num
      min_deque.pop
    end
    min_deque.push(num)

    # If the current window is invalid, move the left pointer to shrink the window
    while max_deque[0] - min_deque[0] > limit
      left += 1
      max_deque.shift if max_deque[0] == nums[left - 1]
      min_deque.shift if min_deque[0] == nums[left - 1]
    end

    # Update the result for the valid window
    result = [result, right - left + 1].max
  end

  result
end

