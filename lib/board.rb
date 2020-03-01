require 'pry'
class Board
  
  attr_accessor :cells
  
  def initialize 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end 
  
  def reset! 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(index) 
    integer = index.to_i - 1
    @cells[integer]
  end 
  
  def full? 
    @cells.all?{|occupied| occupied != " "}
  end 
  
  def turn_count 
    turn = 0 
    @cells.each do |index| 
      if index == "X" || index == "O"
        turn += 1 
      end 
    end
    turn
  end
  
  def taken?(index) 
    if position(index) != " "
      true  
    else 
      false 
    end 
  end
  
  def valid_move?(index) 
    integer = index.to_i - 1
    if integer.between?(0,8) && !taken?(index)
      true 
    else 
      false 
    end 
  end
  
  def update(index, player) 
    position(index) << player.token
    position(index).strip!
  end 
  
end 









