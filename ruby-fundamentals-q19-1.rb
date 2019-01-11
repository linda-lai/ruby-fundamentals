# *Problem 19*
# Using some part of the HK MTR, write a method that takes one argument, a hash within which there are three keys:
#     two which are strings
#         (an origin station, and a destination station), and
#     one which is an array.

# Choose part of a line from the MTR (or other rail network) as dummy data for the array.

# The method should return a hash that contains two keys: an origin index, and a destination index.

# These keys should be given the value of the index of the string the array if those stations are in the station array, or nil if not.

sandringham_line = ["Hampton", "Brighton Beach", "Middle Brighton", "North Brighton", "Gardenvale", "Elsternwick", "Ripponlea", "Balaclava", "Windsor", "Prahran", "South Yarra", "Richmond", "Flinders Street"]

journey_hash = {
    origin: "North Brighton",
    destination: "Flinders Street",
    train_line: sandringham_line
}

def find_index(journey_hash)

    result_hash = {}

    journey_hash[:train_line].each_with_index do |station, index|
        # puts "journey_hash[:destination] is " + journey_hash[:destination]
        # puts "station is " + station

        if station == journey_hash[:origin]
            result_hash[:origin_index] = index
        end

        if station == journey_hash[:destination]
            # puts "HERE"
            result_hash[:destination_index] = index
        end
    
    end

    return result_hash

end

print find_index(journey_hash)






arr = ["a", "b", "c", "d", "e"]

journey = {
    origin: "b";
    destination: "d";
    train_line: Array.new
}

result = {
    origin_index: nil,
    destination_index: nil
}

def find_index(journey_hash)

    result_hash = {}

    journey_hash[:train_line].each_with_index do |station, index|

        if station == journey_hash[:origin]
            result_hash[:origin_index] = index
        end

        if station == journey_hash[:destination_index]
            result_hash[:destination_index] = index
        end
    
    end

    return result

end





# Strings, Numbers, Boolenans
a = 2
b = 6

a = b

# Hashes and Arrays
line1 = ["a", "x", "y"]
line2 = ["a", "b", "c", "d", "e"]

line3 = line2
line3[2] = "z"