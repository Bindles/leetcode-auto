# @param {Integer[]} nums
# @return {Integer}
def ways_to_split_array(nums)
    (1...nums.size).count do |x|
      nums[0...x].sum >= nums[x...].sum
    end
end