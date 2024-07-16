# @param {String[]} words
# @return {String[]}
def find_words(words)
    a="qwertyuiop"
    b="asdfghjkl"
    c="zxcvbnm"
    
    words.select do |word|
        word_chars = word.downcase.chars
        word_chars.all?{|chr| a.include?(chr)} || word_chars.all?{|chr| b.include?(chr)} || word_chars.all?{|chr| c.include?(chr)}
    end  
end