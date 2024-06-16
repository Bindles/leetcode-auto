# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  result = []
  key_indices = nums.filter_map.with_index {|num, i| i if num == key}

  key_indices.each do |key_index|
    start_index = [0, key_index - k].max
    end_index = [nums.size - 1, key_index + k].min
    (start_index..end_index).each do |i|
      result << i unless result.include?(i)
    end
  end

  result.sort
end