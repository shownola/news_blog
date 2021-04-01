class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :require_same_user, only: %i[edit update destroy]
  access all: [:index], admin: {except: [:new, :edit, :create, :destroy] }, user: {except: [:edit, :create, :destroy]}, editor: :all

  def index
    @articles = Article.all
  end


  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = 'Article has been created'
      redirect_to @article
    else
      flash.now[:alert] = 'There was an error try again'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article has been updated'
      redirect_to @article
    else
      flash[:alert] = 'There was an error, try again'
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :category, :user_id)
  end

  def require_same_user
    if current_user != @article.user && !current_user.admin?
      flash[:alert] = 'You can only edit and delete your own articles'
      redirect_to articles_path
    end
  end


end
