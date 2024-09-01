# @param {String} s
# @return {Boolean}
def check_record(s)
    absences = consec_late = max_late = 0
    s.chars.each_index do |i|
        case s[i]
        when "A"
            absences+=1
        when "L"
            s[i-1] == 'L' || nil ? consec_late += 1 : consec_late = 1
            max_late = [max_late, consec_late].max         
        end
    end
    absences < 2 && max_late < 3 ? true : false
end