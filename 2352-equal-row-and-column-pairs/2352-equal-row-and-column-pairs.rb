# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  count = 0
  c = grid.transpose

  (0...grid.size).each do |i|
    (0...grid.size).each do |j|
      count += 1 if grid[i] == c[j]
    end
  end
  count
end