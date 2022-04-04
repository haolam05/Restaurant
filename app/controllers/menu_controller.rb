class MenuController < ApplicationController
  before_action :set_cats

  def index
    @page = 'menu'
    @products = []
  end

  def search
    query = params[:search]
    results = Product.where('name LIKE ?', "%#{query}%")

    if params[:filter] == 'Select Filter'
      @products = results
    else
      # 'Dairy Free' -> 'Dairy_Free' -> 'dairy_free' -> :dairy_free
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      @products = results.where(symbol => true)
    end

    respond_to do |format|
        format.turbo_stream do
            render turbo_stream: [ 
                turbo_stream.update("menu-products-container", partial: "menu/products", locals: { products: @products }) 
            ]
        end
    end
  end

  private
  def set_cats
    @cats = Category.all.where(display: true)
  end
end