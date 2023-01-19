require_relative '../citizen'

describe Citizen do
  describe '#initialize(first_name, last_name, age)' do
    it 'returns an instance of Citizen' do
      emika = Citizen.new('emika', 'sangu', 19)
      expect(emika).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'returns true when the citizen is older than 18' do
      emika = Citizen.new('emika', 'sangu', 19)
      expect(emika.can_vote?).to eq(true)
    end

    it 'returns false when the citizen is younger than 18' do
      emika = Citizen.new('emika', 'sangu', 17)
      expect(emika.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns the full capitalized name' do
      emika = Citizen.new('emika', 'sangu', 19)
      expect(emika.full_name).to eq('Emika Sangu')
    end
  end
end