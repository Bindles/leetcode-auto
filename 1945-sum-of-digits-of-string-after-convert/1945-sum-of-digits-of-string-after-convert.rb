# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
    # Create the letter to number mapping
    lmap = ('a'..'z').to_a.zip((1..26).to_a).to_h
    # Convert the string into a numeric string based on letter mapping, then to int
    num = s.chars.map { |letter| lmap[letter] }.map(&:to_s).join.to_i
    # Perform the digit sum transformation k times
    k.times do
        num = num.digits.sum
    end
    num
end