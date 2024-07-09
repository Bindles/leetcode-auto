class Solution:
    def maximumSumQueries(self, nums1: List[int], nums2: List[int], queries: List[List[int]]) -> List[int]:
        ab = sorted((a, b) for a, b in zip(nums1, nums2))
        for i, q in enumerate(queries):
            q.append(i)
        queries.sort(key=lambda q: -q[0])
        st = []
        ans = [-1] * len(queries)
        for x, y, qid in queries:
            while ab and ab[-1][0] >= x:
                a, b = ab.pop()
                while st and st[-1][1] <= a + b:
                    st.pop()
                if not st or st[-1][0] < b:
                    st.append([b, a + b])
            index = bisect_left(st, [y, ])
            if index < len(st):
                ans[qid] = st[index][1]
        return ans