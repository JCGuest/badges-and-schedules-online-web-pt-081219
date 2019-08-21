

def badge_maker(name)
  return "Hello, my name is #{name}."
end  

def batch_badge_creator(names)
  names.map { |name| badge_maker(name)}
 end  
 
# def assign_rooms(names)
#   names.map do |name|
#     "Hello, #{name}! You'll be assigned to room #{name.index + 1}"
#   end 
# end 

def assign_rooms(names)
  names.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index+1}!"

  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end
