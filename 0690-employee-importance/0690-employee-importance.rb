=begin
# Definition for Employee.
class Employee
    attr_accessor :id, :importance, :subordinates
    def initialize( id, importance, subordinates)
        @id = id
        @importance = importance
        @subordinates = subordinates
    end
end
=end

# @param {Employee} employees
# @param {Integer} id
# @return {Integer}
def get_importance(employees, id)
  result=0
  p manager = employees.find { |emp| emp.id == id }
  result = manager.importance
  manager.subordinates.each do |sub|
    result += get_importance(employees, sub)
  end
  result
end