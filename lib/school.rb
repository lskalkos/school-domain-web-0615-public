# Write code here
require 'pry'

class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = Hash.new{|hash, key| hash[key] = []}
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end



end
