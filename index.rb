
	def welcome
      puts "Hello, welcome to Trivia Quiz."
  end
    def quiz_screen()
      puts "Are you ready to play? -.- (Y/N)"
      input = gets.chomp
    end
    welcome
    quiz_screen