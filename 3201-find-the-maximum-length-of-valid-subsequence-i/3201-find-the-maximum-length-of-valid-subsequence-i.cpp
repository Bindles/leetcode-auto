class Solution {
public:
    int maximumLength(vector<int>& nums) {
        vector<int> parityList;
        for (int num : nums) {
            parityList.push_back(num % 2);
        }
        int sumOfOnes = accumulate(parityList.begin(), parityList.end(), 0);
        int alternatingLength = 1, previousParity = parityList[0];
        for (size_t i = 1; i < parityList.size(); ++i) {
            if (previousParity != parityList[i]) {
                alternatingLength += 1;
                previousParity = parityList[i];
            }
        }
        return max({sumOfOnes, (int)parityList.size() - sumOfOnes, alternatingLength});
    }
};
