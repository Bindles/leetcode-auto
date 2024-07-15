# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
    p (1..n).to_a.group_by{|x| x.digits.sum}.values.group_by(&:size).values.min.size
end