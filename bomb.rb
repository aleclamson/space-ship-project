require "gosu"
require_relative 'z_order'

class Bomb
	attr_reader :x, :y, :damage, :fuse

	def initialize
		@damage = 10
		@image = Gosu::Image.new("media/bomb.bmp")
		@x = rand * 640
		@y = rand * 480
		@fuse = 1000
	end

	def draw
			@image.draw(
				@x,
				@y,
				ZOrder::BOMBS,
				0.05, 0.05)
	end
	def fuse_out? bomb
			bomb.fuse < 1
		end	
end