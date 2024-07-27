# @param {Integer} num
# @return {Boolean}
def is_same_after_reversals(num)
    numrev = num.to_s.reverse.to_i
    numrev.to_s.reverse.to_i == num
end