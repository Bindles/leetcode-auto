# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  res = []
  ranges = nums.chunk_while { |a, b| b == a + 1 }.to_a

  ranges.each do |range|
    if range.size > 1
      res << "#{range.first}->#{range.last}"
    else
      res << "#{range.first}"
    end
  end
  res
end