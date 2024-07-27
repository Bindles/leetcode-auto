# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  piece_map = pieces.map { |piece| [piece.first, piece] }.to_h
  result = []

  arr.each do |num|
    if piece_map[num]
      result.concat(piece_map[num])
    end
  end
  result == arr
end