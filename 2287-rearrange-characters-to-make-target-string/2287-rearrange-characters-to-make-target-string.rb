# @param {String} s
# @param {String} target
# @return {Integer}
def rearrange_characters(s, target)
    # Create a tally (frequency count) of characters in s
    tally_s = s.chars.tally
    # Create a tally (frequency count) of characters in target
    tally_target = target.chars.tally

    # Initialize result as a large number
    res = Float::INFINITY

    # Iterate over each character and its frequency in the target string
    tally_target.each do |char, count|
        # If the character exists in tally_s, calculate how many times we can use it
        if tally_s[char]
            res = [res, tally_s[char] / count].min
        else
            # If the character doesn't exist in tally_s, we can't form the target string
            return 0
        end
    end
    res
end