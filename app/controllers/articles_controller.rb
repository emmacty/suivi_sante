class ArticlesController < ApplicationController

  def index
    @articles = current_user.articles.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def article_1
  end

  def article_2
  end

  def article_3
  end

  def article_4
  end
end
