struct Compare {
    bool operator()(pair<int, int>& a, pair<int, int>& b) {
        return a.second > b.second;
    }
};

class Solution {
public:
    long long totalCost(vector<int>& costs, int k, int candidates) {
        priority_queue<pair<int, int>, vector<pair<int, int>>, Compare> pq;
        int left = 0, right = costs.size() - 1;

        for (int i = 0; i < candidates && left <= right; ++i) {
            pq.push({left, costs[left]});
            left++;
            if (left <= right) {
                pq.push({right, costs[right]});
                right--;
            }
        }

        long long total_cost = 0;

        while (k > 0) {
            auto [index, cost] = pq.top();
            pq.pop();
            total_cost += cost;

            if (index < left) {
                if (left <= right) {
                    pq.push({left, costs[left]});
                    left++;
                }
            } else {
                if (left <= right) {
                    pq.push({right, costs[right]});
                    right--;
                }
            }

            k--;
        }

        return total_cost;
    }
};