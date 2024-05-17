# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
    image.map(&:reverse).map { |row| row.map { |num| 1 - num } }
end