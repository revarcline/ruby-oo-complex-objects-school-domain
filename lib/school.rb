# school daze babey

# keep student roster and school name
class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.transform_values { |value| value.sort { |a, b| a <=> b } }
  end
end
