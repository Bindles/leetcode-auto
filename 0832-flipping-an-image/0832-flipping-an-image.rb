# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
    image.map(&:reverse).map do |ea|
        ea.join.gsub('0', '2').gsub('1', '0').gsub('2', '1').chars.map(&:to_i)
    end
end