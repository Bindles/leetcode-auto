# @param {String} num
# @return {String}
def remove_trailing_zeros(num)
  num.reverse.to_i.to_s.reverse
end