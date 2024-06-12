# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  return [] if cpdomains.empty? || cpdomains.nil?
  result = Hash.new(0)

  cpdomains.each do |cpdomain|
    count, subs = cpdomain.split(" ")
    subs = subs.split(".")

    while subs.any?
      sub = subs.join(".")
      result[sub] += count.to_i
      subs.shift
    end
  end

  result.map do |key,val|
    "#{val} #{key}"
  end
end