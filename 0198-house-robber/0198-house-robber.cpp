class Solution {
private:

public:
    int rob(vector<int>& nums) {
        int rob1=0;
        int rob2=nums[0];
        int temp=0;
        for(int i=1;i<nums.size();i++){
            temp=max(rob2,rob1+nums[i]);
            rob1=rob2;
            rob2=temp;
        }
        return rob2;
    }
};