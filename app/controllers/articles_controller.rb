class ArticlesController < ApplicationController

  def index
    @articles = current_user.documents.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
