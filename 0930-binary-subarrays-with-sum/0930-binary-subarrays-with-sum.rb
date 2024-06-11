# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
def num_subarrays_with_sum(nums, goal)
    res = 0
    sum_hash = Hash.new(0)
    total = 0

    nums.each do |num|
        total += num
        
        res += 1 if total == goal
        
        res += sum_hash[(total - goal)] 
        sum_hash[total] += 1
    end
    res
end
