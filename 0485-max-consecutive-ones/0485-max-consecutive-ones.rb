# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  nums.chunk_while { |a, b| a == 1 && b == 1 } #Group consec 1s
      .select { |chunk| chunk.first == 1 }     # Select chunks if 1
      .map(&:size)                             # Map sizes of chunks
      .max                                     # Find maximum size
      .to_i                                    # Convert2int|0 if nil
end