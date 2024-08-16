int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    char slowestKey(vector<int>& releaseTimes, string keysPressed) {
        int n = releaseTimes.size();
        pair<char,int> pressTimes[n];
        for (int i=0;i<n;++i) {
            int duration = (i == 0) ? releaseTimes[i] : releaseTimes[i] - releaseTimes[i-1];
            pressTimes[i] = {keysPressed[i], duration};
        }
        
        // Sort first by descending time, then by descending key (lexicographical)
        sort(pressTimes, pressTimes + n, [](const auto& a, const auto& b) {
            return (a.second > b.second) || (a.second == b.second && a.first > b.first);
        });

        return pressTimes[0].first;
    }
};