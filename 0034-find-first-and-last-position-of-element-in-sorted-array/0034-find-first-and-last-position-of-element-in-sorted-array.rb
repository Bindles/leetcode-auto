# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    res=[]
    nums.each_with_index do |n,i|
        res << i if n == target
    end
    res.empty? ? [-1, -1] : [res.first, res.last]
end