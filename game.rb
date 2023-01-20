require "json"
require 'pry-byebug'

filepath = "board.json"
serialized_board = File.read(filepath)
board = JSON.parse(serialized_board)


filepath = "rolls_1.json"
serialized_board = File.read(filepath)
roll_one = JSON.parse(serialized_board)

filepath = "rolls_2.json"
serialized_board = File.read(filepath)
roll_two = JSON.parse(serialized_board)


p board.count
p roll_one.count
 roll_two.each

class Player
  attr_accessor :score, :active
  def initialize
    @score = 16
    @still_playing = true
  end
end
peter = Player.new


class Board
  attr_reader :type, :price, :name, :color
  attr_accessor :owned_by
  def initialize(name, type, price, color)
    @owned_by = ""
    @name = name
    @type = type
    @price = price
    @color = color
  end
end

board.each do |square|
 p Board.new(square["name"], square["type"], square["price"], square["colour"])
end
binding.pry
