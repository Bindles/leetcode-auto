# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  image.map(&:reverse).map do |ea|
  ea.map { |el| el == 0 ? 1 : 0 }
  end
end