# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
  dp = (m + 1).times.map{[0]*(n + 1)}
  
  strs.each do |str|
    zeros = str.count('0')
    ones = str.count('1')
    
    m.downto(zeros) do |i|
      n.downto(ones) do |j|
        dp[i][j] = [dp[i][j], dp[i - zeros][j - ones] + 1].max
      end
    end
  end
  
  dp[m][n]
end