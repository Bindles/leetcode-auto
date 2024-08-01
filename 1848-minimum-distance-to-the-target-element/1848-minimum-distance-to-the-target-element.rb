# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
    res=[]
    nums.each_index do |i|
        p "#{(i - start).abs} | #{nums[i] == target}"
        res << (i - start).abs if nums[i] == target
    end
    res.min
end