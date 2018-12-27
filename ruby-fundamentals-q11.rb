# *Problem 11*
# Your shop sells bespoke solid wood right-angled-triangular tables (because you are a hipster).
# The client is charged for the volume of the table.

# Write a function that takes two arguments, and works out the area of the triangle.

def table_area(base, height)
    area = 0.5 * base * height
    return area
end

# Write a second function that takes two arguments, one representing the area of the top of the table,
    # and the other representing the height (from the ground) and returns the volume.

def table_volume(triangle_area, length)
    volume = triangle_area * length
    return volume
end

# Write a third method that performs no calculations, but takes three arguments and uses the previous two methods to return the volume of the table.
    # Store that volume in a well-named variable.

def total_volume(base, height, length)
    total_volume = table_volume(table_area(base, height), length)
    return total_volume
end

print total_volume(12, 9, 18)