# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
  n = part.size
  i = 0

  while i <= s.size - n
    if s[i, n] == part
      s.slice!(i, n)
      #reset index to check for overlapping parts
      i = [0, i - n].max
    else
      i += 1
    end
  end
  s
end