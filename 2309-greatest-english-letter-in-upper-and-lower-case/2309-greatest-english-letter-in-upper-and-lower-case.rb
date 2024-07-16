# @param {String} s
# @return {String}
def greatest_letter(s)
    sc = s.chars
    sc.select do |char|
         sc.include?(char.downcase) && sc.include?(char.upcase)
    end.max.to_s.upcase
end