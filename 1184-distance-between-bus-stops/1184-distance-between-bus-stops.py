class Solution:
    def distanceBetweenBusStops(self, distance, start, destination):
        #start, destination = min(start, destination), max(start, destination)
        if start > destination: start, destination = destination, start #maybe faster then^
        clockwise = sum(distance[start:destination])
        total = sum(distance)
        counterclockwise = total - clockwise
        return min(clockwise, counterclockwise)
