require 'player'

describe Player do
  subject(:david) { Player.new('David')}

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq 'David'
    end
  end

  describe '#health' do
    it 'returns the health' do
      expect(david.hit_points).to eq 60
    end
  end
end
