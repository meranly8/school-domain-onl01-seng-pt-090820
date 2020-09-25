class School
  attr_reader :school, :roster

  def initialize(name)
    @school = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    if (@roster.has_key?(grade))
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_students = {}
    @roster.each do |grade, students|
      sorted_students[grade] = students.sort
    end
    sorted_students
  end
end