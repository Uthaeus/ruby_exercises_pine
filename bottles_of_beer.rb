# 99 bottles of beer on the wall
# 99 bottles of beer
# take one down, pass it around
# 98 bottle of beer on the wall.

puts "Welcome to 99 Bottles of Beer."
puts "------------------------------"
puts " "
puts "Press enter to begin."
puts ""
go = gets.chomp
sleep 1
puts ""
x = 99
while x > 1 do 
  puts "#{x} bottles of beer on the wall..."
  puts "#{x} bottles of beer..."
  sleep 0.5
  puts "Take one down....pass it around..."
  x -= 1
  puts "#{x} bottles of beer on the wall..."
  sleep 0.5
  puts ""
end

puts "1 bottle of beer on the wall..."
puts "1 bottle of beer..."
sleep 0.5
puts "Take it down...pass it around..."
sleep 0.5
puts ""

puts "No more bottles of beer on the wall..."
sleep 1
puts ""

puts "Hope you enjoyed it!! Bye!"
puts ""