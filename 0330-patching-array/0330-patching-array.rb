# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer}
def min_patches(nums, n)
    patches = 0
    index = 0
    miss = 1

    while miss <= n
        if index < nums.length && nums[index] <= miss
            miss += nums[index]
            index += 1
        else
            miss += miss
            patches += 1
        end
    end
    patches
end