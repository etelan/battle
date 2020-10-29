require 'game'
require 'player'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }


  describe '#attack' do
    it 'damages the player specified' do
      expect(player_2).to receive(:hit_points).and_return(DEFAULT_HIT_POINTS)
      expect(player_2).to receive(:receive_damage)
      expect(player_2).to receive(:calculate_damage)
      game.attack(player_2)
    end
  end

  describe '#who_turn?' do
    it 'returns whos turn it is' do

      expect(player_2).to receive(:hit_points).and_return(DEFAULT_HIT_POINTS)
      expect(player_2).to receive(:receive_damage)
      expect(player_2).to receive(:calculate_damage)
      game.attack(player_2)
      expect(game.turn_controller.whos_turn?).to eq 'p2'
    end
  end


  describe '#player_1' do
    it 'retrieves player one' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves player two' do
      expect(game.player_2).to eq player_2
    end
  end
end
