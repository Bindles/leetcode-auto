# @param {String[]} words
# @return {String}
def odd_string(words)
    res=[]
    hash = ('a'..'z').to_a.zip((0..26).to_a).to_h

    words.each do |word|
        (1...word.size).each do |i|
            p "#{hash[word[i]]}  #{hash[word[i-1]]}  | #{hash[word[i]] - hash[word[i-1]]}"
            res << [ hash[word[i-1]] - hash[word[i-2]], hash[word[i]] - hash[word[i-1]] ] if i == 2
        end
    end
    
    res.filter_map.with_index{|num, ind| ind if res.count(num) < 2}.flat_map{|i| words[i]}.join
end