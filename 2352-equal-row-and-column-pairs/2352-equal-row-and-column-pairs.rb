# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  c = grid.transpose
  (0...grid.size).sum do |i|
    (0...grid.size).count do |j|
      grid[i] == c[j]
    end
  end
end