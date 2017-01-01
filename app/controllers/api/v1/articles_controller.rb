class Api::V1::ArticlesController < ApplicationController
  respond_to :json

  def index
    respond_with Article.select("id, title, author, url")
  end

  def show
    respond_with Article.select("id, title, author, url").find(params[:id])
  end
end
