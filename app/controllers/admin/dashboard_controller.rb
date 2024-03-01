class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  def show
    @categories_count = Category.count(:all)
      # print categories_count
    @products_count = Product.count(:all)
    logger.error("categories count:#{@categories_count}")
    #@category = Category.find(params[:id])
    # @products = @category.products.order(created_at: :desc)
  end
end
