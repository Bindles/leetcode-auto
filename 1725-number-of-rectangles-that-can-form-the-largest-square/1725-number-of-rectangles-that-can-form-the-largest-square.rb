# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  rectangles.map(&:min).count(rectangles.map(&:min).max)
end