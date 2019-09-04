	require 'json'
  	require 'colorize'
		class Trivia
		attr_accessor :name

  	def initialize()
    	self.welcome
    	sleep(0.3)
    	self.name_screen
  	end

  	def name_screen
  		puts "Whats your name?\n"
      input = gets.chomp
      @name = input
  	end

    def welcome
      	puts "Hello, welcome to Trivia Quiz."
  end
end