# @param {String} s
# @return {String}
def reformat(s)
    chars, digits = s.chars.partition { |c| c =~ /[a-zA-Z]/ }
    s = ""
    return s if ((chars.size > digits.size + 1) || (digits.size > chars.size + 1))
    
    (0..((chars.size > digits.size ? chars.size : digits.size) - 1)).each do |i|
      if chars.size > digits.size
        s << chars[i] unless chars[i].nil?
        s << digits[i] unless digits[i].nil?
      else
        s << digits[i] unless digits[i].nil?
        s << chars[i] unless chars[i].nil?
      end
    end
    s
end