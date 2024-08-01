# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
    time_poisoned = 0
    time_series.each_index do |i|
        break if i == time_series.size - 1 # Stop before the last element
        p "#{duration} | #{time_series[i+1]} #{time_series[i]} => #{time_series[i+1] - time_series[i]}"
        time_poisoned = [duration, (time_series[i+1]-time_series[i])].min
    end
    time_poisoned + duration
end