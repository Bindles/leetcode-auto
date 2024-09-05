class Solution {
public:
    long long maxScore(vector<int>& nums1, vector<int>& nums2, int k) {
        int n = nums1.size();
        
        // Combine both arrays and sort by nums2 in descending order
        vector<pair<int, int>> pairs;
        for (int i = 0; i < n; i++) {
            pairs.push_back({nums1[i], nums2[i]});
        }
        sort(pairs.begin(), pairs.end(), [](const pair<int, int>& a, const pair<int, int>& b) {
            return a.second > b.second;
        });
        
        // Min-heap to track the largest 'k' nums1 values
        priority_queue<int, vector<int>, greater<int>> min_heap;
        long long sum_of_k = 0, max_score = 0;
        
        for (const auto& [n1, n2] : pairs) {
            // Add the current nums1 value to the heap and update the sum
            min_heap.push(n1);
            sum_of_k += n1;
            
            // If heap size exceeds k, remove the smallest element
            if (min_heap.size() > k) {
                sum_of_k -= min_heap.top();
                min_heap.pop();
            }
            
            // If the heap has exactly k elements, compute the score
            if (min_heap.size() == k) {
                max_score = max(max_score, sum_of_k * n2);
            }
        }
        
        return max_score;
    }
};