
# @param {String} s
# @return {String}
def remove_stars(s)
  res = []
  number_of_stars = 0

  s.reverse.each_char do |c|
    if c == '*'
      number_of_stars += 1
    elsif number_of_stars > 0
      number_of_stars -= 1
    else
      res.push(c)
    end
  end

  res.reverse.join
end
