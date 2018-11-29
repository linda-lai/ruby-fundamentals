# *Problem 3*

# Then write a method that takes two arguments.
#     The first argument will be an array. The second will be a number.
#     I want this method to return the array that would result if each element in the array was multiplied by the second argument.
#     Return the result.
#     Call this function with your array and an argument of your choice, and store the result in a well-named variable.

# Define an array with three numbers in it.
my_array = [6, 9, 17]
multiplied_array = []

# run an .each loop to iterate through array

def arrays_multiplier(array, num)
    # create a new method that takes an array and integar as an argument
    new_array = []
    # creates an empty array within the method (but outside the .each loop) to push array values into
    array.each do |value|
    # from the array taken in as an argument, iterate throguh each array value
        result = value * num
        # result is equal to array value multiplied by integar
        # new_array.push(result)
        # push result into empty array 'new_array'
        # alternate code is
        new_array << result
    end
    
    print new_array
    
end

# result of 'arrays_multiplier' method is captured in 'var' variable
var = arrays_multiplier(my_array, 10)