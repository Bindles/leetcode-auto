int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    char slowestKey(vector<int>& releaseTimes, string keysPressed) {
        vector<pair<char,int>> pressTimes;
        for (int i=0;i<releaseTimes.size();++i) {
            int duration = (i == 0) ? releaseTimes[i] : releaseTimes[i] - releaseTimes[i-1];
            pressTimes.emplace_back(keysPressed[i], duration);
        }
        
        // Sort first by descending time, then by descending key (lexicographical)
        sort(pressTimes.begin(), pressTimes.end(), [](const auto& a, const auto& b) {
            return (a.second > b.second) || (a.second == b.second && a.first > b.first);
        });

        return pressTimes[0].first;
    }
};