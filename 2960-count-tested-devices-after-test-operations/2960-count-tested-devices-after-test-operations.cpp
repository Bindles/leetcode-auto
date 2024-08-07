class Solution {
public:
    int countTestedDevices(vector<int>& batteryPercentages) {
        int count=0;
        for (int num : batteryPercentages) {
            if (num > count) count++;
        }
        return count;
    }
};