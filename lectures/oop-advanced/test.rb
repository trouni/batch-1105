require_relative 'house'
require_relative 'castle'
require_relative 'skyscraper'

grant = Castle.new('Powerpoint', 60, 70)
jim = Castle.new('Powerpoint', 160, 270)

puts "Grant's castle is called #{grant.name}"
puts "#{grant.name} is #{grant.surface}m2"
puts "#{grant.name} #{grant.has_a_butler? ? 'has' : 'does not have'} a butler"

soufiane = Butler.new(grant)
ayanori = Butler.new(jim)

puts '-' * 10

miriam = House.new('Sunshine House', 12, 20)
puts "Miriam's house is called #{miriam.name}"
puts "#{miriam.name} is #{miriam.surface}m2"

puts '-' * 10

julien = Skyscraper.new('Infinite Tower', 25, 25, 50)
puts "Julien's skyscraper is called #{julien.name}"
puts "#{julien.name} is #{julien.surface}m2"