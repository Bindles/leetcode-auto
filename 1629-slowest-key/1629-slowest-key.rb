# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
    key_times=[]
    release_times.each_index do |i|
        i == 0 ? key_times << [keys_pressed[i], release_times[i]] : key_times << [keys_pressed[i], release_times[i] - release_times[i-1]]
    end
    key_times.sort_by {|key, time| [-time, -key.ord]}[0][0]
end