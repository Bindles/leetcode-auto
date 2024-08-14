# @param {String} moves
# @return {Integer}
def furthest_distance_from_origin(moves)
    (moves.chars.count("L") - moves.chars.count("R")).abs + moves.chars.count("_")
end