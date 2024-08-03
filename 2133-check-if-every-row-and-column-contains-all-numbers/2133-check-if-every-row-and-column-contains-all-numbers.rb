# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    rows = matrix.size
    cols = matrix[0].size
    expected = (1..rows).to_a
    
    # Initialize the transposed matrix
    transp = Array.new(cols) { Array.new(rows) }

    # Manually transpose the matrix instead of .transpose
    for i in 0...rows
        for j in 0...cols
            transp[j][i] = matrix[i][j]
        end
    end
  
    # Check each row
    matrix.each do |row|
        return false if row.sort != expected
    end
  
    # Check each column
    transp.each do |col|
        return false if col.sort != expected
    end
  
    true
end