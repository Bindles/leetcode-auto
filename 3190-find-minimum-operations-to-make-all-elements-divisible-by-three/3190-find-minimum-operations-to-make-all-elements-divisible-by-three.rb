# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    count=0
    nums.each do |num|
        count+=1 if num % 3 !=0
    end
    count 
end