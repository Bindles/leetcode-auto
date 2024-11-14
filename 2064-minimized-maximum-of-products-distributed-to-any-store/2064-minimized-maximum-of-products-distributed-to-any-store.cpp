class Solution {
public:
    int minimizedMaximum(int n, vector<int>& quantities) {
        int low = 0;
        int high = *max_element(quantities.begin(), quantities.end()); 

        while (high - low > 1) {
            int mid = (high + low) / 2;

            int total_groups = 0;
            for (int q : quantities ) {
                total_groups += (q + mid - 1) / mid ;
            }

            if (total_groups <=n) {
                high = mid;
            } else {
                low = mid;
            }
        }
        return high;
    }
};

