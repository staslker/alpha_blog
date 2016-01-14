class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_article_show(@article)
  end

  privat 
    def article_params
      params.require(:article).parmit(:title, :description)
    end
end
