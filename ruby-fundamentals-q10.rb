# *Problem 10*
# Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise.

# Write another method that takes an array (of numbers) as an argument.
    # This method will return two arrays, in one array (an array of arrays), the first array containing the numbers that are divisible by 3,
    # and the other of the rest of the numbers. use the first function to achieve this.

# For example, if you pass the second number [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].

def divisible_by_three?(num)
    if num % 3 == 0
        return true
    else
        return false
    end
end

def divide_by_three_arrays(array)
    can_divide_arr = []
    cant_divide_arr = []
    final_array = []

    array.each do |value|
        if divisible_by_three?(value) == true
            can_divide_arr.push(value)
        else
            divisible_by_three?(value) == false
            cant_divide_arr.push(value)
        end
    end

    final_array = [can_divide_arr, cant_divide_arr]

end

num_arr = [9, 4, 3, 5, 30, 2, 8]

divide_by_three_arrays(num_arr)