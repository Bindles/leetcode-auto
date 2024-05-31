# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
    singles=[]
    nums.each do |num|
        singles << num if nums.count(num) == 1
    end
    singles
end