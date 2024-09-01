# @param {String} s
# @return {Boolean}
def check_record(s)
    absences = consec_late = 0
    s.chars.each_index do |i|
        case s[i]
        when "A"
            absences+=1
        when "L"
            s[i-1] == 'L' ? consec_late += 1 : consec_late = 1
        end
    end
    absences < 2 && consec_late < 3 ? true : false

end