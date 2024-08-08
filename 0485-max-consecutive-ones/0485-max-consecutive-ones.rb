# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max_ones=nums.chunk_while{|a,b|a==1 && b==1}.select { |chunk| chunk.first == 1 }.max_by(&:size)
  max_ones.nil? ? 0 : max_ones.size
end