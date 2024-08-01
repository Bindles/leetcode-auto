int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int findPoisonedDuration(vector<int>& timeSeries, int duration) {
        int timePoisoned = 0;
        for (int i=0; i < timeSeries.size() - 1; ++i) {
            timePoisoned += min(duration, (timeSeries[i+1]-timeSeries[i]));
        }
        return timePoisoned + duration;
    }
};
