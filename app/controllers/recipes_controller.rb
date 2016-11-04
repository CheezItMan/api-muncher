require "#{Rails.root}/lib/muncher_api_wrapper.rb"
require "#{Rails.root}/lib/recipe.rb"

class RecipesController < ApplicationController
  # before_action :search, only: [:list]

  def index; end

  def list
    @query = params[:query]

    @data = MuncherApiWrapper.get_recipes(@query).paginate(:page => params[:page], :per_page => 10)

    if @data != nil && @data != []
      render status: :created
    else
      render status: :service_unavailable
    end
  end

  def show
    @params = params[:uri]
    @recipe = MuncherApiWrapper.show_recipe(@params)
  end

end
