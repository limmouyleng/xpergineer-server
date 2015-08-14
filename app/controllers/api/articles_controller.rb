class Api::ArticlesController < ApplicationController
  include Api::JsonHelper

  def index
    render json: Article.all
  end
end