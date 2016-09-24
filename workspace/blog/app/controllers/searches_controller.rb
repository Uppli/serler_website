class SearchesController < ApplicationController
    def new
    @search = Search.new
    @research_method1 = Article.uniq.pluck(:research_method)
    end
    
    def create
    @search = Search.create(search_params)
    redirect_to @search
    end
    
    def show
    @search = Search.find(params[:id])
    end
    
    
    
    private
    def search_params
        params.require(:search).permit(:keywords1, :title1, :author1, :from_year, :to_year, :language1, :research_method1, :research_part1, :se_method1, :methodology1, :rating1)
    end
end
