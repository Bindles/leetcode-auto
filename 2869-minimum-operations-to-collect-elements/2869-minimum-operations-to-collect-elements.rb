# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
    count = 0
    rng = Set.new(1..k)

    until rng.empty?
        num = nums.pop
        rng.delete(num)
        count += 1
    end
    count
end