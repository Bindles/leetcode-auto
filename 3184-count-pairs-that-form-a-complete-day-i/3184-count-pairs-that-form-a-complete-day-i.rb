# @param {Integer[]} hours
# @return {Integer}
def count_complete_day_pairs(hours)
    hours.each_index.sum do |i|
        (i+1...hours.size).count do |j|
            (hours[i] +hours[j]) % 24 == 0  
        end 
    end

end