class Student
  def initialize(name,grade)
    @name = name
    @grade = grade
  end

  def better_grade_than(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

che = Student.new("Che",98)
maze = Student.new("Maze",88)
puts che.better_grade_than(maze) ? "well done!" : "Need to imporve"


