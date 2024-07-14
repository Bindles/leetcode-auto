int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    vector<int> findSmallestSetOfVertices(int n, vector<vector<int>>& edges) {
        vector<int> indegree(n);
        vector<int> result;        
        for (auto& edge : edges) indegree[edge[1]]++;
        for (int i = 0; i < n; i++) if (indegree[i] == 0) result.push_back(i);
        return result;
    }
};