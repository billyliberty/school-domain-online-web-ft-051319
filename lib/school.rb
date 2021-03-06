class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
     @roster[grade]
   end

   def sort
     @roster.each do |grade, name|
       @roster[grade] = name.sort
     end
   end

end
