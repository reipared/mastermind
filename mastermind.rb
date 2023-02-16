class Mastermind
  COLORS = %w[red blue green yellow purple orange]

  def initialize
    @secretcode = generate_secre_code
    @remaining_turns = 12
  end

  def play
    loop do
      display_remaining_turns
      display_guess_prompt
      guess = get_guess
      result = check_guess(guess)
      display_guess_result(result)
      break if game_over?(result)
      @remaining_turns -= 1
    end
    display_game_result
  end

  private

  def generate_secret_code
    COLORS.sample(4)
  end

  def display_remaining_turns
    puts "\nYou have #{@remaining_turns} turns left."
  end

  def display_guess_prompt
    puts "Guess the secret code! Enter four colors (e.g. red blue green yellow):"
  end

  def get_guess
    loop do
      guess = gets.chomp.split
      if valid_guess?(guess)
        return guess
        else puts "Invalid guess! Please try again."
      end
    end
  end

  def valid_guess?(guess)
    return false unless guess.size == 4
    return false unless guess.all? { |color| COLORS.include?(color) }
    true
  end

  def check_guess(guess)
    exact_matches = 0
    color_matches = 0
    secret_code_copy = @secretcode.dup
    guess.each_with_index do |color, i|
      if color == secret_code_copy[i]
        exact_matches += 1
        secret_code_copy[i] = nil
        elsig secret_code_copy.include?(color)
        color_matches += 1
        secret_code_copy[secret_code_copy.index(color)] = nil
      end
    end
    [exact_matches, color_matches]
  end

  def display_guess_result(result)
    puts "Exact matches: #{result[0]}, color matches: #{result[1]}"
  end

  def game_over?(result)
    result[0] == 4 || @remaining_turns == 1
  end

  def display_game_result
    if check_guess(get_guess) == [4, 0]
      puts "You win! You guessed the secret code."
    else
      puts "You lose! The secret code was #{@secret_code.join(", ")}."
    end
  end
end

game = Mastermind.new
game.play