# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_index do |i|
    (i+1...nums.length).each do |j|
      return [i,j] if nums[i] + nums[j] == target
    end
  end
end