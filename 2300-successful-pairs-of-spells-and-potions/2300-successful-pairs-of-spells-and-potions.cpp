int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    vector<int> successfulPairs(vector<int>& spells, vector<int>& potions, long long success) {
        vector<int> pairs;
        sort(potions.begin(), potions.end());

        for (int spell : spells) {
            int low=0;
            int high = potions.size()-1;

            while (low <= high) {
                int mid = low + (high - low) / 2;
                if (spell * potions[mid] >= success) {
                    high = mid - 1;
                } else {
                    low = mid + 1;
                }
            }
            
            pairs.push_back(potions.size() - low);
        }
        
        return pairs;        
    }
};