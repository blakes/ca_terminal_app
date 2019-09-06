
	require 'json'
  require 'colorize'
if !ARGV.empty?
if ARGV[0] == 'credit'
puts "Credit: Created by Blake Symington, Coder Academy - Fast-Track Bootcamp 2019"
end
else
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
      begin
        f = File.open("trivia.json","r")
          return JSON.parse(f.read())
          rescue
            puts "Json File Not Found. Reload the Application."
        ensure
            f.close()
        end
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

          if answer != "1" and answer != "0"
            puts "Invailid Reponse".colorize(:red)
          elsif answer == arr['answer_bool']
            score += 1
            puts "Correct Answer! \n".colorize(:green)
            puts arr['answer_body'].colorize(:black)
            puts "\n"
          else
            puts "Wrong Answer!".colorize(:red)
            puts arr['answer_body'].colorize(:black)
            puts "\n"
          end
          puts "you got #{score} out of #{arrs.length()} \n"
          puts "End of Trivia Quiz. Thanks for Playing"
          quiz_screen
     end
    welcome
    quiz_screen
  end