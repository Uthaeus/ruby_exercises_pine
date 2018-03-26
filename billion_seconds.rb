def billion y, m, d 
  birthday = Time.mktime(y, m, d)
  birthday + 1000000000
end

puts "Welcome to Billion Seconds"
puts "=========================="
sleep 0.5
puts
puts

instance = 'y'
while instance == 'y' do 
  puts "Please enter your birth year"
  year = gets.chomp.to_i
  puts 
  puts "Please enter your birth month"
  month = gets.chomp.to_i
  puts
  puts "Please enter your birth day"
  day = gets.chomp.to_i
  sleep 0.5
  puts
  result = billion(year, month, day)
  if result < Time.now
    puts "You turned one billion seconds old on #{result}."
  else
    puts "You will turn one billion seconds old on #{result}."
  end

  puts "Would you like to try another date? (y/n)"
  instance = gets.chomp

  if instance != 'y'
    puts "Thanks for participating."
  end
end
