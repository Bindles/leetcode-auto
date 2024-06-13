# @param {String} s1
# @param {String} s2
# @param {String} base_str
# @return {String}
def smallest_equivalent_string(s1, s2, base_str)
  @parent = {}

  def find(x)
    @parent[x] = x unless @parent[x]

    x = @parent[x] while x != @parent[x]
    x
  end

  def union(a, b)
    ra = find(a)
    rb = find(b)
    @parent[ra] = @parent[rb] = [ra, rb].min
  end

  s1.chars.zip(s2.chars).each { |c1, c2| union(c1, c2) }

  base_str.chars.map { |ch| find(ch) }.join
end