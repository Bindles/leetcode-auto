# @param {Integer[]} nums
# @param {Integer[]} queries
# @param {Integer} x
# @return {Integer[]}
def occurrences_of_element(nums, queries, x)
  occurrences = []
  nums.each_with_index { |num, i| occurrences << i if num == x }

  queries.map do |query|
    if query <= occurrences.size
      occurrences[query - 1]
    else
      -1
    end
  end
  
end
