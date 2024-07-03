class Solution {
public:
    int rob(vector<int>& nums) {
        int n=nums.size()-1;
        if(n==0) return nums[n];
        if(n==1) return max(nums[0], nums[1]);
        vector<int> dp1(n, 0);
        vector<int> dp2(n, 0);

        dp1[0] = nums[0];
        dp1[1]=max(nums[0], nums[1]);
        dp2[0]=nums[1];
        dp2[1]=max(nums[1], nums[2]);
        
        for(int i=2; i<n; i++){
            dp1[i]=max(dp1[i-1], dp1[i-2]+nums[i]);
            dp2[i]=max(dp2[i-1], dp2[i-2]+nums[i+1]);
        }
        return max(dp1[n-1], dp2[n-1]);
    }
};