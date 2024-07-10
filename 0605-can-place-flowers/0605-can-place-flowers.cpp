int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    bool canPlaceFlowers(std::vector<int>& flowerbed, int n) {
        for (int i = 0; i < flowerbed.size(); ++i) {
            if (n < 1) break;
            
            // Calculate the start and end iterators for [find] method
            auto start = flowerbed.begin() + max(0, i - 1);
            auto end = flowerbed.begin() + min<int>(i + 2, flowerbed.size());
            
            // Perform the search for '1' in the subarray
            if (find(start, end, 1) == end) {
                flowerbed[i] = 1; // Place a flower
                --n;              // Decrement count of flowers to place
            }
        }
        return n < 1; // Return true if all flowers are placed successfully
    }
};
