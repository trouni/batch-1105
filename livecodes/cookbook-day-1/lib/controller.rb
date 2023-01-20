require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_all
  end

  def add
    # 1. Ask the user for a name and description
    name = @view.ask_for('name')
    description = @view.ask_for('description')
    # 2. Use the name and description to make a recipe instance
    recipe = Recipe.new(name, description)
    # 3. Put the recipe into the cookbook
    @cookbook.create(recipe)
  end

  def remove
    # Display the recipes
    display_all
    # Ask the user for the index of the recipe to remove
    index = @view.ask_for_index
    # Tell the cookbook to destroy the recipe at this index
    @cookbook.destroy(index)
  end

  private

  def display_all
    # 1. Ask the cookbook for the recipes
    recipes = @cookbook.all
    # 2. Display the list of recipes
    @view.display(recipes)
  end
end
