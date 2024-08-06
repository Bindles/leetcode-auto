# @param {Integer[]} row_sum
# @param {Integer[]} col_sum
# @return {Integer[][]}
def restore_matrix(row_sum, col_sum)
    matrix = []  # Initialize an empty matrix

    row_sum.each_index do |row|  # Iterate over each row index
        current_row = []  # Initialize an empty row
        col_sum.each_index do |col|  # Iterate over each column index
            n = [row_sum[row], col_sum[col]].min  # Find the minimum value
            row_sum[row] -= n  # Subtract n from the current row sum
            col_sum[col] -= n  # Subtract n from the current column sum
            current_row << n  # Append n to the current row
        end
        matrix << current_row  # Append the current row to the matrix
    end

    matrix  # Return the constructed matrix
end