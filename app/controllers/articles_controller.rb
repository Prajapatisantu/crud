class ArticlesController < ApplicationController
  
  def index
  @articles = Article.all
  end

  def new 
    @article = Article.new
  end

  def create
     @article = Article.new(ghost)
    if @article.save
      redirect_to root_path
    else
      redirect_to :new
    end 
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  p 111111111111111111111111
  @article = Article.find(params[:id])

    if @article.update(ghost)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @data = Article.find(params[:id])
 end

  def destroy
    @destroy = Article.find(params[:id])
    @destroy.destroy
    redirect_to root_path
  end
  

  private
    def ghost
      params.require(:article).permit(:name ,:email)
    end
end
