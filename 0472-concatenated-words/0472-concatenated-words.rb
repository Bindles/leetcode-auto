# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
  (h=words.to_set).grep f = -> w,i=0{(i..w.size).any?{|j|h===w[i..j] and w[j+1] ? f[w,j+1] : i>0 } }    
end