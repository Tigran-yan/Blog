class ArticlesController < ApplicationController
	def index
		@articles = Article.all.page(params[:page]).per(8)
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to home_path(@article)
		else
			redirect_to home_path
		end
	end

	def destroy
		@article = Article.find(params[:id])
    	@article.destroy
    	if @article.destroy
    	    redirect_to home_path
    	end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to home_path(@article)
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	private
	def article_params
		params.require(:article).permit(:headline, :content)
	end
end
