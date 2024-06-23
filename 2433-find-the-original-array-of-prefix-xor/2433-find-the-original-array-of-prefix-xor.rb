# @param {Integer[]} pref
# @return {Integer[]}
def find_array(pref)
  [pref.first] + pref.each_cons(2).collect{|a,b| a ^ b }
end