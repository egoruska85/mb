class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.admin == true
      @articles = Article.order(created_at: :desc).limit(20)
    elsif current_user.admin != true
      @articles = Article.where(user_id: current_user.id)
    end
    if current_user.admin == true
      @page_title = t('articles.all_article')
    elsif current_user.admin != true
      @page_title = t('articles.your_article')
    end
  end

  def show
    @article = Article.find(params[:id])
    @product = Product.find_by(id: @article.product_id)
    if @article.user_id != current_user.id and current_user.admin != true
      redirect_to articles_path
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  private

  def article_params
    params.require(:article).permit(:product_id, :message, :user_id)
  end
end
