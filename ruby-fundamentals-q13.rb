# *Problem 13*
# Write a method that takes a number that represents Fahrenheit, and returns a number equivalent to it’s value in Celsius.

# Write a second method that takes an array of numbers in Fahrenheit, and that returns that an array with the numbers in celsius using your first function to make the calculation.

# In this instance, try to do this without forming a temporary array. (Hint: use a variation on the .each loop.)

def convert_fahrenheit_to_celsius(fahrenheit)
    result = (fahrenheit - 32) / 1.8
    return result.to_i
end

def convert_fahrenheit_array(array)
    celsius_array = array.map { |fahrenheit| convert_fahrenheit_to_celsius(fahrenheit) }
    return celsius_array
end

fahrenheit_array = [77, 100, 150]

# print convert_fahrenheit_to_celsius(77)
print convert_fahrenheit_array(fahrenheit_array)