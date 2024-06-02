# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices) #m=col|n=row
  matrix = Array.new(m){Array.new(n){0}}
  indices.each {|rc|
    (0...n).each do |i| 
      matrix[rc[0]][i] += 1
    end
    (0...m).each do |i|
      matrix[i][rc[1]] += 1
    end
  }
  matrix.flatten.count{|c| c.odd?}
end