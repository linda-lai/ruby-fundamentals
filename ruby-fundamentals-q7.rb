# *Problem 7*
# Define a well-named method that takes one argument and returns ‘true’ if that argument is even, and false if the argument is an odd number.
# Define a method ‘div_or_mult_two’ which takes a number as an argument.
# Using your first defined method, if the number is even this method returns the result of that number divided by 2.
# If the number is odd it returns the result of that number multiplied by 2. Store the result of a call to this method in a variable.

def odd_or_even?(num)
    if num.even? == true
        return true
    else
        num.even? == false
        return false
    end
end

def div_or_mult_two(num)
    if odd_or_even?(num) == true
        result = num / 2.00
        return result
    else
        odd_or_even?(num) == false
        result = num * 2.00
        return result
    end
end

# print odd_or_even?(9)

print div_or_mult_two(9)