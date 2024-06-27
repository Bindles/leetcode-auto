# @param {String} s
# @return {String}
def frequency_sort(s) = s.chars.tally.sort_by { -_2 }.map { |a,b|  p a*b}.join