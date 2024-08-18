int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    bool isPossible(std::vector<int>& target) {
        long long sum = 0;
        for (int num : target) sum += num;
        while (*std::max_element(target.begin(), target.end()) > 1) {
            int max_val = *std::max_element(target.begin(), target.end());
            long long rest_sum = sum - max_val;
            if (rest_sum <= 0 || rest_sum >= max_val) return false;
            int new_val = max_val % rest_sum;
            sum = rest_sum + new_val;
            if (new_val == 0 && rest_sum > 1) return false;
            std::replace(target.begin(), target.end(), max_val, new_val);
        }
        return true;
    }
};
