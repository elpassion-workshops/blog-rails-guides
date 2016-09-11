class CommentsController < ApplicationController
  before_action :load_article

  def create
    @article.comments.create comment_params
    redirect_to @article
  end

  def like
    comment = @article.comments.find params[:id]
    comment.likes.create
    redirect_to @article
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  def load_article
    @article = Article.find params[:article_id]
  end
end
