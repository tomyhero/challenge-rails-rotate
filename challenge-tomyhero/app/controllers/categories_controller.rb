class CategoriesController < ApplicationController

  def show
    raise ActionController::RoutingError.new('Not Found') if params[:node].nil?
  end
end
