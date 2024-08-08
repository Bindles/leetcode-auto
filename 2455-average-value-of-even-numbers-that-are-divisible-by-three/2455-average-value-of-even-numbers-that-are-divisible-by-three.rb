# @param {Integer[]} nums
# @return {Integer}
def average_value(nums) 
    how_many_nums = total = 0
    nums.each do |num|
        if num % 6 == 0 # num %6 == 0 will be even and divisible by 3
            total+=num
            how_many_nums+=1
        end
    end
    how_many_nums == 0 ? 0 : total / how_many_nums 
end

