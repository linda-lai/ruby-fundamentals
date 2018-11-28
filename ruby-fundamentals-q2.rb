# *Problem 2*
# Define a method that takes a number of feet, and returns a number representing the total inches, and

# another that takes a number representing inches and returns the number of centimetres

#Define and call a third function called feet_to_cm that takes a number of feet and returns the number of centimetres,
    # but that uses only our previous two functions. Store that number in a well-named variable.

def feet_to_inches(num)
    result = num * 12.00
    return result
end

def inches_to_cms(num)
    result = num * 2.54
    return result
end

def feet_to_cm(num)
    # feet_to_inches_result = feet_to_inches(num) # 27 * 12.00
    # inches_to_cms_result = inches_to_cms(feet_to_inches_result) # 27 * 12.00 * 2.54
    result = feet_to_inches(inches_to_cms(num))
    return result
end

puts feet_to_cm(27)
