class CommentsController < ApplicationController
  def create
    @comment = Comment.create(user_name: params[:comment][:user_name], content: params[:comment][:content], article_id: params[:id])
    # @article = Article.find(params[:id])
  end
end
