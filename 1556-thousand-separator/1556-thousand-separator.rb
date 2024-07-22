# @param {Integer} n
# @return {String}
def thousand_separator(n)
    digs = n.digits
    digs.each_with_index do |digit, ind|
        p "#{digit} #{ind} | #{ind !=0 && ind % 3 == 0}"
        if ind !=0 && ind % 3 == 0
            digs.insert(ind,'.')
        end
    end
    digs.reverse.join
    
end