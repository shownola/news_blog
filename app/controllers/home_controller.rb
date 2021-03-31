class HomeController < ApplicationController

  def index

    articles = Article.all
    @categories = articles.group_by {|i| i[:category]}
    @recent_articles = Article.recent

  end


end
