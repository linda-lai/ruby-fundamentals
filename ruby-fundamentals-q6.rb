# *Problem 6*
# Define the method ten_mult;
    # which takes one argument (a number), and
    # returns the result of that number multiplied by 10.

# Define a method called arr_mult that takes an array as an argument.
    # In arr_mult, use the method ten_mult on each element of the array that was passed in as the argument.
    # Return the array that results from this (each element multiplied by 10), and store in a well-named variable.

def ten_mult(num)
    result = num * 10
    return result
end

def arr_mult(array)
    result = array.map { |arr_num| ten_mult(arr_num) }
    return result
end

array = [2, 4, 6, 7, 8, 10]

print arr_mult(array)