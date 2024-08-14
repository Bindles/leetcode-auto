# @param {String} current
# @param {String} correct
# @return {Integer}
def convert_time(current, correct)
    current_hours, current_minutes = current.split(":").map(&:to_i)
    current_total_minutes = current_hours * 60 + current_minutes

    correct_hours, correct_minutes = correct.split(":").map(&:to_i)
    correct_total_minutes = correct_hours * 60 + correct_minutes
    difference = correct_total_minutes - current_total_minutes

    operations=0
    [60, 15, 5, 1].each do |increment|
        operations += difference / increment
        difference %= increment
    end
    operations
end