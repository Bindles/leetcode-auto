# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
    nums=num.digits.reverse
    (0...nums.size-(k-1)).count do |i|
        window = nums[i, k].join.to_i
        if window.nonzero?
            (num % window) == 0
        end
    end
end