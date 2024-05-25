# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_largest_value(matrix, k)
  row_size, col_size = matrix.size, matrix[0].size
  xor_matrix = Array.new(row_size) { Array.new(col_size) }
  values = []

  (0...row_size).each do |i|
    (0...col_size).each do |j|
      if i == 0 && j == 0
        xor_matrix[i][j] = matrix[i][j]
      elsif i == 0
        xor_matrix[i][j] = xor_matrix[i][j-1] ^ matrix[i][j]
      elsif j == 0
        xor_matrix[i][j] = xor_matrix[i-1][j] ^ matrix[i][j]
      else
        xor_matrix[i][j] = xor_matrix[i-1][j] ^ xor_matrix[i][j-1] ^ xor_matrix[i-1][j-1] ^ matrix[i][j]
      end
      values << xor_matrix[i][j]
    end
  end

  values.sort.reverse[k-1]
end