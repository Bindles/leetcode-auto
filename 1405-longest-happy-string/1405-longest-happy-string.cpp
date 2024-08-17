class Solution {
public:
    string longestDiverseString(int a, int b, int c) {
        string result;
        priority_queue<pair<int, char>> maxHeap;
        
        if (a > 0) maxHeap.push({a, 'a'});
        if (b > 0) maxHeap.push({b, 'b'});
        if (c > 0) maxHeap.push({c, 'c'});
        
        while (maxHeap.size() >= 2) {
            auto first = maxHeap.top(); maxHeap.pop();
            auto second = maxHeap.top(); maxHeap.pop();
            
            if (first.first >= 2) {
                result += string(2, first.second);
                first.first -= 2;
            } else {
                result += string(1, first.second);
                first.first -= 1;
            }
            
            if (second.first >= 2 && second.first > first.first) {
                result += string(2, second.second);
                second.first -= 2;
            } else {
                result += string(1, second.second);
                second.first -= 1;
            }
            
            if (first.first > 0) maxHeap.push(first);
            if (second.first > 0) maxHeap.push(second);
        }
        
        if (!maxHeap.empty()) {
            auto last = maxHeap.top(); maxHeap.pop();
            if (last.first >= 1) result += string(1, last.second);
            if (last.first >= 2) result += string(1, last.second);
        }
        
        return result;
    }
};