int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    long long pickGifts(vector<int>& gifts, int k) {
        while (k > 0) {
            auto max_pile = max_element(gifts.begin(), gifts.end());
            int max_pile_index = distance(gifts.begin(), max_pile);
            gifts[max_pile_index] = floor(sqrt(gifts[max_pile_index]));
            k--;
        }
        long long sum = accumulate(gifts.begin(), gifts.end(), 0LL);
        return sum;
    }
};

 