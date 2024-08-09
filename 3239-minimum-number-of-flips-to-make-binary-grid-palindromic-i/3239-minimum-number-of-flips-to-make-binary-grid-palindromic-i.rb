# @param {Integer[][]} grid
# @return {Integer}
def min_flips(grid)
  m, n = grid.size / 2, grid[0].size / 2
  row_ans, col_ans = 0, 0
  
  row_ans = grid.sum { |row| (0...n).sum { |i| row[i] ^ row[-i-1] } }

  grid = grid.transpose

  grid.each do |row|
    (0...m).each do |i|
      col_ans += row[i] ^ row[-i-1]
    end
  end

  [row_ans, col_ans].min
end
