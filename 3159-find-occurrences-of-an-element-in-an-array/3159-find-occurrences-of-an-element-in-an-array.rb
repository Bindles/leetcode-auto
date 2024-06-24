# @param {Integer[]} nums
# @param {Integer[]} queries
# @param {Integer} x
# @return {Integer[]}
def occurrences_of_element(nums, queries, x)
  occurrences = nums.filter_map.with_index { |num, i| i if num == x }
  queries.map { |query| occurrences[query - 1] || -1 }
end
