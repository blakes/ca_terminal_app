
	require 'json'
  require 'colorize'
  def welcome
      puts "Hello, welcome to Trivia Quiz."
  end
    def quiz_screen
      puts "Are you ready to play? -.- (Y/N)"
      input = gets.chomp
      cmd = input.upcase
       case cmd
       when 'Y'
        run_quiz
       when 'N'
        close_quiz
       else
        puts "Invailid Input! Please try again."
        quiz_screen
       end
    end
    def run_quiz
      puts "Running Trivia Quiz. You are ready to go!"
    end

    def close_quiz
      puts "Aborted Trivia Quiz."
      abort
    end
    welcome
    quiz_screen