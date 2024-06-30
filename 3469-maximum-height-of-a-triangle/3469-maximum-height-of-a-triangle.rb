# @param {Integer} red
# @param {Integer} blue
# @return {Integer}
def max_height_of_triangle(red, blue)
  [max_triangle_height(red, blue), max_triangle_height(blue, red)].max
end
def max_triangle_height(red_balls, blue_balls)
  height = 0
  row_size = 1

  while true
    if row_size.odd?
      if red_balls >= row_size
        red_balls -= row_size
      else
        break
      end
    else
      if blue_balls >= row_size
        blue_balls -= row_size
      else
        break
      end
    end

    height += 1
    row_size += 1
  end
  height
end