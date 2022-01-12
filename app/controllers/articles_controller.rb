# typed: true
# frozen_string_literal: true

# Controller for the Articles of the blog
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private

  # Strong parameters for creating an article
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
