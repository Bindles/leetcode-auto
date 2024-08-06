# @param {Integer[]} battery_percentages
# @return {Integer}
def count_tested_devices(battery_percentages)
  battery_percentages.zip(0..).reduce(0) { |c, (b)| b > c ? c + 1 : c }
end