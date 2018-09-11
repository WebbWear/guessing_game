MIN = 1
MAX = 100
guess = 0
answer = ""
upper = MAX
lower = MIN
guess = MAX/2

while answer != "y"
  puts "Is your number #{guess}?"
  print "(y)es, (h)igher or (l)ower: "
  answer = gets.chomp
  
  if answer == "h"
    lower = guess + 1
    guess = ((upper - lower ) / 2) + lower 
    print guess
    puts "you pressed H"
    
  end

  if answer == "l"
    upper = guess - 1
    guess =((upper - lower) / 2) + upper
    puts "You went low"
  end

  guess = (lower + upper) / 2
end
puts "The correct answer is #{guess}" 