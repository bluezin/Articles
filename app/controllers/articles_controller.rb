class ArticlesController < ApplicationController
  def show
    @article = Article.all
  end

  def create
    
  end
end
