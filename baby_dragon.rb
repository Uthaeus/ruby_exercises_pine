
class Dragon

  def initialize str 
    @name = str
    @age = 0
    @hunger = 0
    @mood = 0
  end 

  baby_games = ['You toss your dragon up in the air.', 'You play tug-of-war', 'You throw a stick to chase']
  games = ['You play fetch...Fun!', 'You take your dragon hunting.', 'You go for a long walk', 'You go for a swim']

  def name
    @name 
  end


  def aging num=1
    @age += num
  end

  def feed
    @hunger -= 5
    if @hunger < 0
      @hunger = 0
      @mood -= 5
      if @mood < 0
        @mood = 0
        puts "#{@name} is very happy"
      elsif @mood >= 5
        puts "#{@name} is still a little agitated, maybe you should play with it."
      end
      puts "#{@name}'s hunger is satiated."
    elsif @hunger >= 5
      @mood += 2
      puts "#{@name} is still a little hungry... be careful"
    end
  end

  def play
    @mood -= 5
    @hunger += 4

    if @age <= 2
      puts baby_games.sample
    elsif @age > 2
      puts games.sample
    end
        
    if @mood < 0
      @mood = 0
      puts "#{@name} is very happy, just don't let it get too hungry."
    elsif @mood >= 5
      puts "#{@name} still looks a little grumpy."
    end
  end

  def rest
    @mood -= 3
    if @mood < 0
      @mood = 0
      puts "#{@name} seems content."
    elsif @mood >= 5
      puts "#{@name} is still somewhat agitated."
    elsif @mood >=7
      puts "#{@name} is still very grumpy. Don't get yourself eaten."
    end      
  end

  def summary
    line_width = 60
    puts "Dragon Name: #{@name}".center(line_width)
    puts
    puts "Current Age:".ljust(line_width/2) + "#{@age}".rjust(line_width/2)
    sleep 0.25
    puts "Current Mood:".ljust(line_width/2) + "#{@mood}".rjust(line_width/2)
    sleep 0.25
    puts "Current Hunger:".ljust(line_width/2) + "#{@hunger}".rjust(line_width/2)
    puts
    sleep 0.5
  end

  private

  def mood
    if @mood >= 8 && @mood < 10
      puts "Watch out, your dragon is very unhappy. You're about to be toasted."
    elsif @mood >= 10
      puts "RRRRAAAAAWWWWWRRRRR"
      sleep 1
      puts "You just got roasted....... RIP...."
      sleep 0.5
      exit
    end
  end

  def hunger
    if @hunger >= 8 && @hunger < 10
      puts "Better watch it... #{@name} is very hungry."
      puts "You don't want to be lunch."
    elsif @hunger >= 10
      puts "GGGGRRRRRRRRRRRRRRR.........CHOMP CHOMP"
      sleep 1
      puts "You just got yourself eaten. RIP....."
      sleep 0.5
      exit
    end
  end
end

@line_width = 60
actions = ['Feed', 'Play', 'Rest']
puts "******BABY DRAGON******".center(@line_width)
puts 
puts "----------------------------------".center(@line_width)
puts
sleep 1

instance = 'y'
while instance == 'y' do 

  puts "What would you like to call your dragon?"
  dragon_name = gets.chomp
  dragon = Dragon.new(dragon_name)

  puts
  puts "You've named your dragon #{dragon.name}"
  sleep 0.5
  puts

  puts "You can do a number of things with #{dragon.name}."
  sleep 0.5
  puts
  puts "Such as:"
  sleep 0.5
  actions.each do |a|
    puts a.rjust(@line_width)
    sleep 0.25
    puts
  end
  puts "Make sure you watch your dragon's mood and hunger levels."
  sleep 0.25
  puts "Not much worse than an unhappy dragon!"
  sleep 0.25
  puts

  dragon_play = 'y'
  while dragon_play == 'y' do 

    puts dragon.summary

    puts "What would you like to do with your dragon?"
    puts
    action = gets.chomp.downcase



    puts "Continue? (y/n)"
    dragon_play = gets.chomp
    if dragon_play != 'y'
      puts "Bye"
    end
  end


  puts "Would you like to continue caring for your dragon? (y/n)"
  instance = gets.chomp
  if instance != 'y'
    puts 
    puts "Thanks for playing."
  end

end













