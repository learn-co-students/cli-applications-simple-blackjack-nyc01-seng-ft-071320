def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card1 = rand(1..11)
  return card1
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  return total
end

def hit?(initial_hand_total)
  prompt_user
  input = get_user_input
  if input == "h"
    new_card = deal_card
    initial_hand_total += new_card
  elsif input == "s"
    initial_hand_total
   elsif not (input == "h" && inputs == "s")
    invalid_command
    prompt_user
    input = get_user_input
  end
  return initial_hand_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  total = hit?(x)
  display_card_total(total)
  if total > 21
    end_game(total)
  end
end
    
