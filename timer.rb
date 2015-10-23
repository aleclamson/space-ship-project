require "gosu"
require_relative 'z_order'
require_relative 'player'
class Timer
	attr_reader :time_left
	def initialize player
		@time_left = 150 
		@player = player
	end

	def print_out
		if @time_left > 1 && !@player.death?
			@time_left -= 0.01
			"Time left: #{@time_left.truncate}"
		else
			"game over"
		end
	end

	def game_over?
		@time_left <= 1
	end
end