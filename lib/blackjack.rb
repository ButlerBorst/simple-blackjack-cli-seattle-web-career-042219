def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(num)
  total = (num)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user 
  user_input = get_user_input 
  if user_input == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  prompt_user
  get_user_input
  
  
end


def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end
    
