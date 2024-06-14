# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
    low = nums.min
    high = nums.max

    while high % low != 0
    p temp = low
    p low = high % low
    p high = temp
    end
    low
end