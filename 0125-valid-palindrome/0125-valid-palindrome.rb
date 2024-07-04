# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str=s.downcase.delete("^a-z0-9")
  l=0;r=str.size-1
  while l < r
    if str[l] == str[r]
      l+=1
      r-=1
    else
      return false
    end
  end
  true
end

