# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
   nums.chunk_while{|num_a, num_b| num_b > num_a}.max_by(&:size).size
end