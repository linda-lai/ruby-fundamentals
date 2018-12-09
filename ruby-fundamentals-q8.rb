# *Problem 8*
# Define a method that takes an array of numbers, and returns the total of the addition of all the numbers in the array.
# Store the result of a call to this method in a well-named variable.

def add_array_numbers(array)
    result = array.sum
    # .sum cannot be used on a string, only integars and floats
    return result
end

num_array = [2, 4, 6, 8, 10]
# str_array = ["Linda", "Angela", "Karen"]

puts add_array_numbers(num_array)