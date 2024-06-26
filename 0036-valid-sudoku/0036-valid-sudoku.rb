# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = board.length - 1
  columns = board.length - 1

  # Function to validate a 3x3 sub-box
  def valid_3x3(board, row, column)
    visited = Set.new
    (row...row + 3).each do |r|
      (column...column + 3).each do |c|
        next if board[r][c] == '.'
        return false if visited.include?(board[r][c])
        visited.add(board[r][c])
      end
    end
    true
  end

  # Function to validate a row or a column
  def valid_row_or_column(arr)
    numeric = arr.select { |x| x != '.' }
    numeric.length == numeric.uniq.length
  end

  # Validate all 3x3 sub-boxes
  (0..rows).step(3).each do |row|
    (0..columns).step(3).each do |column|
      return false unless valid_3x3(board, row, column)
    end
  end

  # Validate all rows
  (0..rows).each do |row|
    return false unless valid_row_or_column(board[row])
  end

  # Validate all columns
  (0..columns).each do |column|
    numeric = []
    (0..rows).each do |row|
      numeric << board[row][column]
    end
    return false unless valid_row_or_column(numeric)
  end
  true
end
