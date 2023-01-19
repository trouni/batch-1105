require_relative '../animal'

describe Animal do
  describe '.phyla' do
    it 'returns an array of the four phyla' do
      phyla = [
        'the worms',
        'the squids',
        'the sea cucumbers',
        'the ones with the backend'
      ]
      expect(Animal.phyla).to eq(phyla)
    end
  end

  describe '#initialize(name)' do
    it 'returns an instance of Animal' do
      timon = Animal.new('Timon')
      expect(timon).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the name of the animal' do
      timon = Animal.new('Timon')
      expect(timon.name).to eq('Timon')
    end
  end

  describe '#eat(food)' do
    it 'returns a sentence like “Timon eats a scorpion”' do
      timon = Animal.new('Timon')
      expect(timon.eat('a scorpion')).to eq('Timon eats a scorpion')
    end
  end
end