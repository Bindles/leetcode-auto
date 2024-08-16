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

    # Only consider adding the modified string if it's new
    queue.push(modified) unless seen[modified]

    # Apply operation 2: Rotate string by `b` positions
    rotated = current[-b..-1] + current[0...-b]

    # Only consider adding the rotated string if it's new
    queue.push(rotated) unless seen[rotated]
  end

  smallest
end