# Mastermind Game in Ruby

The "Mastermind" class in Ruby represents a text-based implementation of the popular board game. The class allows players to guess a secret code consisting of four colors and provides feedback on the accuracy of their guesses.

Upon initialization, a secret code is generated using a combination of colors from the predefined set. The game starts with 12 remaining turns. The `play` method drives the game by displaying the remaining turns, prompting the player to make a guess, validating the guess, checking the accuracy of the guess against the secret code, displaying the result, and updating the remaining turns. The game continues until the player wins by guessing the secret code correctly or runs out of turns. At the end of the game, the final result is displayed.

The private methods within the class handle various aspects of the game. `generate_secret_code`  randomly selects four colors from the predefined set to create the secret code. `display_remaining_turns` shows the number of remaining turns to the player. `display_guess_prompt` prompts the player to enter their guess. `get_guess` retrieves the player's guess from the console, validating it to ensure it has four valid colors. `check_guess` compares the player's guess against the secret code and determines the number of exact and color matches. `display_guess_result` displays the number of exact and color matches in the player's guess. `game_over?` checks if the game is over, either by the player winning or running out of turns. `display_game_result` shows the final result of the game, declaring whether the player has won or lost.

To play the game, an instance of the `Mastermind` class is created, and the `play` method is called on the instance.

This "Mastermind" implementation provides an engaging experience for players, challenging them to use logic and deduction to decipher the secret code within a limited number of turns. Players can enjoy the thrill of victory when guessing the code correctly or the challenge of honing their skills with each attempt.
