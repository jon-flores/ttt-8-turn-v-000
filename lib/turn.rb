def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8)
    true
  end
end

def position_taken?(board, index)
  # need to use the expressions in each comparison or else it won't evaluate.
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == 'X' || board[index] == 'O'
    return true
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(board, space, player='X')
  board[space] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  desired_move = input_to_index(user_input)
  if valid_move?(board, desired_move) == true
  move(board, desired_move, player='X')
  display_board(board)
  else
    puts "Sorry that move is invalid"
    turn(board)
  end
end
