
class School
  attr_reader :school_name, :roster

   def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 

  
  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end 
  end
    
  def grade (student_grade)
    @roster.select {|grade, name| grade == student_grade}.values.flatten
  end
  
  def sort 
    sorted = {}
    @roster.each do |grade,name|  
    sorted[grade] = name.sort
  end
  sorted
end
  
end