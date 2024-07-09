# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  return "" unless str1 + str2 == str2 + str1
  
  gcd_length = str1.length.gcd(str2.length)
  str1[0, gcd_length]
end
