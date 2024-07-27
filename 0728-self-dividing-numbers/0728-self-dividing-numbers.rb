# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
    res=[]
    (left..right).to_a.each do |num|
        pass = true
        
        num.digits.each do |dig|
            if dig != 0 && num % dig == 0
                next
            else
                pass = false
                break
            end
        end
        res << num if pass == true
    end
    res
end