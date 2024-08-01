# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  clockwise = distance[start...destination].sum
  counterclockwise = distance.sum - clockwise
  [clockwise, counterclockwise].min
end