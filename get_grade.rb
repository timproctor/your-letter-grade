your-letter-grade
=================

Using case as a conditional to find letter grade

def get_grade(scores)
  average = scores.inject(:+) / scores.length
  case 
  when average >= 90
    "A" 
  when average >= 80
    "B"
  when average >= 70
    "C"
  when average >= 60
    "D"  
  else
    "F"
  end
end

p get_grade([87, 90, 93, 79, 90, 91, 90, 92, 93, 93, 93, 88]) => "B"

# The following is a refactor from March 11th, 2014 talk given by Jeffrey Matthias at Denver.rb meetup

def average(array_of_numeric_grades)
  sum = 0
  array_of_numeric_grades.each do |grade|
    sum += grade
  end
  average = sum / array_of_numeric_grades.length
end

def letter_grade(numeric_grade)
  case numeric_grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

def average_letter_grade(grades_array)
  average_grade = average(grades_array)
  letter_grade(average_grade)
end
