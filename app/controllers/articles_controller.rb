class ArticlesController < ApplicationController
  before_action :load_article, only: [:show, :edit, :update, :destroy, :like]

  def index
    @articles = Article.all
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build answer_params
    if @article.save
      flash[:notice] = 'Article was created successfully'
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
    @comments = @article.comments.to_a
  end

  def edit
  end

  def update
    if @article.update answer_params
      flash[:notice] = 'Article was updated successfully'
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def like
    @article.likes.create
    redirect_to @article
  end

  private

  def answer_params
    params.require(:article).permit(:title, :text)
  end

  def load_article
    @article = Article.find params[:id]
  end
end
