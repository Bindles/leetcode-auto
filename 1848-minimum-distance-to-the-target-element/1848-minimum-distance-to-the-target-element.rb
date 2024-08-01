# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
    res=Float::INFINITY
    nums.each_index do |i|
        res = [res,(i - start).abs].min if nums[i] == target
    end
    res
end