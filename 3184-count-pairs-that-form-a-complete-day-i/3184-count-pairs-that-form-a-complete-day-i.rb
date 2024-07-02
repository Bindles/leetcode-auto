# @param {Integer[]} hours
# @return {Integer}
def count_complete_day_pairs(hours)
    count=0
    hours.each_index do |i|
        (i+1...hours.size).each do |j|
            count+=1 if (hours[i] +hours[j]) % 24 == 0  
        end 
    end
    count
end