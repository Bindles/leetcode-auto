def find_k_distant_indices(nums, key, k)
  result_set = Set.new

  nums.each_with_index do |num, i|
    if num == key
      start_index = [0, i - k].max
      end_index = [nums.size - 1, i + k].min
      (start_index..end_index).each do |j|
        result_set.add(j)
      end
    end
  end

  result_set.to_a.sort
end