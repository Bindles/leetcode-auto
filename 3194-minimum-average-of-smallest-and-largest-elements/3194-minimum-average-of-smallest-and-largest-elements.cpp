class Solution {
public:
    double minimumAverage(vector<int>& nums) {
        double min = static_cast<double>(INT_MAX);
        std::sort(nums.begin(), nums.end());
        while (!nums.empty()) {
            double average = (nums.front() + nums.back()) / 2.0;
            min = std::min(min, average);
            nums.erase(nums.begin()); // remove the first element
            nums.pop_back(); // remove the last element
        }
        return min;
    }
};