class CommentsController < ApplicationController
  def create
    @comment = Comment.create(user_name: params[:comment][:user_name], content: params[:comment][:content], article_id: params[:id])

    redirect_to "/"
  end
end
