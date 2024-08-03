# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    expected = (1..matrix.size).to_a
    (matrix.transpose.map(&:sort) + matrix.map(&:sort) ).all? {|num| num == expected}
end