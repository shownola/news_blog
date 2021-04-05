class HomeController < ApplicationController

  def index
     @recent_articles = Article.order(:category) 

  end


end
