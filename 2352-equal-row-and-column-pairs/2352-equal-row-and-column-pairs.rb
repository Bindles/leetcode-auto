# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  c = grid.transpose
  (0...grid.size).sum {|i| (0...grid.size).count {|j|grid[i] == c[j] } }
end