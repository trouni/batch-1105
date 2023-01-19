require_relative '../lion'

describe Lion do
  describe '#talk' do
    it 'returns "Simba roars"' do
      simba = Lion.new('Simba')
      expect(simba.talk).to eq("Simba roars")
    end
  end
  
  describe '#eat(food)' do
    it 'returns a sentence like “Timon eats a scorpion. Law of the Jungle!”' do
      timon = Lion.new('Timon')
      expect(timon.eat('a scorpion')).to eq('Timon eats a scorpion. Law of the Jungle!')
    end
  end
end