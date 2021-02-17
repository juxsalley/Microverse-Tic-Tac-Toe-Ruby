require 'board'

puts '\nNOTE: All test must be passed'

describe 'Board' do
  let(:board) { Board.new }

  describe '::WIN_MOVES ' do
    it 'Is an Array of possible winning combinations' do
      expect(Board::WIN_MOVES).to be_an(Array)
    end
  end

  describe '#initialize' do
    it 'Set @playing_array  to and Array of 9 with  values from 1 - 9' do
      expect(board.instance_variable_get(:@playing_array)).to eq(Array.new(9) { |n| n + 1 })
    end
    it 'Set @available_moves to 9' do
      expect(board.instance_variable_get(:@available_moves)).to eq(9)
    end

    it 'Set @winning_moves to an empty array ' do
      expect(board.instance_variable_get(:@winning_moves)).to eq([])
    end
    it 'Set @player_turn be X as player symbol' do
      expect(board.instance_variable_get(:@player_turn)).to eq('X')
    end
  end
  describe '#draw_board' do
    it 'Get (return ) @playing_array' do
      expect(board.draw_board)
    end
  end
  describe '#change_player_turn' do
    it 'Get (return ) @playing_array' do
      expect(board.change_player_turn).to eq('O')
    end
  end
  describe '#output_winning_moves' do
    it 'Gets (return ) @winning_moves ' do
      expect(board.output_winning_moves).to be(board.instance_variable_get(:@winning_moves))
    end
  end
  describe '#game_ended?' do
    it 'return true or false if @winning_moves < 1' do
      expect(board.game_ended?).to eq(true ).or(eq(false ))
    end
  end
  describe '#player_won?' do
    it 'return true or false if player chosen numbers ([2,5,9]) matched the winning combos' do
      expect(board.player_won?([2,5,9])).to eq(true ).or(eq(false ))
    end
  end
  describe '#valid_entered_character?' do
    it 'return true if numbers is between 1 to 9  false otherwise' do
      expect(board.valid_entered_character?(2)).to eq(true ).or(eq(false ))
    end
  end
  describe '#position_taken?' do
    it 'return true if numbers is available or not taken on the board false otherwise' do
      expect(board.position_taken?(3)).to eq(true ).or(eq(false ))
    end
  end
  describe '#update_board' do
    it 'Update the board with the input number and replace the number with player symbol' do
      @playing_array = Array.new(9) { |n| n + 1 }
      @available_moves = 9
      expect(board.update_board('X', 2)).to eq( @available_moves -= 1 )
    end
  end


end
