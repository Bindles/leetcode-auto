# @param {Integer} n
# @return {Integer}
def fib(n)
  return 0 if n==0
  return 1 if n==0
  fib=[0,1]
  (2..n).each do |i|
    fib[i] = fib[i-2] + fib[i-1]
  end
  return fib[n]
end