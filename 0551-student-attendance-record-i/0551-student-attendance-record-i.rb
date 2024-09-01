# @param {String} s
# @return {Boolean}
def check_record(s)
  absences = consec_late = 0

  s.each_char do |char|
    case char
    when "A"
      absences += 1
      return false if absences == 2
      consec_late = 0
    when "L"
      consec_late += 1
      return false if consec_late == 3
    else
      consec_late = 0
    end
  end

  true
end
