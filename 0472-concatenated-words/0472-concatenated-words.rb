# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
    @m = words.each_with_object({'' => 0}) { |w, m| m[w] = 1 }
    words.select { |w| check(w, 0) }
end

def check(w, v, l = w.size)
    return v >= 2 if l == 0
    return false if @m[w] == -1
    return true  if @m[w] && v + @m[w] >= 2 

    l.times do |i|
      next if !@m[w[..i]] || @m[w[..i]] == -1
      @m[w] = @m[w[(i + 1)..]] + 1 and return true if check(w[(i + 1)..], v + 1)
    end
    @m[w] = -1 unless @m[w]
    false
end