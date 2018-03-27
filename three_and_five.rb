
def sum_of_multiples num

  range = (0...num).to_a
  result_arr = []

  range.each do |i|
    if i % 3 == 0 || i % 5 == 0
      result_arr << i 
    end
  end

  result = result_arr.reduce(:+)
  result 

end

puts "Enter your number."
number = gets.chomp.to_i

puts sum_of_multiples(number)