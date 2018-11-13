# unnecessary animation for terminal, can be removed
def playing_process
  x = 0.1
  5.times do
    print "/"+"\r"
    sleep x
    print "-"+"\r"
    sleep x
    print "\\"+"\r"
    sleep x
    print "|"+"\r"
    sleep x
  end
  print "\r"
end

# player balance before bets, without loop can be -1, 0, 1
@balance = 0

def sweepstake (*params)
  if params[0] > params[1]
    puts "Finished result #{params[0]}:#{params[1]}, first_team WIN!"
  elsif params[0] < params[1]
    puts puts "Finished result #{params[0]}:#{params[1]}, second_team WIN!"
  else
    puts "Finished result #{params[0]}:#{params[1]}, the game is drawn"
  end

  # cf means compare
  cf_first = params[0].eql? params[2]
  cf_second = params[1].eql? params[3]

  if cf_first && cf_second
    @balance += 1
    puts "Congratulation! You win 1 score, your balance = #{@balance}"
  elsif !cf_first && !cf_second
    @balance -= 1
    puts "Sorry, you loose 1 score, your balance = #{@balance}"
  else
    puts "Don't get upset, you didn't miss and win anything, your balance = #{@balance}"
  end
end

puts 'Today on the playing field first_team VS second_team'
puts 'Let\'s GAMBLE!'

print 'first_team expected score: '
first_team_exp = gets.strip.to_i

print 'second_team expected score: '
second_team_exp = gets.strip.to_i

puts 'The game is on!'
puts ''

# call animation
playing_process

first_team_final = rand(0..9)
second_team_final = rand(0..9)

sweepstake(first_team_final, second_team_final, first_team_exp, second_team_exp)
