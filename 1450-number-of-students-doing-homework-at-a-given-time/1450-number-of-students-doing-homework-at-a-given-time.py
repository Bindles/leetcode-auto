class Solution:
    def busyStudent(self, startTime: List[int], endTime: List[int], queryTime: int) -> int:
        times = list(zip(startTime, endTime))
        return sum(1 for a, b in times if queryTime in range(a, b + 1))