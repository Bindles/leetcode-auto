# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
    count = 0    
    res = []
    range = (1..k)
    until range.all? {|x| res.include?(x)}
        res << nums.pop
        count+=1
    end
    count
end