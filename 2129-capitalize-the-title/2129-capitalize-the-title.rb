# @param {String} title
# @return {String}
def capitalize_title(title)
    words = title.split(' ')
    words.each_index do |i|
        if words[i].size <=2 
            words[i].downcase!
        else
            words[i].downcase!
            words[i][0] = words[i][0].upcase
        end
    end
    words.join(' ')
end