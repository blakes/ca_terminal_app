	require 'json'
  	require 'colorize'
		class Trivia
		attr_accessor :name

  	def initialize()
    	self.welcome
  	end

    def welcome
      	puts "Hello, welcome to Trivia Quiz."
  end
end