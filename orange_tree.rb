class OrangeTree
  def initialize age
    @age = age

  end

  def age
    @age
  end

  def orange_count
    @oranges 
  end

  def height 
    if @age < 1
      puts "< 1"
    elsif @age == 1
      @height = 2
    elsif @age < 50
      @height = 2 + @age * 0.3
    else
      @height = 17
    end
  end

  def oranges 
    if @age < 2
      puts "This tree is still too young"
    elsif @age >= 150 && @age < 160
      @oranges = 30 + @age * 1
    elsif @age >= 160 && @age < 180
      @oranges = (30 + @age * 0.7).floor
    elsif @age >= 180
      @oranges = (30 + @age * 0.4).floor
    else
      @oranges = (30 + @age * 1.5).floor
    end
  end

  def pick num
    remark = ['Mmmm, delicious!', 'I love oranges!', 'So very juicy!', 'I could eat these forever!']
    @oranges = @oranges - num
    puts remark.sample
  end


  def aged
    terms = ['One year older.', 'And so another season begins.', 'Maturity level +1', 'We should all age this gracefully.']
    @age += 1
    @oranges = 0
    puts terms.sample
  end

end

line_width = 60
puts "Welcome to the Orange Tree generator.".center(line_width)
puts "-------------------------------------".center(line_width)
puts
sleep 1
puts "How old is your tree?"
tree_age = gets.chomp.to_i
info = OrangeTree.new(tree_age)
sleep 1

instance = 'y'
while instance == 'y' do 
  puts
  puts "Your tree is #{info.age} years old.".ljust(line_width/2) + "Current height is #{info.height}m".rjust(line_width/2)
  puts
  sleep 0.5
  puts "And currently has...".ljust(line_width/2) + "#{info.oranges} oranges".rjust(line_width/2)
  puts
  sleep 0.5
  if info.oranges > 0
    puts "Would you like to try some of it's oranges? (y/n)"
    taste = gets.chomp
    puts
    if taste == 'y'
      puts "How many oranges are you going to pick?"
      picking = gets.chomp.to_i
      puts
      puts info.pick(picking)
    end
  end
  end_of_season = ['Looks like hibernation time is coming', 'The end of the year is here.', 'Time to close down for the season.']
  summary = ["End of Year Summary".center(line_width), '__________________'.center(line_width), "Current Height:".ljust(line_width/2) + "#{info.height}m".rjust(line_width/2), "Current Amount of Oranges:".ljust(line_width/2) + "#{info.orange_count}".rjust(line_width/2)]
  puts
  sleep 0.5
  puts end_of_season.sample
  puts
  sleep 0.5
  puts summary 
  sleep 1
  puts
  puts info.aged
  puts
  puts "Would you like to continue with this tree? (y/n)"
  instance = gets.chomp

  if instance != 'y'
    puts
    puts "Thanks, Bye!"
  end
end
















