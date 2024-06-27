# @param {String} s
# @return {String}
def frequency_sort(s)
  hashcount = s.split('').tally
  s.each_char.sort_by { |c| [-hashcount[c], c] }.join
end