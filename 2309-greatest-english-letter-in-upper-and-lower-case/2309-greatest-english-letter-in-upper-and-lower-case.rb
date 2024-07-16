# @param {String} s
# @return {String}
def greatest_letter(s)
    sc = s.chars
    cset = Set.new
    sc.each do |char|
        cset.add(char) if sc.include?(char.downcase) && sc.include?(char.upcase)
    end
    cset.max.to_s.upcase
end