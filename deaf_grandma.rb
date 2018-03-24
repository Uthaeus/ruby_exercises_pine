

puts "Welcome to Deaf Grandma"
puts "...good luck".rjust(50)
puts "------------------------------------------------"

puts ""
sleep 0.5
puts "Say something nice to Grandma."
puts ""
you = ""
year = (1930..1950).to_a
while you != "BYE" do 
  you = gets.chomp
  if you != you.upcase
    puts "Grandma: HUH?!  SPEAK UP, SONNY!"
  else
    puts "Grandma: NO, NOT SINCE #{year.sample}"
  end
end

puts ""
puts "You made it out alive!"
puts ""
puts "Congratulations!"
puts ""
