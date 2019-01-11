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
    train_line: sandringham_line,
    origin: nil,
    destination: nil,

    origin_index: nil,
    destination_index: nil,

    journey_array: Array.new
}

def get_origin(journey_hash)

    puts "What is the origin station?"
    origin = gets.strip
    journey_hash[:origin] = origin
    return journey_hash

end

def get_destination(journey_hash)

    puts "What is the destination station?"
    destination = gets.strip
    journey_hash[:destination] = destination
    return journey_hash

end

def calculate_journey(journey_hash)
    journey_hash[:train_line].each_with_index do |station, index|
        if journey_hash[:origin] == station
            journey_hash[:origin_index] = index
        end

        if journey_hash[:destination] == station
            journey_hash[:destination_index] = index
        end
    end

    array_start = journey_hash[:origin_index]
    array_end = journey_hash[:destination_index]

    while array_start <= array_end
        journey_hash[:journey_array] << journey_hash[:train_line][array_start]
        array_start += 1
    end

    return journey_hash

end

get_origin(journey_hash)
get_destination(journey_hash)

puts calculate_journey(journey_hash)