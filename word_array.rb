puts "Welcome to the word array"
puts "-------------------------"
sleep 0.5
puts
puts "Enter as many words as you'd like."

array = []
input = ''

loop do 
  input = gets.chomp
  if input == ""
    break
  else
    array << input
  end
end

sorted_arr = array.each { |x| x.downcase }.sort
result = sorted_arr.each { |j| j.capitalize }

puts 
sleep 0.5
puts 
line_width = 75

title = "Table of Contents"
chap1 = "Chapter 1:  Numbers"
chap1_page = "page 1"
chap2 = "Chapter 2:  Letters"
chap2_page = "page 72"
chap3 = "Chapter 3:  Variables"
chap3_page = "page 118"

puts title.center(line_width)
puts ""
puts chap1.ljust(line_width/2) + chap1_page.rjust(line_width/2)
puts chap2.ljust(line_width/2) + chap2_page.rjust(line_width/2)
puts chap3.ljust(line_width/2) + chap2_page.rjust(line_width/2)
puts
sleep 0.5
print result.join(', ')
sleep 0.5
puts
result.each do |i|
  puts i.rjust(line_width)
end
puts
sleep 1
puts "Neato"