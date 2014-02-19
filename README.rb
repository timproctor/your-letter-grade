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
