require 'pry'

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
    names_array.map { |name| badge_maker(name) }
end

def assign_rooms(names_array)
    names_array.map.with_index do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
end

def printer(names_array)
    badges = batch_badge_creator(names_array)
    rooms = assign_rooms(names_array)

    badges.each { |badge| puts badge}
    rooms.each { |room| puts room }
end