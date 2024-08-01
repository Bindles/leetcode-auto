class Solution:
    def distanceBetweenBusStops(self, distance, start, destination):
        start, destination = min(start, destination), max(start, destination)
        clockwise = sum(distance[start:destination])
        total = sum(distance)
        counterclockwise = total - clockwise
        return min(clockwise, counterclockwise)
