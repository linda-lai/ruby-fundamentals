# *Problem 9*
# Write a method called exponent_plus that takes two arguments, and both will be numbers.
# It will return the total of the first number to the power of 2, added to the second number.

# Write another method, arr_exp, that takes three arguments.
# The first arguments expect numbers, and the last argument will be an array of numbers.
# This method will return an array that is the result of
    # each element of the array multiplied by the result of exponent_plus when called with the other two arguments to arr_exp.
# At least once, store the result of a call to arr_exp in a well-named variable.

def exponent_plus(num1, num2)
    total = (num1 ** 2) + num2
    return total
end

def arr_exp(num1, num2, num_array)
    multiplier = exponent_plus(num1, num2)
    result = num_array.map do |arr_num| 
        arr_num * multiplier
    end 
    return result
end

array = [2, 4, 6, 8, 10]

# puts exponent_plus(1, 2)

print arr_exp(1, 2, array)