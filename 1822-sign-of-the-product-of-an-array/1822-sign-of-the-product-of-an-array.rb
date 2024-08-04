# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    negative_count=0

    nums.each do |num|
        if num == 0
            return 0
        elsif num < 0 
            negative_count+=1
        end
    end

    (negative_count.even?) ? 1 : -1
end