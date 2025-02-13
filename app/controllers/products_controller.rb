class ProductsController < ApplicationController
  after_action :register_visit, only: [:show]

  def index
    if params[:q] != nil
      params[:q].each do |key, value|
        value.capitalize!
      end
      @searced_message = "#{t('product.serached_name')}" + params[:q][:name_rus_or_name_eng_cont]
    end

    @q = Product.ransack(params[:q])

    @products = @q.result(distinct: true)
    @page_title = t('product.all_products')
  end

  def show
    @product = Product.find(params[:id])
    impressionist(@product)
    set_page_option
    @main_photo = @product.images.first
    @category = Category.find_by(id: @product.category_id)
    @country = Country.find_by(id: @product.country_id)

    @related_products = Product.where(related_products: @product.related_products)
  end

  helper_method :recent_products
  attr_accessor :product

  def recent_products
    [] if recently.none?
    Product.where(id: recently)
  end

  def recently
    session[:viewed_products] ||=  []
  end

  def register_visit
    session[:viewed_products] ||= []
    session[:viewed_products] = ([product.id] + session[:viewed_products])
                                    .uniq
                                    .take(3)
  end

  private

  def set_page_option
    @page_title = @product.name_rus if params != true and params[:locale] != 'ru' and params[:locale] != 'en'
    @page_title = @product.name_rus if params[:locale] == 'ru'
    @page_title = @product.name_eng if params[:locale] == 'en'
  end

end
