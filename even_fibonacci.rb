
def even_fib num
  result_arr = []

  start = [0, 1]
  num.times do 
    start[start.length] = start[-1] + start[-2]
  end

  start.each do |i|
    result_arr << i if i % 2 == 0
  end

  result_arr.reduce(:+)
end


puts "Enter a number"

number = gets.chomp.to_i
puts even_fib(number)