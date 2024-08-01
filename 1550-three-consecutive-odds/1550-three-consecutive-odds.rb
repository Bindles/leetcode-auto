# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    arr.chunk(&:odd?).each do |x, y|
        return true if y.size >= 3 && x == true
    end
    false
end