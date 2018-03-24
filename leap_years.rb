
puts "Welcome to Leap Year printer"
sleep 0.5
puts "_____________________________"
puts ""
sleep 0.5
puts "Please enter your starting year."
start = gets.chomp.to_i
puts ""
puts "Please enter your ending year."
final = gets.chomp.to_i
sleep 0.5
year_array = (start..final).to_a
leaps = []
year_array.each do |year|
  if year % 400 == 0 || year % 4 == 0 && year % 100 != 0
    leaps << year 
  end
end
puts ""
leaps.each do |leap|
  puts leap 
end
puts ""
sleep 0.5
puts "Neat, huh?"
puts ""