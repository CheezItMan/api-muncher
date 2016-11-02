require "#{Rails.root}/lib/muncher_api_wrapper.rb"
require "#{Rails.root}/lib/recipe.rb"

class RecipesController < ApplicationController
  def search
    @data = MuncherApiWrapper.get_recipes(app_id = nil, app_key = nil, @query) #try a form, may also need a params[:from]
    if @data != nil && @data != []
      render status: :created
    else
      render status: :service_unavailable
    end
  end

  def list
  end

  def show
  end
end
