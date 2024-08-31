# @param {String} query_ip
# @return {String}
def valid_ip_address(queryIP)
  if queryIP.count('.') == 3 && queryIP.split('.').size == 4 && queryIP.split('.').all? { |block| valid_ipv4_block?(block) }
    return "IPv4"
  elsif queryIP.count(':') == 7 && queryIP.split(':').size == 8 && queryIP.split(':').all? { |block| valid_ipv6_block?(block) }
    return "IPv6"
  else
    return "Neither"
  end
end

def valid_ipv4_block?(block)
  return false unless block.match?(/^\d+$/)
  num = block.to_i
  num.to_s == block && num >= 0 && num <= 255
end

def valid_ipv6_block?(block)
  block.length.between?(1, 4) && block.match?(/^[0-9a-fA-F]+$/)
end
