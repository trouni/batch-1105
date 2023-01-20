class View
  def display(recipes)
    puts '=' * 20
    puts 'Here are the recipes in your Cookbook:'
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
    puts '=' * 20
  end

  def ask_for(thing)
    puts "What is the #{thing} of your recipe?"
    print '> '
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe number?"
    print '> '
    gets.chomp.to_i - 1
  end
end
