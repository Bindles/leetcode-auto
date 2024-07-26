# @param {String} title
# @return {String}
def capitalize_title(title)
    words = title.split(' ')
    words.each_index do |i|
        words[i].size <=2 ? words[i].downcase! : (words[i].downcase!; words[i][0] = words[i][0].upcase)
    end
    words.join(' ')
end