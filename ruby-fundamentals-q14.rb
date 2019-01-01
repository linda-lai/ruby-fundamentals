# *Problem 14*
# You are the dodgy head of a construction company. You jam in the most number of apartments per floor that regulations will allow.

# You write one method that calculates the area of floorspace from two arguments, the length and width.

def calculate_floorspace(length, width)
    result = length * width
    return result
end

puts calculate_floorspace(10, 30)

# You write a second method that takes an area, and calculates the number of apartments you can fit within a given floorspace
    # (you can fit one apartment in every 28 square meters, and this should be rounded down - you can’t have a partial apartment).

def calculate_apartments(area)

    apartments = area / 28.00
    return apartments.floor

end

puts calculate_apartments(300)

# You write a third method that takes a number of floors, a length, and a width as arguments, and that returns a hash of:
    # the total number of apartments you can jam into the building, and
    # the total money made (assuming each apartment is worth $120,000) using the previous two methods.

def calculate_total(floors, length, width)
    total_apartments_and_money = Hash.new

    total_apartments = calculate_apartments(calculate_floorspace(length, width)) * floors
    total_apartments_and_money[:total_apartments] = total_apartments
    
    total_money = total_apartments * 120_000
    total_apartments_and_money[:total_money] = total_money

    return total_apartments_and_money

end

print calculate_total(11, 10, 30)