class Solution {
public:
    int sumOfEncryptedInt(vector<int>& nums) {
        return accumulate(nums.begin(), nums.end(), 0, [](int acc, int num) {
            string s = to_string(num);
            char max_digit = *max_element(s.begin(), s.end());
            return acc + stoi(string(s.size(), max_digit));
        });
    }
};