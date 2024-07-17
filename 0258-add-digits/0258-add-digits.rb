# @param {Integer} num
# @return {Integer}
def add_digits(num)
  num = num.digits.sum until num.digits.size == 1
  num
end