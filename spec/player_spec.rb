require 'player'

describe Player do
  let(:player) { Player.new('salley', 'X') }
  describe "#initialize" do
    it 'should accept two strings, name and player symbol' do
      player
    end
  end
end
