# @param {String} s
# @return {String}
def remove_stars(s)
  i = 0;
  s.each_char do |c|
      c != '*' ? (s[i] = c;i+=1) : (i-=1);
  end
  s[0...i]
end