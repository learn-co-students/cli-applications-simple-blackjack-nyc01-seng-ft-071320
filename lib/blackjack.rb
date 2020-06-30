require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp

end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def win_game(total)
  puts "Congrats! You have #{total}. You won Blackjack!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  
end

def hit?(current_total)
  prompt_user
  response = get_user_input
  if(response == 'h')
    new_card = deal_card
    current_total+= new_card
  end
  if(response != 's' && response !='h' )
    invalid_command
    hit?(current_total)
  end
  current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  value = initial_round
  while(value < 21)
    value = display_card_total(hit?(value))
  end
  if(value > 21)
  end_game(value)
  end
  if(value == 21)
    win_game(value)
  end
end
    
