class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save 
      flash[:notice] = "Article was successfully created"
    redirect_article_path(@article)
    else
      render 'new'
  end
end

def show
  @article = Article.find(params[:id])
  
end

  privat 
    def article_params
      params.require(:article).parmit(:title, :description)
    end
end
