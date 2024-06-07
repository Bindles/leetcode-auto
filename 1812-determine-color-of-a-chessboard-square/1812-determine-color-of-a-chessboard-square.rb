# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
    coordinates.sum % 2 == 1
end