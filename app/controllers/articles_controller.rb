class ArticlesController < ApplicationController
  def home
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article_params = params[:article]
    @article = Article.create(title: article_params[:title], content: article_params[:content], title_color: article_params[:title_color])
    redirect_to "/"
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    article_params = params[:article]
    @article.update(title: article_params[:title], content: article_params[:content], title_color: article_params[:title_color])
    redirect_to "/"
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/"
  end
end
