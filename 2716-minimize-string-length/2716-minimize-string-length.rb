# @param {String} s
# @return {Integer}
def minimized_string_length(s)
  s.bytes.tally.size #bytes is int repr of/more mem efficient then chars
end

