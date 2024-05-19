# @param {String} target
# @return {Integer}
def min_flips(target)
    current_state = "0"
    count = 0
    
    target.each_char do |char|
      if char != current_state
        count += 1
        current_state = char
      end
    end
    count
end