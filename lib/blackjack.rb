require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (players_card_total)
  puts "Sorry, you hit #{players_card_total}. Thanks for playing!"
end



def initial_round
  card_one = deal_card
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
end



def hit?(current_card_total)
  prompt_user
  input = get_user_input
  case input 
    when "s"
      current_card_total
    when "h"
      deal_card+current_card_total
    else
      invalid_command
      hit?(current_card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
