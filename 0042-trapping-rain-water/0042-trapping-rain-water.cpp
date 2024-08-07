class Solution {
public:
    int trap(vector<int>& height) {
        int left = 0, right = height.size()-1;
        int leftMax(0), rightMax(0), result(0);

        while (left<=right) {
            if (height[left] <= height[right]) {
                leftMax=max(leftMax, height[left]);
                result+=leftMax-height[left];
                left+=1;
            } else {
                rightMax=max(rightMax, height[right]);
                result+=rightMax-height[right];
                right-=1;
            }
        }
        return result;
    }
};