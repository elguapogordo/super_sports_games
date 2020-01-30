require "./lib/games"
require "./lib/event"
# i wanted to make a user file with the code and variable storage but ran out of time.
# this accepts normal input (no floats, symbols, negative numbers, etc...)
puts "Welcome to the Games"
puts "You will provide some information. I have already provided the stress."
puts "What is the year for these games?"
  year = gets.chomp.to_i
puts "What is the name of the event?"
  event = gets.chomp
puts "How many participants?"
  participants = gets.chomp.to_i
  ages = []
  participants.times do |num|
    puts "Enter the age of participant number #{num + 1}."
    ages << gets.chomp.to_i
  end
this_event = Event.new(event, ages) #out of time, i know it's a mess.
