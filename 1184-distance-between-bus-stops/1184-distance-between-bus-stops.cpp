int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int distanceBetweenBusStops(vector<int>& distance, int start, int destination) {
        if (start > destination) swap(start, destination);
        int clockwise = accumulate(distance.begin() + start, distance.begin() + destination, 0);
        int total = accumulate(distance.begin(), distance.end(), 0);
        int counterclockwise = total - clockwise;
        return min(clockwise, counterclockwise);
    }
};
