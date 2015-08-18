class Api::ArticlesController < ApplicationController
  include Api::JsonHelper

  def index
    render json: Article.all
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end
end