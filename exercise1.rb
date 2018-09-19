my_hash = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 1, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

# puts "#{my_hash.class}....#{my_hash.length}"

p my_hash[:data][:rooms].class
capacity_201 =  my_hash[:data][:rooms][0][:capacity]
puts "Capacity of the room 201 is : #{capacity_201}"


# my_hash.each do |key, value|
#     puts "#{data:}"
#   end


#  my_hash[:data][:events].each do |number|
#    p "{#{number}"
#    puts "\n"
#  end
#
#
# puts "#{my_hash[:data][:events].class}"
#
# puts "#{my_hash[:data][:events][0]}"

my_hash[:data][:events].each do |key|
    if (key[:room_id] == 1 && key[:attendees] < capacity_201)
      puts "#{key}"
      puts " is OK "

    end

end
