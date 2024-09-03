class Solution {
public:
    string predictPartyVictory(string senate) {
        queue<int> r_queue, d_queue;
        int n = senate.size();


        for (int i = 0; i < senate.size(); ++i) {
            if (senate[i] == 'R') {
                r_queue.push(i);
            } else {
                d_queue.push(i);
            }
        }

        while (!r_queue.empty() && !d_queue.empty()) {
            int r_index = r_queue.front(); r_queue.pop();
            int d_index = d_queue.front(); d_queue.pop();

            if (r_index < d_index) {
                r_queue.push(r_index + n);
            } else {
                d_queue.push(d_index + n);
            }
        }

        return r_queue.empty() ? "Dire" : "Radiant";
    }
};