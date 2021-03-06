class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
  end

	def new
		@article = Article.new
  end

  def edit
	  @article = Article.find(params[:id])
	end

  def create
  	@article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        flash[:success] = 'Article was successfully created.'
        format.html { redirect_to articles_path }
        format.json { render :show, status: :created, location: articles_path }
      else
        flash[:danger] = 'There was a problem creating the Article.'
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
	end

	def update
		@article = Article.find(params[:id])

    respond_to do |format|
      if @article.update(article_params)
        flash[:success] = 'Article was successfully updated.'
        format.html { redirect_to articles_path }
        format.json { render :show, status: :ok, location: articles_path }
      else
        flash[:danger] = 'There was a problem updating the Article.'
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
	end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    respond_to do |format|
      flash[:success] = 'Article was successfully destroyed.'
      format.html { redirect_to articles_path }
    end
  end

	private
	def article_params
		params.require(:article).permit(:title, :description, :section, :photo)
	end
end
