def spanks y, m, d 
  count = 0
  now = Time.now
  birth = Time.mktime(y, m, d)
  if now.month == birth.month && now.day < birth.day 
    result = (now.year - birth.year) - 1 
  elsif now.month < birth.month 
    result = (now.year - birth.year) - 1 
  else 
    result = now.year - birth.year 
  end 
  result
end


puts "Birthday Spanks"
puts "---------------"
sleep 1
puts
puts "Hope you're ready for some spanks!"
sleep 0.5
puts
puts "Enter your birth year"
year = gets.chomp.to_i
puts
puts "Enter your birth month"
month = gets.chomp.to_i
puts
puts "Enter your birth day"
day = gets.chomp.to_i
spank = spanks(year, month, day)
puts
if spank >= 50
  puts "Looks like you have a lot of spanks coming!"
elsif spank >=25 && spank < 50
  puts "Hmmm, not too many spanks I think."
else
  puts "Lucky you, not many spanks at all."
end
puts
sleep 1
spank.times do |s|
  puts "Whack!"
  sleep 0.25
end
sleep 0.5
puts
puts "That was #{spank} spanks for you, Happy Birthday!"

