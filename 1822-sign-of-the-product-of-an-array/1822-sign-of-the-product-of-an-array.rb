# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    product = nums.reduce(:*)
    case
    when product > 0
        return 1
    when product == 0
        return 0
    when product < 0
        return -1
    end
end