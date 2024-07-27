
# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
    a = order.split('')
    b =('a'..'z').to_a
    mapx = a.zip(b).to_h
    words.map! {|word| word.chars.map{|chr| mapx[chr]}.join }
    words.sort == words
end

