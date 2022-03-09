class ArticlesController < ApplicationController
  before_action :find_articles, except: [:home, :new, :create]

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
  end

  def update
    article_params = params[:article]
    @article.update(title: article_params[:title], content: article_params[:content], title_color: article_params[:title_color])
    redirect_to "/"
  end

  def show
    @comment = Comment.new
  end

  def destroy
    @article.destroy
    redirect_to "/"
  end

  def find_articles
    @article = Article.find(params[:id])
  end
end
