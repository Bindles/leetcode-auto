# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    para_clean = paragraph.downcase.gsub(',',' ').gsub('.',' ').gsub('!',' ').split(' ').tally.sort_by{|k,v| -v}
    para_clean.each do |k,v|
        return k if !banned.include?(k)
    end
end