# @param {String} s
# @return {Integer}
def minimum_chairs(s)
  max_needed=0
  max_ever=0
  s.each_char do |x|
    if x == "E" 
      max_needed+=1
    elsif x == "L"
      max_needed-=1
    end
    max_ever = [max_ever, max_needed].max
  end
  max_ever
end