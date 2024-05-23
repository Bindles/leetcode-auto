# @param {Integer[]} nums
# @param {Integer} min_k
# @param {Integer} max_k
# @return {Integer}
  def count_subarrays(nums, *bounds)
    chunked_arrays = nums.chunk { |num| ([*bounds, num].minmax == bounds) }.to_a
  
    filtered_chunks = chunked_arrays.select do |condition, array|
      condition
    end
  
    total_count = filtered_chunks.sum do |condition, subarray|
      index_hash = {}
  
      subarray_sum = subarray.zip(1..).sum do |element, index|
        index_hash[element] = index
        bounds.map { |bound| index_hash[bound] || 0 }.min
      end
  
      subarray_sum
    end
  
    total_count
  end