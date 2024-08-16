# @param {String} s
# @param {Integer} a
# @param {Integer} b
# @return {String}
def find_lex_smallest_string(s, a, b)
  seen = {}
  queue = [s]
  smallest = s

  while queue.any?
    current = queue.shift
    next if seen[current]
    seen[current] = true
    smallest = [smallest, current].min

    # Apply operation 1: Add `a` to all odd-indexed positions
    modified = current.chars.map.with_index do |chr, i|
      i.odd? ? (chr.to_i + a) % 10 : chr.to_i
    end.join
    queue.push(modified) unless seen[modified]

    # Apply operation 2: Rotate string by `b` positions
    rotated = current.chars.rotate(-b).join
    queue.push(rotated) unless seen[rotated]
  end

  smallest
end