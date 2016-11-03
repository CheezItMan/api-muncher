require "#{Rails.root}/lib/muncher_api_wrapper.rb"
require "#{Rails.root}/lib/recipe.rb"

class RecipesController < ApplicationController
  before_action :search, only: [:list]


  def index

  end

  def list
    @data = MuncherApiWrapper.get_recipes(app_id = nil, app_key = nil, params[:query]) #try a form, may also need a params[:from]
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

private

  def search

  end

end
