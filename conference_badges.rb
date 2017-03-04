# Write your code here.
def badge_maker(name) # creates the badge message
  "Hello, my name is #{name}."
end

def batch_badge_creator(array) # creates the badge message in bulk by passing in the elements of an array into #badge_maker
  array.map { |i| badge_maker(i)}
end

def assign_rooms(array)
  room_assignments = [] # new array to hold assignments
  array.each_with_index do |name,room| # each_with_index to get both the element and the index
    room_assignments.push("Hello, #{name}! You'll be assigned to room #{room + 1}!") # interpolating the element and index into a string and adding to new array with #push
 end
 room_assignments #returning the newly filled array
end

def printer(attendees)
  batch_badge_creator(attendees).each do |i| #printing each element in the array created by #batch_badge_creator
    puts i
  end
  assign_rooms(attendees).each do |i| #printing each element in the array/output created by assign_rooms
    puts i
  end
end
