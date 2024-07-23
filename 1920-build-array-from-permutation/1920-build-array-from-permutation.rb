# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
   ans=[]
   nums.each_index do |i|
       ans << nums[nums[i]]
   end
   ans
end