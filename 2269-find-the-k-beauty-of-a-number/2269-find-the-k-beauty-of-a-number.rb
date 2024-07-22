# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
    count=0
    nums=num.digits.reverse
    (nums.size-(k-1)).times do |i|
        window = nums[i, k]
        p windowx = window.join.to_i
        if windowx.nonzero?
            count+=1 if (num % windowx) == 0
            p "#{(num % windowx == 0)} | #{count}"
        end
    end
    count
end