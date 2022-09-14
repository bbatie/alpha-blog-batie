class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy ]

    def show
    end

    def index
        @articles = Article.all 
    end

    def new
        @article = Article.new
    end

    def edit 
    end

    def create
        @article = Article.new(article_pramas)
        if @article.save 
            flash[:notice] = "Article was created successfully."
            redirect_to @article
       else 
           render 'new'    
       end
    end

    def update
       if @article.update(article_pramas)
            flash[:notice] = "Article was updated successfully"
            redirect_to @article
        else
            render 'edit'
        end

    end

    def destroy 
        
        @article.destroy

        redirect_to articles_path, status: :see_other
    end

    private #avaialble only to this controller 

    def set_article
        @article = Article.find(params[:id])
    end 

    def article_pramas 
        params.require(:article).permit(:title, :description)
    end

end
