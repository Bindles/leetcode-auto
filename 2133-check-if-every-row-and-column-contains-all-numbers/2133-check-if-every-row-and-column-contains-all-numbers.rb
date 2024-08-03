# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    (matrix.transpose.map(&:sort) + matrix.map(&:sort) ).each do |row_or_col|
        return false if row_or_col != [1,2,3]
    end
    true
end