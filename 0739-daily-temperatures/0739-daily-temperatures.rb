# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  n=temperatures.size
  result=Array.new(n,0)
  stack=[]
  
  temperatures.each_index do |i|
    while stack.any? && temperatures[i] > temperatures[stack.last]
      last=stack.pop
      result[last] = i - last
    end
    stack.push(i)

  end
  
  result
end