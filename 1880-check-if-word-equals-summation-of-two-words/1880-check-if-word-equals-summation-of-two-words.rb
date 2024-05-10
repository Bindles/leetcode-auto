# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
    p letters = ('a'..'z').to_a
    p vals = (0..25).to_a
    p map = letters.zip(vals).to_h
    p a = first_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i
    p b = second_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i
    p c = target_word.split('').map{|l| map[l]}.join('').sub(/^0+/, '').to_i

    a + b == c ? true : false
end