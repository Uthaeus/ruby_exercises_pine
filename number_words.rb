def to_words num 
  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  result = ''

  if num < 0
    return "No negatives please."
  elsif num == 0
    return "zero"
  end

  left = num

  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = to_words write
    result += millions + ' million'

    if left > 0
      result += ' '
    end
  end  

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = to_words write
    result += thousands + ' thousand and'

    if left > 0
      result += ' '
    end
  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = to_words write
    result = result + hundreds + ' hundred and'

    if left > 0
      result = result + ' '
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) && (left > 0))
      result = result + teens[left - 1]
      left = 0
    else 
      result = result + tens[write - 1]
    end

    if left > 0
      result = result + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    result = result + ones[write - 1]
  end

  result

end

puts "Welcome to Number Words"
puts "-----------------------"
sleep 0.5
puts

instance = 'y'
while instance == 'y' do 

  
  puts
  puts "Please enter a number."
  number = gets.chomp.to_i
  sleep 0.5
  puts
  puts to_words(number)
  puts "------------------------"
  puts
  sleep 0.5

  puts "Would you like to enter another? (y/n)"
  instance = gets.chomp

  if instance != 'y'
    puts "Thanks for playing! Bye."
  end
end