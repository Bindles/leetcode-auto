# @param {Integer[]} battery_percentages
# @return {Integer}
def count_tested_devices(battery_percentages)
  count=0
  battery_percentages.each do |num|
    count += 1 if num > count
  end
  count
end

