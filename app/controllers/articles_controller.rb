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
end
