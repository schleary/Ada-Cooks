class HomeController < ApplicationController

  def index
    @recipes = Recipe.all.limit(10)
  end

end
