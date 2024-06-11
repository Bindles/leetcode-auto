# @param {Integer} n
# @param {Integer[]} left
# @param {Integer[]} right
# @return {Integer}
def get_last_moment(n, left, right)
    left_index = left.empty? ? 0 : left.max
    right_index = right.empty? ? n : right.min
    [left_index, n - right_index].max
end