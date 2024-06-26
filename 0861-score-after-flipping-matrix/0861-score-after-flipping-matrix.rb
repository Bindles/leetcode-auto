# @param {Integer[][]} grid
# @return {Integer}
def matrix_score(grid)
  row_size = grid.size
  col_size = grid[0].size
  res = 0
  
  (0...col_size).each do |j|
    set_count = (0...row_size).count { |i| grid[i][j] == grid[i][0] }
    res += [set_count, row_size - set_count].max * (1 << (col_size - 1 - j))
  end
  res
end