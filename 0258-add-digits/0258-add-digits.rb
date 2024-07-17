# @param {Integer} num
# @return {Integer}
def add_digits(num)
  until num.digits.size == 1
    num = num.digits.sum
  end
  num
end