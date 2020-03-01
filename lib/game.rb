require 'pry'
class Game 
  
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [ 
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
    ]
  
  def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    #@board.display
  end
  
  def current_player
    if board.turn_count.even? 
      player_1
    elsif board.turn_count.odd? 
      player_2
    end 
  end
  
  def won?
    WIN_COMBINATIONS.find do |combo|
      board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[1]] == board.cells[combo[2]] && board.cells[combo[0]] != " "
    end
  end
  
  def draw?
    board.full? && !won?
  end
  
  def over? 
    board.full? || won? 
  end 
  
  def winner 
    WIN_COMBINATIONS.detect do |combo|
      if (board.cells[combo[0]]) == "X" && (board.cells[combo[1]]) == "X" && (board.cells[combo[2]]) == "X"
        return "X"
      elsif (board.cells[combo[0]]) == "O" && (board.cells[combo[1]]) == "O" && (board.cells[combo[2]]) == "O"
        return "O"
      end
        false
    end
  end
  
  def turn 
    
  end
  
  def play 
    
  end
  
  
end 






