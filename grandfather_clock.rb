

def mark_hour description, &block
  dings = Time.now.hour 

  if dings > 12
    dings = dings - 12
  end

  block.call

  puts "#{description} says..."
  puts

  dings.times do 
    puts "Ding..."
    sleep 0.25
  end
end


mark_hour 'grandfather clock' do 


end