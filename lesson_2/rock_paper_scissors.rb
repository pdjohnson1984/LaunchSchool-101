VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")

      choice = case gets.chomp
               when 'r'
                 choice = 'rock'
               when 'p'
                 choice = 'paper'
               when 'sc'
                 choice = 'scissors'
               when 'sp'
                 choice = 'spock'
               when 'l'
                 choice = 'lizard'
               end

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    else
      computer_score += 1
    end

    prompt("Your score is #{player_score}.
      The computer score is #{computer_score}")

    if player_score == 5
      prompt("***PLAYER WINS!***")
    elsif computer_score == 5
      prompt("***COMPUTER WINS!***")
    end

    break unless player_score < 5
    break unless computer_score < 5
  end
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
