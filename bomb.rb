require "gosu"
require_relative 'z_order'

class Bomb
	attr_reader :x, :y, :damage

	def initialize
		@damage = 10
		@image = Gosu::Image.new("media/bomb.bmp")
		@x = rand * 640
		@y = rand * 480
	end

	def draw
			@image.draw(
				@x,
				@y,
				ZOrder::BOMBS,
				0.05, 0.05)
	end	
end