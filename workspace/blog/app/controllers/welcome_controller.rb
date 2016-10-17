class WelcomeController < ApplicationController
  def index
    @list = Article.all
  end
  
  def author
  end
end
