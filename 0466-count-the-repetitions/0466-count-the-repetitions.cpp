class Solution {
public:
    int getMaxRepetitions(string s1, int n1, string s2, int n2) {
        if (s1.empty() || s2.empty()) return 0;

        int s1_count = 0, s2_count = 0;
        int j = 0;
        unordered_map<int, int> index_map;
        unordered_map<int, int> count_map;

        while (s1_count < n1) {
            s1_count++;
            for (char ch : s1) {
                if (ch == s2[j]) {
                    j++;
                    if (j == s2.length()) {
                        s2_count++;
                        j = 0;
                    }
                }
            }

            if (index_map.count(j)) {
                int prev_s1_count = index_map[j];
                int prev_s2_count = count_map[j];

                int loop_length = s1_count - prev_s1_count;
                int loop_s2_count = s2_count - prev_s2_count;

                int remaining_loops = (n1 - s1_count) / loop_length;

                s1_count += remaining_loops * loop_length;
                s2_count += remaining_loops * loop_s2_count;
            } else {
                index_map[j] = s1_count;
                count_map[j] = s2_count;
            }
        }

        return s2_count / n2;
    }
};
