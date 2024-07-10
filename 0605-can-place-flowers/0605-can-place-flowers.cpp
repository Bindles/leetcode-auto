int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    bool canPlaceFlowers(std::vector<int>& flowerbed, int n) {
        for (int i = 0; i < flowerbed.size(); ++i) {
            if (n < 1) break;
            else if (std::find(flowerbed.begin() + std::max(0, i - 1), flowerbed.begin() + i + 2, 1) == flowerbed.begin() + i + 2) {
                flowerbed[i] = 1;
                --n;
            }
        }
        return n < 1;
    }
};