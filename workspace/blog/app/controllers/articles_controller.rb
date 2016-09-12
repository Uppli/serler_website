class ArticlesController < ApplicationController
    def show
    @article = Article.find(params[:id])
    end
    def new
        @article = Article.new
    end
    def edit
        @article = Article.find(params[:id])
    end
    def index
    #@articles = Article.all
    if params[:search]
    @articles = Article.search(params[:search]).order("created_at DESC")
    else
    @articles = Article.all.order("created_at DESC")
    end
    end
    def create
        @article = Article.new(article_params)
        if @article.save
        redirect_to @article
        else
        render 'new'
        end
    end
    def update
         @article = Article.find(params[:id])
 
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    # render plain: params[:article].inspect
    private
   def article_params
    params.require(:article).permit(:title, :text, :created_at, :updated_at, :Language, :File_Type, :Abstract, :DOI, :File_Size, :File_URl, :Author, :Content, :Keywords)
   end
    
end
