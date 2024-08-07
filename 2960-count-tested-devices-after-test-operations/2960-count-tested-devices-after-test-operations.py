class Solution:
    def countTestedDevices(self, batteryPercentages: List[int]) -> int:
        count = 0  
        for num in batteryPercentages:
            if num > count:
                count += 1
        return count       