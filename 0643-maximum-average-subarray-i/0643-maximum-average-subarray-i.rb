# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    cur = max_sum = nums[0...k].sum
    (k...nums.size).each do |i|
       cur = cur + nums[i] - nums[i-k]
       max_sum = cur if cur > max_sum 
    end
    max_sum.to_f / k
end