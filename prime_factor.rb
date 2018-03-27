
def prime_factor num
  new_num = num 
  primes = (1..7000).select { |x| (1..x).select{ |y| x % y == 0 }.size == 2 }
  result_arr = []
  x = 0
  
  loop do 
    if new_num % primes[x] == 0
      
      result_arr << primes[x]
      new_num = new_num / primes[x]
    else 
      x += 1
    end
    if result_arr.length >= 2 
      if result_arr.inject(:*) >= num 
        break
      end 
    end 
  end 
  
  p result_arr
end

puts "Welcome to the Prime Factor Calculator"
puts
sleep 1

instance = 'y'
while instance == 'y' do 
  puts "Enter a number."
  number = gets.chomp.to_i
  puts
  sleep 1
  prime_factor(number)

  puts "Would you like enter another number? (y/n)"
  instance = gets.chomp

  if instance != 'y'
    puts "Thanks for visiting."
  end
end
