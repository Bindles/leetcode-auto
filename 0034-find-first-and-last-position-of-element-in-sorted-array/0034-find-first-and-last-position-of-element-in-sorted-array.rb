# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    res = nums.each_with_index.filter_map{|n,i| i if n == target}
    res.empty? ? [-1, -1] : [res.first, res.last]
end