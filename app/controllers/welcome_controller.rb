class WelcomeController < ApplicationController
  def index
    @list = Article.all
  end
end
