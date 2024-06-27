# @param {String} s
# @return {String}
def frequency_sort(s)
  s.chars.tally.sort_by {|char,freq|-freq }.map { |char,freq| char*freq }.join
end