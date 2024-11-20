# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  (1...nums.length).each do |i|
    (i...nums.length).each do |j|
      if nums[j] + nums[j - i] == target
        return [j - i, j]
      end
    end
  end
  [-1, -1]
end