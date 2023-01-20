require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = [] # instances of Recipe
    load_csv
  end

  # Return all the recipes
  def all
    @recipes
  end

  # Add a recipe to the cookbook
  def create(recipe) # instance of Recipe
    @recipes << recipe
    save_csv
  end

  # Remove a recipe from the cookbook
  def destroy(index)
    @recipes.delete_at(index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
      # p row # array of strings
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end