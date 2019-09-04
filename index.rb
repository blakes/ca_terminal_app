
	require 'json'
  require 'colorize'
  
  def welcome
      puts "Hello, welcome to Trivia Quiz."
  end
    def quiz_screen
      puts "Are you ready to play? -.- (Y/N)".colorize(:blue)
      input = gets.chomp
      cmd = input.upcase
       case cmd
       when 'Y'
        run_quiz
       when 'N'
        close_quiz
       else
        puts "Invailid Input! Please try again.\n".colorize(:red)
        quiz_screen
       end
    end

    def run_quiz
      puts "Running Trivia Quiz. You are ready to go!\n".colorize(:green)
      file = load_file
      load_questions(file.sample(10))
    end

    def load_file
    f = File.open("trivia.json","r")
    return JSON.parse(f.read())
    f.close()
    end

    def close_quiz
      puts "Aborted Trivia Quiz.".colorize(:red)
      abort
    end

    def load_questions(arrs)
      puts "Please type 1 for true answer or type 0 for false answer. type x to exit\n"
          puts "\n"
      answer = ""
      score = 0
     for arr in arrs
          puts arr['question'].colorize(:light_blue)
          answer = gets.chomp()
          if answer == arr['answer_bool']
               score += 1
               puts "Correct Answer! \n".colorize(:green)
               puts arr['answer_body'].colorize(:black)
               puts "\n"
             elsif answer != arr['answer_bool']
              puts "Wrong Answer!".colorize(:red)
               puts arr['answer_body'].colorize(:black)
               puts "\n"
            else 
              puts "Invailid Reponse".colorize(:red)
          end
          end
          puts "you got #{score} out of #{arr.length()} \n"
          puts "End of Trivia Quiz. Thanks for Playing"
          quiz_screen
     end
    welcome
    quiz_screen