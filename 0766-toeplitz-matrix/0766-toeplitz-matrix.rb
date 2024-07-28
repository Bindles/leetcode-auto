# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  matrix.each_with_index do |row, ri|
    row.each_with_index do |col, ci|
      next if matrix[ri+1].nil?
      next if matrix[ri][ci+1].nil?

      return false if matrix[ri][ci] != matrix[ri+1][ci+1]
    end
  end
  true
end