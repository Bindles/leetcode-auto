# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
    nums.filter_map {|num| num if num.even?}.tally.sort_by{|k,v| -v}[0]&.first || -1
end