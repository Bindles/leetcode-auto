# @param {String} senate
# @return {String}
def predict_party_victory(senate)
  r_queue, d_queue = [], []
  n = senate.size

  senate.chars.each_with_index do |senator, i|
    senator == 'R' ? r_queue.push(i) : d_queue.push(i)
  end

  while !r_queue.empty? && !d_queue.empty?
    r_index = r_queue.shift
    d_index = d_queue.shift
    r_index < d_index ? r_queue.push(r_index + n) : d_queue.push(d_index + n)
  end
  r_queue.empty? ? "Dire" : "Radiant"
end
