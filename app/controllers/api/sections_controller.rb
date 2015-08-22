class Api::SectionsController < ApplicationController
  include Api::JsonHelper

  def index
  end

  def show
    @articles = Article.all.where(:section => params[:id])
    render json: @articles
  end
end