"""
# Definition for Employee.
class Employee:
    def __init__(self, id: int, importance: int, subordinates: List[int]):
        self.id = id
        self.importance = importance
        self.subordinates = subordinates
"""

class Solution:
    def getImportance(self, employees: List['Employee'], id: int) -> int:
        return (c:=next(i for i in employees if  i.id==id)).importance+sum(self.getImportance(employees,i) for i in c.subordinates)      