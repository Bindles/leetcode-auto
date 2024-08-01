# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  x1, y1 = coordinates.shift
  x2, y2 = coordinates.shift
  coordinates.all? do |x, y| 
    (x2 - x1) * (y - y2) == (x - x2) * (y2 - y1) 
  end
end