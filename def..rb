require 'json'
  def welcome
  		puts "Hello, welcome to Trivia Quiz."
	end

	def quiz_screen()
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
      file = load_file
      load_questions(file.sample(10))
  	end

  	def close_quiz
  		puts "Aborted Trivia Quiz."
  		abort
  	end
    def load_file
    f = File.open("trivia.json","r")
    return JSON.parse(f.read())
    f.close()
    end
    def load_questions(arrs)
      puts "Please type 1 for true answer or type 0 for false answer. type x to exit"
          puts "\n"
      answer = ""
      score = 0
     for arr in arrs
          puts arr['question']
          answer = gets.chomp()
          if answer == arr['answer_bool']
               score += 1
               puts "Correct Answer!"
               puts arr['answer_bool']
               puts "\n"
               puts arr['answer_body']
               puts "\n"
             else 
              puts "Wrong Answer!"
               puts arr['answer_bool']
                    puts "\n"
               puts arr['answer_body']
               puts "\n"
          end
          end
          puts "you got #{score} out of #{arr.length()}"
          puts "End of Trivia Quiz. Thanks for Playing"
          quiz_screen
     end

welcome
quiz_screen