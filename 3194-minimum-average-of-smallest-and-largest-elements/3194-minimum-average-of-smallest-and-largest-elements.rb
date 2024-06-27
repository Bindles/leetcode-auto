# @param {Integer[]} nums
# @return {Float}
def minimum_average(nums)
    res=[]
    halfn=(nums.size/2)
    i=0
    0...halfn.times do 
        min=nums.min
        max=nums.max
        res << (min + max) / 2.0
        nums.delete_at(nums.index(min))
        nums.delete_at(nums.index(max))
    end
    res.min
end