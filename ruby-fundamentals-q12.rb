# *Problem 12*
# Write a method that takes two arrays of numbers, both of the same length.
# It will return an array in which each element is the result of the corresponding elements in the two array arguments added together.

# Make a call to your method, and store the result in a well-named variable.

arr1 = [1, 2, 3, 4, 5]
arr2 = [2, 4, 6, 8, 10]

def add_arrays(array1, array2)
    summed_array = []
    counter = 0

    while counter < array1.length
        value = array1[counter] + array2[counter]
        summed_array.push(value)
        counter += 1
    end

    print summed_array

end

add_arrays(arr1, arr2)