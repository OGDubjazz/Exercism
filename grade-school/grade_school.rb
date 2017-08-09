class School
  def initialize
    @students = Hash.new 
  end

  def add(name, grade)
    @students[grade] ||= []
    @students[grade] << name
  end

  def students(g)
    names = @students[g] || []
    names.sort
  end

  def students_by_grade
    @students.sort.map {|g, s| {:grade => g,  :students => s.sort}}

  end
end

