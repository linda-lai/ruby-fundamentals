# *This problem is tough, but fun. Worth a shot - but go on to problem 5 if you are spending too much time on it.
# 100 students are sitting in a row, and each has a hat on. 
# Their strange teacher (who is probably mad from trying to teach 100 students) walks along the line of students. 
# The first time he takes every hat off. On the second pass he toggles the state of every second hat (putting on if off,
# taking off if on), changing the ‘hat state’ of every even numbered student. The third pass he toggles every third hat.
# The fourth every fourth, and the fifth every fifth, and so on until he has passed the students 100 times. 
# What is the final state of the hats (ie, which students have a hat on or off?

# Empty hash representing all students
students = {}

# Iterates through 1 to 100, creates hash with key (number representing student) and value (default false to represent state of hats at beginning)
(1..100).each { |student|
    students[student] = false
}

puts ('HATS ON STUDENTS AT START:')
puts students

# Loop through 100 times, iterating through students hash each time, if hats_pass is divisible by the hash index, toggle the value
(1..100).each do |hats_pass|
    students.each_key do |index|
        if (index % hats_pass) == 0
            students[index] = !students[index]
        end
    end
    students
end

puts ('HATS ON STUDENTS AT END')
puts students