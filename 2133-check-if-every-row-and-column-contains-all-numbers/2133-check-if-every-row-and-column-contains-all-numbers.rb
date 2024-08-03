# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    expected = (1..matrix.size).to_a
    (matrix.map(&:sort) + matrix.transpose.map(&:sort) ).all?{|rc|rc == expected}
end